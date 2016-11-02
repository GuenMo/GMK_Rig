import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightLegFKSet():
    #/////////////////////////
    #FK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightHipJnt", "RightLegFK1Jnt")
    Utils.KGM_DuplicateJnt("RightKneeJnt", "RightLegFK2Jnt")
    Utils.KGM_DuplicateJnt("RightAnkleJnt", "RightLegFK3Jnt")
    pm.parent('RightLegFK3Jnt','RightLegFK2Jnt')
    pm.parent('RightLegFK2Jnt','RightLegFK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightHipFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightHipFKCtrl")
    Utils.KGM_Aline("RightLegFK1Jnt", "RightHipFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightKneeFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightKneeFKCtrl")
    Utils.KGM_Aline("RightLegFK2Jnt", "RightKneeFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightAnkleFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightAnkleFKCtrl")
    Utils.KGM_Aline("RightLegFK3Jnt", "RightAnkleFKCtrlGrp", "a")
    pm.parentConstraint('RightHipFKCtrl','RightKneeFKCtrlGrp',mo=1,weight=1,n="RightKneeFKCtrlGrpParentCon")
    pm.parentConstraint('RightKneeFKCtrl','RightAnkleFKCtrlGrp',mo=1,weight=1,n="RightAnkleFKCtrlGrpParentCon")
    pm.pointConstraint('RightHipFKCtrl','RightLegFK1Jnt',mo=1,weight=1,n="RightLegFK1JntPointCon")
    pm.pointConstraint('RightKneeFKCtrl','RightLegFK2Jnt',mo=1,weight=1,n="RightLegFK2JntPointCon")
    pm.pointConstraint('RightAnkleFKCtrl','RightLegFK3Jnt',mo=1,weight=1,n="RightLegFK3JntPointCon")
    #/////////////////////////
    #Rotate set
    #/////////////////////////
    pm.connectAttr('RightHipFKCtrl.rotate','RightLegFK1Jnt.rotate',f=1)
    pm.connectAttr('RightKneeFKCtrl.rotate','RightLegFK2Jnt.rotate',f=1)
    pm.connectAttr('RightAnkleFKCtrl.rotate','RightLegFK3Jnt.rotate',f=1)
    #/////////////////////////
    #Scale set
    #/////////////////////////
    pm.connectAttr('RightHipFKCtrl.scale','RightLegFK1Jnt.scale',f=1)
    pm.connectAttr('RightKneeFKCtrl.scale','RightLegFK2Jnt.scale',f=1)
    pm.connectAttr('RightAnkleFKCtrl.scale','RightLegFK3Jnt.scale',f=1)
    #///////////////////////////
    #outline
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="RightLegFKGrp")
    pm.group(em=1,n="RightLegRigJntGrp")
    Utils.KGM_Aline("RightHipJnt", "RightLegFKGrp", "p")
    Utils.KGM_Aline("RightHipJnt", "RightLegRigJntGrp", "p")
    pm.parent('RightHipFKCtrlGrp','RightLegFKGrp')
    pm.parent('RightKneeFKCtrlGrp','RightLegFKGrp')
    pm.parent('RightAnkleFKCtrlGrp','RightLegFKGrp')
    pm.parent('RightLegFK1Jnt','RightLegRigJntGrp')
    # RigSysGrp
    pm.group(em=1,n="RightLegRigSysGrp")
    pm.group(em=1,n="RightLegFKCtrlBaseGrp")
    pm.parent('RightHipFKCtrlBase','RightLegFKCtrlBaseGrp')
    pm.parent('RightKneeFKCtrlBase','RightLegFKCtrlBaseGrp')
    pm.parent('RightAnkleFKCtrlBase','RightLegFKCtrlBaseGrp')
    pm.parent('RightLegFKCtrlBaseGrp','RightLegRigSysGrp')
    pm.parent('RightLegRigSysGrp','RigSysGrp')
    pm.delete('RightHipFKCtrlBaseGrp')
    pm.delete('RightKneeFKCtrlBaseGrp')
    pm.delete('RightAnkleFKCtrlBaseGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightLegRigSysGrp',ln="HipFKCtrlRadius",at='double')
    pm.setAttr('RightLegRigSysGrp.HipFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="KneeFKCtrlRadius",at='double')
    pm.setAttr('RightLegRigSysGrp.KneeFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="AnkleFKCtrlRadius",at='double')
    pm.setAttr('RightLegRigSysGrp.AnkleFKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('RightLegRigSysGrp.HipFKCtrlRadius','RightHipFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightLegRigSysGrp.HipFKCtrlRadius','RightHipFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightLegRigSysGrp.HipFKCtrlRadius','RightHipFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightLegRigSysGrp.KneeFKCtrlRadius','RightKneeFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightLegRigSysGrp.KneeFKCtrlRadius','RightKneeFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightLegRigSysGrp.KneeFKCtrlRadius','RightKneeFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightLegRigSysGrp.AnkleFKCtrlRadius','RightAnkleFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightLegRigSysGrp.AnkleFKCtrlRadius','RightAnkleFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightLegRigSysGrp.AnkleFKCtrlRadius','RightAnkleFKCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #default 
    #///////////////////////////
    pm.setAttr("RightHipFKCtrlBase.rotateZ",90)
    pm.setAttr("RightLegRigSysGrp.HipFKCtrlRadius",0.3)
    pm.setAttr("RightKneeFKCtrlBase.rotateZ",90)
    pm.setAttr("RightLegRigSysGrp.KneeFKCtrlRadius",0.3)
    pm.setAttr("RightAnkleFKCtrlBase.rotateZ",90)
    pm.setAttr("RightLegRigSysGrp.AnkleFKCtrlRadius",0.3)
    


