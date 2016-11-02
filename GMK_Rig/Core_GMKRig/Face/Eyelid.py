# -*- coding: utf-8 -*-
import maya.cmds as cmds
import Core_GMKRig.Utils as Utils
reload(Utils)

class GMKimEyelid():
    def __init__(self, side, center, upEyelidCrv, dwEyelidCrv, eyeGuideGeo, offset):
        self.side = side
        self.CenterLocPos = cmds.xform(center, q=True, ws=True, rp=True)    
        #self.UpLoc           = up
        self.CenterLoc       = center
        self.UpEyelidCrv     = upEyelidCrv
        self.DwEyelidCrv     = dwEyelidCrv
        self.EyelidGuideGeo     = eyeGuideGeo
        self.offset = offset
        
        self.rigItem = {}
        self.wireCtrlCrv = []
        
        self.CtrlList = []
        
    def printRigItem(self):
        print "========================================================="
        print self.side
        print self.CenterLocPos
        #print self.UpLoc         
        print self.CenterLoc      
        print self.UpEyelidCrv     
        print self.DwEyelidCrv     
        print self.EyelidGuideGeo     
        print self.offset 
        print self.rigItem[self.side + "UpEyelidSkinJnt"]
        print self.rigItem[self.side + "DwEyelidSkinJnt"]
        print self.rigItem[self.side + "UpEyelidSurfaceLoc"]
        print self.rigItem[self.side + "DwEyelidSurfaceLoc"]
        print self.rigItem[self.side + "UpEyelidCurveLoc"]
        print self.rigItem[self.side + "DwEyelidCurveLoc"]
        print self.rigItem[self.side + "UpEyelidJntLoc"]
        print self.rigItem[self.side + "DwEyelidJntLoc"]

        print "========================================================="
        
    def CreateJointOnCurve(self):
        side = self.side
        centerPos = self.CenterLocPos
        JntGrp = []

        for crv in [self.UpEyelidCrv, self.DwEyelidCrv]:
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
            self.rigItem[ part + "SkinJnt"]   = skinJntList
            self.rigItem[ part + "CenterJnt"] = centerJntList
            
            #Group
            grp = cmds.group(centerJntList, n=crv+"Grp")
            JntGrp.append(grp)
        
        cmds.group(JntGrp, n=side + "EyelidJntGrp")
           
    def CreateLoc(self):
        LocGrp = []
        side = self.side
        for key in [side + "UpEyelidSkinJnt", side + "DwEyelidSkinJnt"]:
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
        
        cmds.group(LocGrp, n=side + "EyelidLocGrp")
           
    def GeoConstraint(self):
        side = self.side
        shape = cmds.listRelatives(self.EyelidGuideGeo, shapes=True)[0]
        UpEyelidSkinJnt       = self.rigItem[side+"UpEyelidSkinJnt"]
        DwEyelidSkinJnt       = self.rigItem[side+"DwEyelidSkinJnt"]  
        
        for part in [UpEyelidSkinJnt, DwEyelidSkinJnt]:
            for jnt in part:
                curveLoc    = jnt.replace("SkinJnt", "CurveLoc")
                surfaceLoc  = jnt.replace("SkinJnt", "SurfaceLoc")
                jntLoc      = jnt.replace("SkinJnt", "JntLoc")
                
                closetPointOnSurfaceNode = cmds.createNode("closestPointOnSurface", n = jnt.replace("SkinJnt","ClosestPointOnSurface") )
                matrixNode = cmds.createNode("decomposeMatrix", n= jnt.replace("SkinJnt","DecomposeMatrix"))
                
                cmds.connectAttr(shape+".worldSpace[0]",closetPointOnSurfaceNode+".inputSurface", f=True)
                cmds.connectAttr(curveLoc+".worldMatrix[0]", matrixNode+".inputMatrix", f=True)
                cmds.connectAttr(matrixNode+".outputTranslate", closetPointOnSurfaceNode+".inPosition", f=True)
                cmds.connectAttr(closetPointOnSurfaceNode+".position", surfaceLoc +".translate", f=True)
                
                cmds.pointConstraint(surfaceLoc, jntLoc, n=jnt.replace("SkinJnt", "SurfaceOffsetPointConstranit"), mo=True)
                pointConstranint = cmds.pointConstraint(jntLoc,curveLoc,jnt, n = jnt.replace("SkinJnt","SurfaceOffsetCtrlPointConstraint"), mo=True)[0]

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
        side = self.side
        UpEyelidCurveLoc       = self.rigItem[side + "UpEyelidCurveLoc"]
        DwEyelidCurveLoc       = self.rigItem[side + "DwEyelidCurveLoc"]  
        
        for LocList in [UpEyelidCurveLoc, DwEyelidCurveLoc]:
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
        side = self.side
        CrvGrp = []
        for crv in [self.UpEyelidCrv, self.DwEyelidCrv ]: 
            CtrlCrv         = cmds.duplicateCurve(crv , ch=0, n=crv.replace("Jnt", "Ctrl") )[0] 
            CtrlCrv         = cmds.rebuildCurve(CtrlCrv, ch=0, rpo=1, rt=0, end=1, kr=0, kcp=1, kep=1, kt=0, d=3, tol=0.01)[0]
            
            FivePtrCtrlCrv  = cmds.duplicateCurve(CtrlCrv, ch=0, n=crv.replace("Jnt", "FivePtrCtrl") )[0] 
            DBCtrlCrv       = cmds.duplicateCurve(CtrlCrv, ch=0, n=crv.replace("Jnt", "DBCtrl") ) [0]

            FivePtrWireCrv  = cmds.duplicateCurve(FivePtrCtrlCrv, ch=0, n=FivePtrCtrlCrv.replace("Ptr", "PtrWire"))[0] 
            FivePtrWireCrv  = cmds.rebuildCurve(FivePtrWireCrv, ch=0, rpo=1, rt=0, end=1, kr=0, kcp=0, kep=1, kt=0, s=4, d=3, tol=0.01)[0]
            
            FivePtrWireBaseCrv = cmds.wire( FivePtrCtrlCrv,  gw=False, en= 1.000000, ce= 0.000000, li =0.000000, n= FivePtrCtrlCrv  + "Wire", w=FivePtrWireCrv )
           
            crvBlendShape = cmds.blendShape( FivePtrCtrlCrv, DBCtrlCrv, CtrlCrv, n=CtrlCrv+"DB" )[0]
    
            for i in range(2):
                cmds.setAttr(crvBlendShape+".weight[%i]" %i, 1)
            
            self.wireCtrlCrv.append(FivePtrWireCrv)
            
            grp = cmds.group(CtrlCrv, FivePtrCtrlCrv,  DBCtrlCrv, FivePtrWireCrv, FivePtrWireBaseCrv, n = side + CtrlCrv + "Grp")
            CrvGrp.append(grp)
        baseWire = [side + "DwEyelidFivePtrWireCtrlCrvBaseWire", side +"UpEyelidFivePtrWireCtrlCrvBaseWire"]
        cmds.group(CrvGrp, baseWire, n=side + "EyelidCrvGrp")
            
    def WireCurve(self):
        for crv in [self.UpEyelidCrv, self.DwEyelidCrv]:
            cmds.wire( crv,  gw=False, en= 1.000000, ce= 0.000000, li =0.000000, n= crv  + "Wire", w=crv.replace("Jnt", "Ctrl") )
    
    def CreateCtrlJntAndLoc(self):
        side = self.side
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

        cmds.group(CtrlJntListGrp, n=side+"EyelidCtrlJntGrp")
        cmds.group(CtrlLocListGrp, n=side+"EyelidCtrlLocGrp")
        ##
        cmds.addAttr(side+"EyelidCtrlLocGrp", ln="UpEyelidOffset", at="double", min=0, max=10, dv=0)
        cmds.setAttr(side+"EyelidCtrlLocGrp.UpEyelidOffset", e=True, keyable=True)
        cmds.addAttr(side+"EyelidCtrlLocGrp", ln="DwEyelidOffset", at="double", min=0, max=10, dv=0)
        cmds.setAttr(side+"EyelidCtrlLocGrp.DwEyelidOffset", e=True, keyable=True)
        
        UpEyelidCrvLoc = cmds.listRelatives(side + "UpEyelidLocGrp",c=True)
        DwEyelidCrvLoc = cmds.listRelatives(side + "DwEyelidLocGrp",c=True)
        
        for loc in UpEyelidCrvLoc:
            if loc.find("CurveLoc") != -1 and loc.find("Up") != -1:
                cmds.connectAttr(side + "EyelidCtrlLocGrp.UpEyelidOffset", loc+".offset")
        for loc in DwEyelidCrvLoc:
            if loc.find("CurveLoc") != -1 and loc.find("Dw") != -1:
                cmds.connectAttr(side + "EyelidCtrlLocGrp.DwEyelidOffset", loc+".offset")
                
    def CreateCtrl(self):
        side = self.side
        CtrlLocList = cmds.listRelatives(side + "EyelidCtrlLocGrp", c=True)

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

        cmds.group(ctrlGrpList, n=side + "EyelidCtrlGrp")
        
    def ArrangeGrp(self):
        side = self.side
        EyelidSysGrp = cmds.group(self.CenterLoc, self.UpEyelidCrv, self.DwEyelidCrv, self.EyelidGuideGeo, \
                                  side + "EyelidJntGrp", side + "EyelidLocGrp", side + "EyelidCrvGrp", side + "EyelidCtrlJntGrp", side + "EyelidCtrlLocGrp", \
                                  n=side + "EyelidSysGrp") #self.UpLoc, 
        
        cmds.addAttr(EyelidSysGrp, ln="Eyelid", at="double", min=0, dv=1)
        cmds.setAttr(EyelidSysGrp+".Eyelid", keyable = False, cb=True)
        
        CtrlGrpList = cmds.listRelatives(side + "EyelidCtrlGrp", c=True)
        for ctrlGrp in CtrlGrpList:
            ctrl = cmds.listRelatives(ctrlGrp,c=True)[0]
            ctrlNode = cmds.listRelatives(ctrl,shapes=True)[0]
            circleNode = ctrlNode.replace("Shape", "Circle")
            cmds.connectAttr(EyelidSysGrp+".Eyelid", circleNode+".radius")
     
    def ArrangeAttr(self):
        side = self.side
        nodeList= cmds.listRelatives(side + "EyelidSysGrp", c=True)
        nodeList.append(side + "EyelidSysGrp")
        
        for node in nodeList:
            cmds.setAttr(node+".tx", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".ty", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".tz", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".rx", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".ry", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".rz", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".sx", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".sy", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".sz", lock=True, keyable=False, channelBox=False)
            cmds.setAttr(node+".visibility", 0)
            cmds.setAttr(node+".visibility", keyable=False, channelBox=True)
        
        cmds.setAttr(side+"EyelidSysGrp.visibility", 1)  
    
    def RenameCtrl(self):
        side = self.side
        cmds.rename(side + "UpEyelidFivePtr00CtrlGrp",    side + "REyelidCtrlGrp")
        cmds.rename(side + "UpEyelidFivePtr00Ctrl",       side + "REyelidCtrl")
        cmds.rename(side + "UpEyelidFivePtr01CtrlGrp",    side + "RUpEyelidCtrlGrp")
        cmds.rename(side + "UpEyelidFivePtr01Ctrl",       side + "RUpEyelidCtrl")
        cmds.rename(side + "UpEyelidFivePtr02CtrlGrp",    side + "UpEyelidCtrlGrp")
        cmds.rename(side + "UpEyelidFivePtr02Ctrl",       side + "UpEyelidCtrl")
        cmds.rename(side + "UpEyelidFivePtr03CtrlGrp",    side + "LUpEyelidCtrlGrp")
        cmds.rename(side + "UpEyelidFivePtr03Ctrl",       side + "LUpEyelidCtrl")
        cmds.rename(side + "UpEyelidFivePtr04CtrlGrp",    side + "LEyelidCtrlGrp")
        cmds.rename(side + "UpEyelidFivePtr04Ctrl",       side + "LEyelidCtrl")
        
        cmds.rename(side + "DwEyelidFivePtr00CtrlGrp",    side + "REyelidAssistCtrlGrp")
        cmds.rename(side + "DwEyelidFivePtr00Ctrl",       side + "REyelidAssistCtrl")
        cmds.rename(side + "DwEyelidFivePtr01CtrlGrp",    side + "RDwEyelidCtrlGrp")
        cmds.rename(side + "DwEyelidFivePtr01Ctrl",       side + "RDwEyelidCtrl")
        cmds.rename(side + "DwEyelidFivePtr02CtrlGrp",    side + "DwEyelidCtrlGrp")
        cmds.rename(side + "DwEyelidFivePtr02Ctrl",       side + "DwEyelidCtrl")
        cmds.rename(side + "DwEyelidFivePtr03CtrlGrp",    side + "LDwEyelidCtrlGrp")
        cmds.rename(side + "DwEyelidFivePtr03Ctrl",       side + "LDwEyelidCtrl")
        cmds.rename(side + "DwEyelidFivePtr04CtrlGrp",    side + "LEyelidAssistCtrlGrp")
        cmds.rename(side + "DwEyelidFivePtr04Ctrl",       side + "LEyelidAssistSubeCtrl")
    
    def CtrlConstraint(self, drive1, drive2, driven):
        drivenGrp = cmds.listRelatives(driven, p = True)[0]
        drivenLoc = cmds.listConnections(driven, d = True)[0]
    
        pointCon = cmds.pointConstraint(drive1, drive2, drivenGrp, n = driven + "PointConstraint", mo=True)[0]
        cmds.setAttr(pointCon+"."+drive1+"W0", 0.5)
        cmds.setAttr(pointCon+"."+drive2+"W1", 0.5)
        
        dirve1Mult = cmds.createNode("multiplyDivide", n = drive1 + "MultiplyDivide")
        dirve2Mult = cmds.createNode("multiplyDivide", n = drive2 + "MultiplyDivide")
        
        cmds.connectAttr(pointCon+"."+drive1+"W0", dirve1Mult+".input2X")
        cmds.connectAttr(pointCon+"."+drive1+"W0", dirve1Mult+".input2Y")
        cmds.connectAttr(pointCon+"."+drive1+"W0", dirve1Mult+".input2Z")
        
        cmds.connectAttr(pointCon+"."+drive2+"W1", dirve2Mult+".input2X")
        cmds.connectAttr(pointCon+"."+drive2+"W1", dirve2Mult+".input2Y")
        cmds.connectAttr(pointCon+"."+drive2+"W1", dirve2Mult+".input2Z")
        
        cmds.connectAttr(drive1+".translate", dirve1Mult+".input1")
        cmds.connectAttr(drive2+".translate", dirve2Mult+".input1")
        
        plusNode = cmds.createNode("plusMinusAverage", n = driven.replace("Ctrl","Loc") + "PlusMinusAverage") 
        cmds.connectAttr(driven+".translate", plusNode+".input3D[0]")
        cmds.connectAttr(dirve1Mult+".output", plusNode+".input3D[1]")
        cmds.connectAttr(dirve2Mult+".output", plusNode+".input3D[2]")
        cmds.connectAttr(plusNode+".output3D", drivenLoc+".translate", f=True)
         
    def AddOn(self):
        side = self.side
        cmds.connectAttr(side + "REyelidCtrl.translate",    side + "DwEyelidFivePtrWireCtrlCrv00Loc.translate", f=True)
        cmds.connectAttr(side + "LEyelidCtrl.translate",    side + "DwEyelidFivePtrWireCtrlCrv04Loc.translate", f=True)
        cmds.delete(side + "REyelidAssistCtrlGrp", side + "LEyelidAssistCtrlGrp")
        
        cmds.setAttr(side + "EyelidCtrlLocGrp.UpEyelidOffset", self.offset)
        cmds.setAttr(side + "EyelidCtrlLocGrp.DwEyelidOffset", self.offset)
        
    def GetCtrl(self):
        side = self.side
        self.CtrlList.extend([side+"REyelidCtrl", side+"RUpEyelidCtrl", side+"UpEyelidCtrl", side+"LUpEyelidCtrl", side+"LEyelidCtrl", side+"RDwEyelidCtrl", side + "DwEyelidCtrl", side+"LDwEyelidCtrl"])
        return self.CtrlList
        
    def EyelidRig(self):
        self.CreateJointOnCurve()
        self.CreateLoc()
        self.CreatePointInfo()
        self.GeoConstraint()
        self.CreateCtrlCurve()
        self.WireCurve()
        self.CreateCtrlJntAndLoc()
        self.CreateCtrl()
        self.ArrangeGrp()
        self.ArrangeAttr()
        self.RenameCtrl()
        self.AddOn()
        #self.printRigItem()

