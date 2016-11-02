import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_OralSet():
    #/////////////////////////
    #oral make ctrl
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.delete(ch=1)
    pm.rename("nurbsCircle1","JawCtrl")
    Utils.KGM_MakeCtrlShape("JawCtrl")
    Utils.KGM_Aline("JawJnt", "JawCtrlGrp", "a")
    pm.curve(p=[(0.0204686, 0, -0.105668), (-0.127995, 0, -0.105668), (-0.127995, 0, 0.105668), (0.0204686, 0, 0.105668), (0.0536098, 0, 0.101968), (0.0835896, 0, 0.0869043), (0.107373, 0, 0.0631209), (0.122436, 0, 0.0331414), (0.127995, 0, -3.3659e-007), (0.122436, 0, -0.0331406), (0.107373, 0, -0.0631222), (0.0835896, 0, -0.086902), (0.0536098, 0, -0.101972), (0.0204686, 0, -0.105668)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],d=1)
    pm.delete(ch=1)
    pm.rename("curve1","UpperTeethCtrl")
    Utils.KGM_MakeCtrlShape("UpperTeethCtrl")
    Utils.KGM_Aline("UpperTeethJnt", "UpperTeethCtrlGrp", "a")
    pm.curve(p=[(0.0204686, 0, -0.105668), (-0.127995, 0, -0.105668), (-0.127995, 0, 0.105668), (0.0204686, 0, 0.105668), (0.0536098, 0, 0.101968), (0.0835896, 0, 0.0869043), (0.107373, 0, 0.0631209), (0.122436, 0, 0.0331414), (0.127995, 0, -3.3659e-007), (0.122436, 0, -0.0331406), (0.107373, 0, -0.0631222), (0.0835896, 0, -0.086902), (0.0536098, 0, -0.101972), (0.0204686, 0, -0.105668)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],d=1)
    pm.delete(ch=1)
    pm.rename("curve1","LowerTeethCtrl")
    Utils.KGM_MakeCtrlShape("LowerTeethCtrl")
    Utils.KGM_Aline("LowerTeethJnt", "LowerTeethCtrlGrp", "a")
    pm.parentConstraint('JawCtrl','JawScaleConnectGrp',weight=1,n="JawScaleConnectGrpParentCon")
    pm.connectAttr('JawCtrl.scale','JawScaleConnectGrp.scale',f=1)
    pm.parentConstraint('UpperTeethCtrl','UpperTeethScaleConnectGrp',weight=1,n="UpperTeethScaleConnectGrpParentCon ")
    pm.connectAttr('UpperTeethCtrl.scale','UpperTeethScaleConnectGrp.scale',f=1)
    pm.parentConstraint('LowerTeethCtrl','LowerTeethScaleConnectGrp',weight=1,n="LowerTeethScaleConnectGrpParentCon ")
    pm.connectAttr('LowerTeethCtrl.scale','LowerTeethScaleConnectGrp.scale',f=1)
    pm.addAttr('JawCtrl',ln="TeethCtrlVis",at='bool')
    pm.setAttr('JawCtrl.TeethCtrlVis',e=1,keyable=True)
    pm.connectAttr('JawCtrl.TeethCtrlVis','UpperTeethCtrlGrp.visibility',f=1)
    pm.connectAttr('JawCtrl.TeethCtrlVis','LowerTeethCtrlGrp.visibility',f=1)
    pm.parent('LowerTeethCtrlGrp','JawCtrl')
    pm.parent('JawCtrlGrp','HeadRigSysGrp')
    pm.parent('UpperTeethCtrlGrp','HeadRigSysGrp')
    pm.parent('UpperTeethCtrlBase','JawCtrlBaseGrp')
    pm.parent('LowerTeethCtrlBase','JawCtrlBaseGrp')
    pm.parent('JawCtrlBaseGrp','NeckSysGrp')
    pm.delete('UpperTeethCtrlBaseGrp')
    pm.delete('LowerTeethCtrlBaseGrp')
    #//////////////////////
    #shape set
    #//////////////////////
    pm.addAttr('NeckSysGrp',ln="JawCtrlRadius",dv=1,at='double')
    pm.setAttr('NeckSysGrp.JawCtrlRadius',e=1,channelBox=True)
    pm.addAttr('NeckSysGrp',ln="UpperTeethCtrlRadius",dv=1,at='double')
    pm.setAttr('NeckSysGrp.UpperTeethCtrlRadius',e=1,channelBox=True)
    pm.addAttr('NeckSysGrp',ln="LowerTeethCtrlRadius",dv=1,at='double')
    pm.setAttr('NeckSysGrp.LowerTeethCtrlRadius',e=1,channelBox=True)
    pm.addAttr('NeckSysGrp',ln="JawCtrlPosition",dv=1,at='double')
    pm.setAttr('NeckSysGrp.JawCtrlPosition',e=1,channelBox=True)
    pm.connectAttr('NeckSysGrp.JawCtrlRadius','JawCtrlBase.scaleX',f=1)
    pm.connectAttr('NeckSysGrp.JawCtrlRadius','JawCtrlBase.scaleY',f=1)
    pm.connectAttr('NeckSysGrp.JawCtrlRadius','JawCtrlBase.scaleZ',f=1)
    pm.connectAttr('NeckSysGrp.UpperTeethCtrlRadius','UpperTeethCtrlBase.scaleX',f=1)
    pm.connectAttr('NeckSysGrp.UpperTeethCtrlRadius','UpperTeethCtrlBase.scaleY',f=1)
    pm.connectAttr('NeckSysGrp.UpperTeethCtrlRadius','UpperTeethCtrlBase.scaleZ',f=1)
    pm.connectAttr('NeckSysGrp.LowerTeethCtrlRadius','LowerTeethCtrlBase.scaleX',f=1)
    pm.connectAttr('NeckSysGrp.LowerTeethCtrlRadius','LowerTeethCtrlBase.scaleY',f=1)
    pm.connectAttr('NeckSysGrp.LowerTeethCtrlRadius','LowerTeethCtrlBase.scaleZ',f=1)
    pm.connectAttr('NeckSysGrp.JawCtrlPosition','JawCtrlBase.translateX',f=1)
    #
    pm.select('JawCtrlBase.cv[3]',r=1)
    pm.select('JawCtrlBase.cv[7]',tgl=1)
    pm.move(-0.669461,0,0, r=1,os=1,wd=1)
    pm.select('JawCtrlBase.cv[1]',r=1)
    pm.select('JawCtrlBase.cv[5]',tgl=1)
    pm.move(0.260153,0,0,r=1,os=1,wd=1)
    pm.select('JawCtrlBase.cv[0]','JawCtrlBase.cv[1]','JawCtrlBase.cv[2]','JawCtrlBase.cv[3]','JawCtrlBase.cv[4]','JawCtrlBase.cv[5]','JawCtrlBase.cv[6]','JawCtrlBase.cv[7]',r=1)
    pm.cmds.scale(1,1,1.541188,ocp=1,r=1)
    pm.setAttr("NeckSysGrp.JawCtrlRadius",0.13)
    pm.setAttr("NeckSysGrp.UpperTeethCtrlRadius",1)
    pm.setAttr("NeckSysGrp.LowerTeethCtrlRadius",1)
    pm.setAttr("NeckSysGrp.JawCtrlPosition",
        pm.getAttr('JawEndJnt.translateX'))
    


