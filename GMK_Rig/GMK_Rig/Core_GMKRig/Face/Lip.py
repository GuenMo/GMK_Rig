# -*- coding: utf-8 -*-
import maya.cmds as cmds
import Core_GMKRig.Utils as Utils
reload(Utils)

class GMKimLip():
    def __init__(self, center, upLipCrv, dwLipCrv, lipGuideGeo, offset):
        self.rigItem = {}
        centerLocPos = cmds.xform(center, q=True, ws=True, rp=True)    
        #self.rigItem["UpLoc"]           = up
        self.rigItem["CenterLoc"]       = center
        self.rigItem["CenterLocPos"]    = centerLocPos
        self.rigItem["LipCrv"]          = {"UpLipCrv":upLipCrv, "DwLipCrv":dwLipCrv}
        self.rigItem["LipGuideGeo"]     = lipGuideGeo
        self.offset = offset
        
        self.wireCtrlCrv = []
        
        self.FivePtrCtrlList = []
        self.SevenPtrCtrlList = []
        self.NinePtrCtrlList = []
            
    def printRigItem(self):
        print "========================================================="
        
        my_list = sorted(self.rigItem.items(), key=lambda x: x[1])
        for key, value in my_list:
            print key, ":",  value   
        print "========================================================="
        
    def CreateJointOnCurve(self):
        centerPos = self.rigItem["CenterLocPos"]
        JntGrp = []
        for crv in self.rigItem["LipCrv"].itervalues():
            skinJntList = []
            centerJntList = []
            
            crvShape = cmds.listRelatives(crv, shapes=True)[0]
            cvNum  = int(cmds.getAttr(crvShape+".spans") + 1)
            
            for i in range(cvNum):
                cmds.select(cl=True)
                centerJnt = cmds.joint( n = crv.replace("JntCrv", "") + "%sCenterJnt" %(str(i).zfill(2)) )
                skinJnt   = cmds.joint( n = crv.replace("JntCrv", "") + "%sSkinJnt"   %(str(i).zfill(2)) )
                
                cmds.xform(centerJnt, ws=True, t=centerPos)
                pos = cmds.xform(crvShape +".cv[%i]" %i, q=True, ws=True, t=True)
                cmds.xform(skinJnt, ws=True, t=pos)
                cmds.joint(centerJnt, e=True, oj="xyz", sao="yup", ch=True, zso=True)
                
                skinJntList.append(skinJnt)
                centerJntList.append(centerJnt)
            
            part = crv.replace("JntCrv","")
            self.rigItem[part + "SkinJnt"]   = skinJntList
            self.rigItem[part + "CenterJnt"] = centerJntList
            
            #Group
            grp = cmds.group(centerJntList, n=crv+"Grp")
            JntGrp.append(grp)
        
        cmds.group(JntGrp, n="LipJntGrp")
           
    def CreateLoc(self):
        LocGrp = []
        for key in ["UpLipSkinJnt", "DwLipSkinJnt"]:
            surfaceLocList = []
            curveLocList   = []
            jntLocList     = []
            
            for jnt in self.rigItem[key]:
                pos = cmds.xform(jnt, q=True, ws=True, t=True)
                surfaceLoc = cmds.spaceLocator( n=jnt.replace("SkinJnt","SurfaceLoc") )[0]
                curveLoc   = cmds.spaceLocator( n=jnt.replace("SkinJnt","CurveLoc") )[0]
                jntLoc     = cmds.spaceLocator( n=jnt.replace("SkinJnt","JntLoc") )[0]
                cmds.xform([surfaceLoc,curveLoc, jntLoc], ws=True, t=pos)
                cmds.setAttr(surfaceLoc + ".localScale", 0.01, 0.01,0.01)
                cmds.setAttr(curveLoc   + ".localScale", 0.01, 0.01,0.01)
                cmds.setAttr(jntLoc   + ".localScale", 0.01, 0.01,0.01)
                
                surfaceLocList.append(surfaceLoc)
                curveLocList.append(curveLoc)
                jntLocList.append(jntLoc)
            
            part = key.replace("SkinJnt","")
            self.rigItem[part + "SurfaceLoc"] = surfaceLocList
            self.rigItem[part + "CurveLoc"]   = curveLocList
            self.rigItem[part + "JntLoc"]     = jntLocList
            
            grp = cmds.group(surfaceLocList, curveLocList, jntLocList , n=key.replace("SkinJnt","Loc") +"Grp" )
            LocGrp.append(grp)
        
        cmds.group(LocGrp, n="LipLocGrp")
        cmds.xform("LipLocGrp", ws=True, sp=self.rigItem["CenterLocPos"])
        cmds.xform("LipLocGrp", ws=True, rp=self.rigItem["CenterLocPos"])
           
    def GeoConstraint(self):
        shape = cmds.listRelatives(self.rigItem["LipGuideGeo"], shapes=True)[0]
        UpLipSkinJnt       = self.rigItem["UpLipSkinJnt"]
        DwLipSkinJnt       = self.rigItem["DwLipSkinJnt"]  
        
        for part in [UpLipSkinJnt, DwLipSkinJnt]:
            for jnt in part:
                curveLoc    = jnt.replace("SkinJnt", "CurveLoc")
                surfaceLoc  = jnt.replace("SkinJnt", "SurfaceLoc")
                jntLoc      = jnt.replace("SkinJnt", "JntLoc")
                #centerJnt   = jnt.replace("SkinJnt", "CenterJnt")
                
                closetPointOnSurfaceNode = cmds.createNode("closestPointOnSurface", n = jnt.replace("SkinJnt","ClosestPointOnSurface") )
                matrixNode = cmds.createNode("decomposeMatrix", n= jnt.replace("SkinJnt","DecomposeMatrix"))
                
                cmds.connectAttr(shape+".worldSpace[0]",closetPointOnSurfaceNode+".inputSurface", f=True)
                cmds.connectAttr(curveLoc+".worldMatrix[0]", matrixNode+".inputMatrix", f=True)
                cmds.connectAttr(matrixNode+".outputTranslate", closetPointOnSurfaceNode+".inPosition", f=True)
                cmds.connectAttr(closetPointOnSurfaceNode+".position", surfaceLoc +".translate", f=True)
                
                
                cmds.pointConstraint(surfaceLoc, jntLoc, n=jnt.replace("SkinJnt", "SurfaceOffsetPointConstranit"), mo=True)
                pointConstranint = cmds.pointConstraint(jntLoc,curveLoc,jnt, n = jnt.replace("SkinJnt","SurfaceOffsetCtrlPointConstraint"), mo=True)[0]
                #cmds.aimConstraint(curveLoc,centerJnt, n=jnt.replace("SkinJnt","AimConstraint") ,aimVector=[1,0,0], upVector = [0,1,0], worldUpType="object", worldUpObject=self.rigItem["UpLoc"], mo=True)
                
                cmds.addAttr (curveLoc, ln="offset", at="double", min=0, max=10, dv= self.offset)
                cmds.setAttr (curveLoc+".offset", e=True, keyable=True)
                multNode = cmds.createNode("multDoubleLinear",  n=jnt.replace("SkinJnt","MultDoubleLinear"))
                cmds.setAttr(multNode+".input2", 0.1)
                reverseNode = cmds.createNode("reverse", n=jnt.replace("SkinJnt","Reverse"))
    
                cmds.connectAttr(curveLoc+".offset", multNode+".input1")
                cmds.connectAttr(multNode+".output", pointConstranint+"."+jntLoc+"W0")
                cmds.connectAttr(multNode+".output", reverseNode+".inputX")
                cmds.connectAttr(reverseNode+".outputX", pointConstranint+"."+curveLoc+"W1")
                       
    def CreatePointInfo(self):
        
        UpLipCurveLoc       = self.rigItem["UpLipCurveLoc"]
        DwLipCurveLoc       = self.rigItem["DwLipCurveLoc"]  
        
        for LocList in [UpLipCurveLoc, DwLipCurveLoc]:
            crvName = LocList[0].replace("00CurveLoc", "JntCrv")
            curveShape = cmds.listRelatives(crvName, shapes=True)[0]
            cvNum = cmds.getAttr(curveShape+".spans") + 1
            
            for cv in range(cvNum):
                pos = cmds.xform(crvName+".cv[%i]" %cv , q=True, ws=True, t=True)
                u = Utils.GetUParam(pos, crvName+".cv[%i]" %cv)
                name = crvName + str(cv).zfill(2) + "PointOnCurveInfo"
                poci = cmds.createNode("pointOnCurveInfo", n=name) 
                cmds.connectAttr(curveShape + ".worldSpace", poci+".inputCurve")
                cmds.setAttr(poci + ".parameter", u)
                cmds.connectAttr(poci+".position", LocList[cv]+".t", f=True)
    
    def CreateCtrlCurve(self):
        CrvGrp = []
        for crv in self.rigItem["LipCrv"].itervalues():  
            CtrlCrv         = cmds.duplicateCurve(crv , ch=0, n=crv.replace("Jnt", "Ctrl") )[0] 
            CtrlCrv         = cmds.rebuildCurve(CtrlCrv, ch=0, rpo=1, rt=0, end=1, kr=0, kcp=1, kep=1, kt=0, d=3, tol=0.01)[0]
            
            FivePtrCtrlCrv  = cmds.duplicateCurve(CtrlCrv, ch=0, n=crv.replace("Jnt", "FivePtrCtrl") )[0] 
            SevenPtrCtrlCrv = cmds.duplicateCurve(CtrlCrv, ch=0, n=crv.replace("Jnt", "SevenPtrCtrl") )[0] 
            NinePtrCtrlCrv  = cmds.duplicateCurve(CtrlCrv, ch=0, n=crv.replace("Jnt", "NinePtrCtrl") )[0] 
            DBCtrlCrv       = cmds.duplicateCurve(CtrlCrv, ch=0, n=crv.replace("Jnt", "DBCtrl") ) [0]

            FivePtrWireCrv  = cmds.duplicateCurve(FivePtrCtrlCrv, ch=0, n=FivePtrCtrlCrv.replace("Ptr", "PtrWire"))[0] 
            FivePtrWireCrv  = cmds.rebuildCurve(FivePtrWireCrv, ch=0, rpo=1, rt=0, end=1, kr=0, kcp=0, kep=1, kt=0, s=4, d=3, tol=0.01)[0]
            SevenPtrWireCrv = cmds.duplicateCurve(SevenPtrCtrlCrv, ch=0, n=SevenPtrCtrlCrv.replace("Ptr", "PtrWire"))[0] 
            SevenPtrWireCrv = cmds.rebuildCurve(SevenPtrWireCrv, ch=0, rpo=1, rt=0, end=1, kr=0, kcp=0, kep=1, kt=0, s=6, d=3, tol=0.01)[0]
            NinePtrWireCrv  = cmds.duplicateCurve(NinePtrCtrlCrv, ch=0, n=NinePtrCtrlCrv.replace("Ptr", "PtrWire"))[0] 
            NinePtrWireCrv  = cmds.rebuildCurve(NinePtrWireCrv, ch=0, rpo=1, rt=0, end=1, kr=0, kcp=0, kep=1, kt=0, s=8, d=3, tol=0.01)[0]
            
            FivePtrWireBaseCrv = cmds.wire( FivePtrCtrlCrv,  gw=False, en= 1.000000, ce= 0.000000, li =0.000000, n= FivePtrCtrlCrv  + "Wire", w=FivePtrWireCrv )
            SevenPtrWireBaseCrv = cmds.wire( SevenPtrCtrlCrv, gw=False, en= 1.000000, ce= 0.000000, li =0.000000, n= SevenPtrCtrlCrv + "Wire", w=SevenPtrWireCrv )
            NinePtrWireBaseCrv = cmds.wire( NinePtrCtrlCrv,  gw=False, en= 1.000000, ce= 0.000000, li =0.000000, n= NinePtrCtrlCrv  + "Wire", w=NinePtrWireCrv )
            #cmds.setAttr(wireName+".scale[0]", 0)
            crvBlendShape = cmds.blendShape( FivePtrCtrlCrv, SevenPtrCtrlCrv, NinePtrCtrlCrv, DBCtrlCrv, CtrlCrv, n=CtrlCrv+"DB" )[0]
    
            for i in range(4):
                cmds.setAttr(crvBlendShape+".weight[%i]" %i, 1)
            
            self.wireCtrlCrv.append(FivePtrWireCrv)
            self.wireCtrlCrv.append(SevenPtrWireCrv)
            self.wireCtrlCrv.append(NinePtrWireCrv)
            
            grp = cmds.group(CtrlCrv, FivePtrCtrlCrv, SevenPtrCtrlCrv, NinePtrCtrlCrv, DBCtrlCrv, \
                             FivePtrWireCrv, SevenPtrWireCrv, NinePtrWireCrv, \
                             FivePtrWireBaseCrv, SevenPtrWireBaseCrv, NinePtrWireBaseCrv,\
                             n = CtrlCrv + "Grp")
            CrvGrp.append(grp)
        baseWire = ["DwLipFivePtrWireCtrlCrvBaseWire", "DwLipSevenPtrWireCtrlCrvBaseWire", "DwLipNinePtrWireCtrlCrvBaseWire", \
                    "UpLipFivePtrWireCtrlCrvBaseWire", "UpLipSevenPtrWireCtrlCrvBaseWire", "UpLipNinePtrWireCtrlCrvBaseWire" ]
        cmds.group(CrvGrp, baseWire, n="LipCrvGrp")
            
    def WireCurve(self):
        for crv in self.rigItem["LipCrv"].itervalues(): 
            cmds.wire( crv,  gw=False, en= 1.000000, ce= 0.000000, li =0.000000, n= crv  + "Wire", w=crv.replace("Jnt", "Ctrl") )
    
    def CreateCtrlJntAndLoc(self):
        
        CtrlJntListGrp =[]
        CtrlLocListGrp =[]
        
        for crv in self.wireCtrlCrv:
            curveShape = cmds.listRelatives(crv, shapes=True)[0]
            cvNum = cmds.getAttr(curveShape+".spans") + 1 
            u = float(1.0/(cvNum-1))
            CtrlJntList =[]
            CtrlLocList = []
            for i in range(cvNum):
                tempLoc = cmds.spaceLocator(n=crv+str(i).zfill(2)+ "TempLoc")[0]
                poci = cmds.createNode("pointOnCurveInfo", n=crv+str(i).zfill(2)+ "PointOnCurveInfo") 
                cmds.connectAttr(curveShape + ".worldSpace", poci+".inputCurve")
                cmds.setAttr(poci + ".parameter", u * i)
                cmds.connectAttr(poci+".position", tempLoc +".t", f=True)
                pos = cmds.xform(tempLoc, q=True, ws=True, t=True)
                CtrlJnt = cmds.joint(n=crv+str(i).zfill(2)+ "Jnt", p=pos)
                CtrlLoc = cmds.spaceLocator(n=crv+str(i).zfill(2)+ "Loc")[0]
                CtrlLocGrp = cmds.group(CtrlLoc, n=CtrlLoc+"Grp")
                cmds.xform(CtrlLocGrp, ws=True, t=pos)
                cmds.parentConstraint(CtrlLoc, CtrlJnt, n=CtrlJnt+str(i).zfill(2)+"ParentConstraint", mo=True)
                cmds.delete(tempLoc, poci)
                CtrlJntList.append(CtrlJnt)
                CtrlLocList.append(CtrlLocGrp)
               
            SkinCluster = cmds.skinCluster(CtrlJntList, crv , n=crv+"SkinCluster", tsb=True, maximumInfluences=2, normalizeWeights=1, obeyMaxInfluences=True)[0]
            cmds.skinPercent(SkinCluster, crv+".cv[1]",              tv=[(CtrlJntList[0],0.6), (CtrlJntList[1],0.4)] ) 
            cmds.skinPercent(SkinCluster, crv+".cv[%i]" %cvNum, tv=[(CtrlJntList[cvNum-1],0.6), (CtrlJntList[cvNum-2],0.4)] ) 
            
            CtrlJntListGrp.extend(CtrlJntList)
            CtrlLocListGrp.extend(CtrlLocList)

        cmds.group(CtrlJntListGrp, n="LipCtrlJntGrp")
        cmds.group(CtrlLocListGrp, n="LipCtrlLocGrp")
        ##
        cmds.addAttr("LipCtrlLocGrp", ln="UpLipOffset", at="double", min=0, max=10, dv=0)
        cmds.setAttr("LipCtrlLocGrp.UpLipOffset", e=True, keyable=True)
        cmds.addAttr("LipCtrlLocGrp", ln="DwLipOffset", at="double", min=0, max=10, dv=0)
        cmds.setAttr("LipCtrlLocGrp.DwLipOffset", e=True, keyable=True)
        
        UpLipCrvLoc = cmds.listRelatives("UpLipLocGrp",c=True)
        DwLipCrvLoc = cmds.listRelatives("DwLipLocGrp",c=True)
        
        for loc in UpLipCrvLoc:
            if loc.find("CurveLoc") != -1:
                cmds.connectAttr("LipCtrlLocGrp.UpLipOffset", loc+".offset")
        for loc in  DwLipCrvLoc:
            if loc.find("CurveLoc") != -1:
                cmds.connectAttr("LipCtrlLocGrp.DwLipOffset", loc+".offset")
        
    def CreateCtrl(self):
        CtrlLocList = cmds.listRelatives("LipCtrlLocGrp", c=True)

        ctrlGrpList = []
        nodeList = []
        
        for locGrp in CtrlLocList:
            loc = cmds.listRelatives(locGrp, c=True)[0]
            locPos = cmds.xform(loc, q=True, ws=True, t=True)
        
            ctrl = loc.replace( "WireCtrlCrv","").replace("Loc","Ctrl")
            ctrlGrp = ctrl + "Grp"
            ctrl = cmds.circle(n=ctrl, nr=(0,0,1), ch=1)
            ctrlGrp = cmds.group(ctrl, n=ctrlGrp)
            cmds.xform(ctrlGrp, ws=True, t=locPos)
            cmds.connectAttr(ctrl[0] + ".t", loc + ".t")
            
            nodeList.append(cmds.rename(ctrl[1], ctrl[0]+"Circle"))
            ctrlGrpList.append(ctrlGrp)

        cmds.group(ctrlGrpList, n="LipCtrlGrp")
        
    def ArrangeGrp(self):
        LipSysGrp = cmds.group(self.rigItem["CenterLoc"], \
                               self.rigItem["LipCrv"]["UpLipCrv"], \
                               self.rigItem["LipCrv"]["DwLipCrv"], \
                               self.rigItem["LipGuideGeo"], "LipJntGrp", \
                               "LipLocGrp", "LipCrvGrp", "LipCtrlJntGrp", \
                               "LipCtrlLocGrp", n="LipSysGrp") #self.rigItem["UpLoc"], 
        
        cmds.addAttr(LipSysGrp, ln="Lip", at="double", min=0, dv=1)
        cmds.setAttr(LipSysGrp+".Lip", keyable = False, cb=True)
        
        CtrlGrpList = cmds.listRelatives("LipCtrlGrp", c=True)
        for ctrlGrp in CtrlGrpList:
            ctrl = cmds.listRelatives(ctrlGrp,c=True)[0]
            ctrlNode = cmds.listRelatives(ctrl,shapes=True)[0]
            circleNode = ctrlNode.replace("Shape", "Circle")
            cmds.connectAttr("LipSysGrp.Lip", circleNode+".radius")
    
    def VisiblilitySet(self):
        cmds.addAttr("LipCtrlGrp", ln="ContrlLayer", at = "enum", en="Low:Middle:Hight:")
        cmds.setAttr("LipCtrlGrp.ContrlLayer", e=True, keyable=True)
        
        ctrlGrpList = cmds.listRelatives("LipCtrlGrp", c=True)
        driver = "LipCtrlGrp.ContrlLayer"
        
        
        cmds.setAttr("LipCtrlGrp.ContrlLayer", 0)
        for ctrl in ctrlGrpList:
            if ctrl.find("FivePtr") != -1:
                cmds.setAttr(ctrl+".visibility", 1)
                cmds.setDrivenKeyframe(ctrl+".visibility", cd = driver)
            else:
                cmds.setAttr(ctrl+".visibility", 0)
                cmds.setDrivenKeyframe(ctrl+".visibility", cd = driver)
           
        cmds.setAttr("LipCtrlGrp.ContrlLayer", 1)
        for ctrl in ctrlGrpList:
            if ctrl.find("SevenPtr") != -1:
                cmds.setAttr(ctrl+".visibility", 1)
                cmds.setDrivenKeyframe(ctrl+".visibility", cd = driver)
            else:
                cmds.setAttr(ctrl+".visibility", 0)
                cmds.setDrivenKeyframe(ctrl+".visibility", cd = driver)
        
        cmds.setAttr("LipCtrlGrp.ContrlLayer", 2)
        for ctrl in ctrlGrpList:
            if ctrl.find("Nine") != -1:
                cmds.setAttr(ctrl+".visibility", 1)
                cmds.setDrivenKeyframe(ctrl+".visibility", cd = driver)
            else:
                cmds.setAttr(ctrl+".visibility", 0)
                cmds.setDrivenKeyframe(ctrl+".visibility", cd = driver)
    
    def ArrangeAttr(self):
        cmds.setAttr("LipSysGrp.visibility", 1)  
        cmds.setAttr("LipCtrlGrp.ContrlLayer", 0)
    
    def RenameCtrl(self):
        cmds.rename("UpLipFivePtr00CtrlGrp",    "RightLipFPCtrlGrp")
        cmds.rename("UpLipFivePtr00Ctrl",       "RightLipFPCtrl")
        cmds.rename("UpLipFivePtr01CtrlGrp",    "RightUpLipFPCtrlGrp")
        cmds.rename("UpLipFivePtr01Ctrl",       "RightUpLipFPCtrl")
        cmds.rename("UpLipFivePtr02CtrlGrp",    "UpLipFPCtrlGrp")
        cmds.rename("UpLipFivePtr02Ctrl",       "UpLipFPCtrl")
        cmds.rename("UpLipFivePtr03CtrlGrp",    "LeftUpLipFPCtrlGrp")
        cmds.rename("UpLipFivePtr03Ctrl",       "LeftUpLipFPCtrl")
        cmds.rename("UpLipFivePtr04CtrlGrp",    "LeftLipFPCtrlGrp")
        cmds.rename("UpLipFivePtr04Ctrl",       "LeftLipFPCtrl")
        
        cmds.rename("DwLipFivePtr00CtrlGrp",    "RightLipFPAssistCtrlGrp")
        cmds.rename("DwLipFivePtr00Ctrl",       "RightLipFPAssistCtrl")
        cmds.rename("DwLipFivePtr01CtrlGrp",    "RightDwLipFPCtrlGrp")
        cmds.rename("DwLipFivePtr01Ctrl",       "RightDwLipFPCtrl")
        cmds.rename("DwLipFivePtr02CtrlGrp",    "DwLipFPCtrlGrp")
        cmds.rename("DwLipFivePtr02Ctrl",       "DwLipFPCtrl")
        cmds.rename("DwLipFivePtr03CtrlGrp",    "LeftDwLipFPCtrlGrp")
        cmds.rename("DwLipFivePtr03Ctrl",       "LeftDwLipFPCtrl")
        cmds.rename("DwLipFivePtr04CtrlGrp",    "LeftLipFPAssistCtrlGrp")
        cmds.rename("DwLipFivePtr04Ctrl",       "LeftLipFPAssistSubeCtrl")
        
        cmds.rename("UpLipSevenPtr00CtrlGrp",   "RightLipSPCtrlGrp")
        cmds.rename("UpLipSevenPtr00Ctrl",      "RightLipSPCtrl")
        cmds.rename("UpLipSevenPtr01CtrlGrp",   "RightUpLipSP01CtrlGrp")
        cmds.rename("UpLipSevenPtr01Ctrl",      "RightUpLipSP01Ctrl")
        cmds.rename("UpLipSevenPtr02CtrlGrp",   "RightUpLipSP02CtrlGrp")
        cmds.rename("UpLipSevenPtr02Ctrl",      "RightUpLipSP02Ctrl")
        cmds.rename("UpLipSevenPtr03CtrlGrp",   "UpLipSPCtrlGrp")
        cmds.rename("UpLipSevenPtr03Ctrl",      "UpLipSPCtrl")
        cmds.rename("UpLipSevenPtr04CtrlGrp",   "LeftUpLipSP02CtrlGrp")
        cmds.rename("UpLipSevenPtr04Ctrl",      "LeftUpLipSP02Ctrl")
        cmds.rename("UpLipSevenPtr05CtrlGrp",   "LeftUpLipSP01CtrlGrp")
        cmds.rename("UpLipSevenPtr05Ctrl",      "LeftUpLipSP01Ctrl")
        cmds.rename("UpLipSevenPtr06CtrlGrp",   "LeftLipSPCtrlGrp")
        cmds.rename("UpLipSevenPtr06Ctrl",      "LeftLipSPCtrl")
        
        cmds.rename("DwLipSevenPtr00CtrlGrp",   "RightLipSPAssistCtrlGrp")
        cmds.rename("DwLipSevenPtr00Ctrl",      "RightLipSPAssistCtrl")
        cmds.rename("DwLipSevenPtr01CtrlGrp",   "RightDwLipSP01CtrlGrp")
        cmds.rename("DwLipSevenPtr01Ctrl",      "RightDwLipSP01Ctrl")
        cmds.rename("DwLipSevenPtr02CtrlGrp",   "RightDwLipSP02CtrlGrp")
        cmds.rename("DwLipSevenPtr02Ctrl",      "RightDwLipSP02Ctrl")
        cmds.rename("DwLipSevenPtr03CtrlGrp",   "DwLipSPCtrlGrp")
        cmds.rename("DwLipSevenPtr03Ctrl",      "DwLipSPCtrl")
        cmds.rename("DwLipSevenPtr04CtrlGrp",   "LeftDwLipSP02CtrlGrp")
        cmds.rename("DwLipSevenPtr04Ctrl",      "LeftDwLipSP02Ctrl")
        cmds.rename("DwLipSevenPtr05CtrlGrp",   "LeftDwLipSP01CtrlGrp")
        cmds.rename("DwLipSevenPtr05Ctrl",      "LeftDwLipSP01Ctrl")
        cmds.rename("DwLipSevenPtr06CtrlGrp",   "LeftLipSPAssistCtrlGrp")
        cmds.rename("DwLipSevenPtr06Ctrl",      "LeftLipSPAssistCtrl")
        
        cmds.rename("UpLipNinePtr00CtrlGrp",    "RightLipNPCtrlGrp")
        cmds.rename("UpLipNinePtr00Ctrl",       "RightLipNPCtrl")
        cmds.rename("UpLipNinePtr01CtrlGrp",    "RightUpLipNP01CtrlGrp")
        cmds.rename("UpLipNinePtr01Ctrl",       "RightUpLipNP01Ctrl")
        cmds.rename("UpLipNinePtr02CtrlGrp",    "RightUpLipNP02CtrlGrp")
        cmds.rename("UpLipNinePtr02Ctrl",       "RightUpLipNP02Ctrl")
        cmds.rename("UpLipNinePtr03CtrlGrp",    "RightUpLipNP03CtrlGrp")
        cmds.rename("UpLipNinePtr03Ctrl",       "RightUpLipNP03Ctrl")
        cmds.rename("UpLipNinePtr04CtrlGrp",    "UpLipNPCtrlGrp")
        cmds.rename("UpLipNinePtr04Ctrl",       "UpLipNPCtrl")
        cmds.rename("UpLipNinePtr05CtrlGrp",    "LeftUpLipNP03CtrlGrp")
        cmds.rename("UpLipNinePtr05Ctrl",       "LeftUpLipNP03Ctrl")
        cmds.rename("UpLipNinePtr06CtrlGrp",    "LeftUpLipNP02CtrlGrp")
        cmds.rename("UpLipNinePtr06Ctrl",       "LeftUpLipNP02Ctrl")
        cmds.rename("UpLipNinePtr07CtrlGrp",    "LeftUpLipNP01CtrlGrp")
        cmds.rename("UpLipNinePtr07Ctrl",       "LeftUpLipNP01Ctrl")
        cmds.rename("UpLipNinePtr08CtrlGrp",    "LeftLipNPCtrlGrp")
        cmds.rename("UpLipNinePtr08Ctrl",       "LeftLipNPCtrl")
        
        cmds.rename("DwLipNinePtr00CtrlGrp",    "RightLipNPAssistCtrlGrp")
        cmds.rename("DwLipNinePtr00Ctrl",       "RightLipNPAssistCtrl")
        cmds.rename("DwLipNinePtr01CtrlGrp",    "RightDwLipNP01CtrlGrp")
        cmds.rename("DwLipNinePtr01Ctrl",       "RightDwLipNP01Ctrl")
        cmds.rename("DwLipNinePtr02CtrlGrp",    "RightDwLipNP02CtrlGrp")
        cmds.rename("DwLipNinePtr02Ctrl",       "RightDwLipNP02Ctrl")
        cmds.rename("DwLipNinePtr03CtrlGrp",    "RightDwLipNP03CtrlGrp")
        cmds.rename("DwLipNinePtr03Ctrl",       "RightDwLipNP03Ctrl")
        cmds.rename("DwLipNinePtr04CtrlGrp",    "DwLipNPCtrlGrp")
        cmds.rename("DwLipNinePtr04Ctrl",       "DwLipNPCtrl")
        cmds.rename("DwLipNinePtr05CtrlGrp",    "LeftDwLipNP03CtrlGrp")
        cmds.rename("DwLipNinePtr05Ctrl",       "LeftDwLipNP03Ctrl")
        cmds.rename("DwLipNinePtr06CtrlGrp",    "LeftDwLipNP02CtrlGrp")
        cmds.rename("DwLipNinePtr06Ctrl",       "LeftDwLipNP02Ctrl")
        cmds.rename("DwLipNinePtr07CtrlGrp",    "LeftDwLipNP01CtrlGrp")
        cmds.rename("DwLipNinePtr07Ctrl",       "LeftDwLipNP01Ctrl")
        cmds.rename("DwLipNinePtr08CtrlGrp",    "LeftLipNPAssistCtrlGrp")
        cmds.rename("DwLipNinePtr08Ctrl",       "LeftLipNPAssistCtrl")
        
    def AddOn(self):
        cmds.connectAttr("RightLipFPCtrl.translate",    "DwLipFivePtrWireCtrlCrv00Loc.translate", f=True)
        cmds.connectAttr("LeftLipFPCtrl.translate",     "DwLipFivePtrWireCtrlCrv04Loc.translate", f=True)
        cmds.connectAttr("RightLipSPCtrl.translate",    "DwLipSevenPtrWireCtrlCrv00Loc.translate", f=True)
        cmds.connectAttr("LeftLipSPCtrl.translate",     "DwLipSevenPtrWireCtrlCrv06Loc.translate", f=True)
        cmds.connectAttr("RightLipNPCtrl.translate",    "DwLipNinePtrWireCtrlCrv00Loc.translate", f=True)
        cmds.connectAttr("LeftLipNPCtrl.translate",     "DwLipNinePtrWireCtrlCrv08Loc.translate", f=True)
        
        cmds.delete("RightLipFPAssistCtrlGrp", "LeftLipFPAssistCtrlGrp", "RightLipSPAssistCtrlGrp", "LeftLipSPAssistCtrlGrp", "RightLipNPAssistCtrlGrp", "LeftLipNPAssistCtrlGrp")
    
    def GetFivePtrCtrl(self):
        self.FivePtrCtrlList.extend(["RightLipFPCtrl", "RightUpLipFPCtrl", "UpLipFPCtrl", "LeftUpLipFPCtrl", "LeftLipFPCtrl", "RightDwLipFPCtrl", "DwLipFPCtrl", "LeftDwLipFPCtrl"])
        return self.FivePtrCtrlList
    
    def GetSevenPtrCtrl(self):
        self.SevenPtrCtrlList.extend(["RightLipSPCtrl", "RightUpLipSP01Ctrl", "RightUpLipSP02Ctrl", "UpLipSPCtrl", "LeftUpLipSP02Ctrl", "LeftUpLipSP01Ctrl", "LeftLipSPCtrl", "RightLipSPAssistCtrl", "RightDwLipSP01Ctrl", "RightDwLipSP02Ctrl", "DwLipSPCtrl", "LeftDwLipSP02Ctrl", "LeftDwLipSP01Ctrl", "LeftLipSPAssistCtrl"])
        return self.SevenPtrCtrlList
    
    def GetNinePtrCtrl(self):
        self.NinePtrCtrlList.extend(["RightLipNPCtrl", "RightUpLipNP01Ctrl","RightUpLipNP02Ctrl", "RightUpLipNP03Ctrl", "UpLipNPCtrl", "LeftUpLipNP03Ctrl", "LeftUpLipNP02Ctrl", "LeftUpLipNP01Ctrl", "LeftLipNPCtrl", "RightLipNPAssistCtrl","RightDwLipNP01Ctrl", "RightDwLipNP02Ctrl", "RightDwLipNP03Ctrl", "DwLipNPCtrl", "LeftDwLipNP03Ctrl","LeftDwLipNP02Ctrl", "LeftDwLipNP01Ctrl", "LeftLipNPAssistCtrl"])
        return self.NinePtrCtrlList
    
    def LipRig(self):
        self.CreateJointOnCurve()
        self.CreateLoc()
        self.CreatePointInfo()
        self.GeoConstraint()
        self.CreateCtrlCurve()
        self.WireCurve()
        self.CreateCtrlJntAndLoc()
        self.CreateCtrl()
        self.ArrangeGrp()
        self.VisiblilitySet()
        self.ArrangeAttr()
        self.RenameCtrl()
        self.AddOn()