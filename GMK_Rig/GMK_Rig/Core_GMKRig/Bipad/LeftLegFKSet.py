import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftLegFKSet():
    #/////////////////////////
    #FK Joint Create
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftHipJnt", "LeftLegFK1Jnt")
    Utils.KGM_DuplicateJnt("LeftKneeJnt", "LeftLegFK2Jnt")
    Utils.KGM_DuplicateJnt("LeftAnkleJnt", "LeftLegFK3Jnt")
    pm.parent('LeftLegFK3Jnt','LeftLegFK2Jnt')
    pm.parent('LeftLegFK2Jnt','LeftLegFK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftHipFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftHipFKCtrl")
    Utils.KGM_Aline("LeftLegFK1Jnt", "LeftHipFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftKneeFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftKneeFKCtrl")
    Utils.KGM_Aline("LeftLegFK2Jnt", "LeftKneeFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftAnkleFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftAnkleFKCtrl")
    Utils.KGM_Aline("LeftLegFK3Jnt", "LeftAnkleFKCtrlGrp", "a")
    pm.parentConstraint('LeftHipFKCtrl','LeftKneeFKCtrlGrp',mo=1,weight=1,n="LeftKneeFKCtrlGrpParentCon")
    pm.parentConstraint('LeftKneeFKCtrl','LeftAnkleFKCtrlGrp',mo=1,weight=1,n="LeftAnkleFKCtrlGrpParentCon")
    pm.pointConstraint('LeftHipFKCtrl','LeftLegFK1Jnt',mo=1,weight=1,n="LeftLegFK1JntPointCon")
    pm.pointConstraint('LeftKneeFKCtrl','LeftLegFK2Jnt',mo=1,weight=1,n="LeftLegFK2JntPointCon")
    pm.pointConstraint('LeftAnkleFKCtrl','LeftLegFK3Jnt',mo=1,weight=1,n="LeftLegFK3JntPointCon")
    #/////////////////////////
    #Rotate set
    #/////////////////////////
    pm.connectAttr('LeftHipFKCtrl.rotate','LeftLegFK1Jnt.rotate',f=1)
    pm.connectAttr('LeftKneeFKCtrl.rotate','LeftLegFK2Jnt.rotate',f=1)
    pm.connectAttr('LeftAnkleFKCtrl.rotate','LeftLegFK3Jnt.rotate',f=1)
    #/////////////////////////
    #Scale set
    #/////////////////////////
    pm.connectAttr('LeftHipFKCtrl.scale','LeftLegFK1Jnt.scale',f=1)
    pm.connectAttr('LeftKneeFKCtrl.scale','LeftLegFK2Jnt.scale',f=1)
    pm.connectAttr('LeftAnkleFKCtrl.scale','LeftLegFK3Jnt.scale',f=1)
    #///////////////////////////
    #outline
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="LeftLegFKGrp")
    pm.group(em=1,n="LeftLegRigJntGrp")
    Utils.KGM_Aline("LeftHipJnt", "LeftLegFKGrp", "p")
    Utils.KGM_Aline("LeftHipJnt", "LeftLegRigJntGrp", "p")
    pm.parent('LeftHipFKCtrlGrp','LeftLegFKGrp')
    pm.parent('LeftKneeFKCtrlGrp','LeftLegFKGrp')
    pm.parent('LeftAnkleFKCtrlGrp','LeftLegFKGrp')
    pm.parent('LeftLegFK1Jnt','LeftLegRigJntGrp')
    # RigSysGrp
    pm.group(em=1,n="LeftLegRigSysGrp")
    pm.group(em=1,n="LeftLegFKCtrlBaseGrp")
    pm.parent('LeftHipFKCtrlBase','LeftLegFKCtrlBaseGrp')
    pm.parent('LeftKneeFKCtrlBase','LeftLegFKCtrlBaseGrp')
    pm.parent('LeftAnkleFKCtrlBase','LeftLegFKCtrlBaseGrp')
    pm.parent('LeftLegFKCtrlBaseGrp','LeftLegRigSysGrp')
    pm.parent('LeftLegRigSysGrp','RigSysGrp')
    pm.delete('LeftHipFKCtrlBaseGrp')
    pm.delete('LeftKneeFKCtrlBaseGrp')
    pm.delete('LeftAnkleFKCtrlBaseGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftLegRigSysGrp',ln="HipFKCtrlRadius",at='double')
    pm.setAttr('LeftLegRigSysGrp.HipFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="KneeFKCtrlRadius",at='double')
    pm.setAttr('LeftLegRigSysGrp.KneeFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="AnkleFKCtrlRadius",at='double')
    pm.setAttr('LeftLegRigSysGrp.AnkleFKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('LeftLegRigSysGrp.HipFKCtrlRadius','LeftHipFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.HipFKCtrlRadius','LeftHipFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.HipFKCtrlRadius','LeftHipFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftLegRigSysGrp.KneeFKCtrlRadius','LeftKneeFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.KneeFKCtrlRadius','LeftKneeFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.KneeFKCtrlRadius','LeftKneeFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftLegRigSysGrp.AnkleFKCtrlRadius','LeftAnkleFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.AnkleFKCtrlRadius','LeftAnkleFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.AnkleFKCtrlRadius','LeftAnkleFKCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #default
    #///////////////////////////
    pm.setAttr("LeftHipFKCtrlBase.rotateZ",90)
    pm.setAttr("LeftLegRigSysGrp.HipFKCtrlRadius",0.3)
    pm.setAttr("LeftKneeFKCtrlBase.rotateZ",90)
    pm.setAttr("LeftLegRigSysGrp.KneeFKCtrlRadius",0.3)
    pm.setAttr("LeftAnkleFKCtrlBase.rotateZ",90)
    pm.setAttr("LeftLegRigSysGrp.AnkleFKCtrlRadius",0.3)
    


