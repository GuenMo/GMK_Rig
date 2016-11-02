import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftArmFKSet():
    #/////////////////////////
    #Clavicle set
    #/////////////////////////
    pm.curve(p=[(0.934487, -1.275837, 2.01658e-008), (0.932697, -1.247176, -0.35686), (0.920752, -1.172835, -0.686003), (0.891476, -1.068829, -0.978435), (0.840076, -0.946678, -1.231929), (0.763591, -0.814991, -1.445766), (0.661715, -0.681111, -1.621424), (0.537155, -0.551427, -1.765671), (0.387617, -0.433133, -1.880322), (0.209586, -0.33878, -1.961541), (0, -0.297363, -1.993747), (-0.209586, -0.33878, -1.961541), (-0.387617, -0.433133, -1.880322), (-0.537155, -0.551427, -1.765671), (-0.661715, -0.681111, -1.621424), (-0.763591, -0.814991, -1.445766), (-0.840076, -0.946678, -1.231929), (-0.891476, -1.068829, -0.978435), (-0.920752, -1.172835, -0.686003), (-0.932697, -1.247176, -0.35686), (-0.934487, -1.275837, 2.01658e-008), (-0.932697, -1.247176, 0.35686), (-0.920752, -1.172834, 0.686003), (-0.891476, -1.06883, 0.978435), (-0.840076, -0.946678, 1.23193), (-0.763591, -0.814992, 1.445765), (-0.661715, -0.68111, 1.621426), (-0.537155, -0.55143, 1.765669), (-0.387617, -0.433127, 1.880326), (-0.209586, -0.338788, 1.961536), (0, -0.297318, 1.993775), (0.209586, -0.338788, 1.961536), (0.387617, -0.433127, 1.880326), (0.537155, -0.55143, 1.765669), (0.661715, -0.68111, 1.621426), (0.763591, -0.814992, 1.445765), (0.840076, -0.946678, 1.23193), (0.891476, -1.06883, 0.978435), (0.920752, -1.172834, 0.686003), (0.932697, -1.247176, 0.35686), (0.934487, -1.275837, 2.01658e-008), (0.917572, -1.470617, 0), (0.856971, -1.657129, 0), (0.758916, -1.826965, 0), (0.627692, -1.972704, 0), (0.469036, -2.087974, 0), (0.28988, -2.167739, 0), (0.0980551, -2.208513, 0), (-0.0980551, -2.208513, 0), (-0.28988, -2.167739, 0), (-0.469036, -2.087974, 0), (-0.627692, -1.972704, 0), (-0.758916, -1.826965, 0), (-0.856971, -1.657129, 0), (-0.917572, -1.470617, 0), (-0.934487, -1.275837, 2.01658e-008)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55],d=1)
    pm.rename("curve1","LeftClavicleCtrl")
    Utils.KGM_MakeCtrlShape("LeftClavicleCtrl")
    Utils.KGM_Aline("LeftClavicleJnt", "LeftClavicleCtrlGrp", "a")
    pm.group(em=1,n="LeftClaviclePoint")
    pm.group(em=1,n="LeftArmPoint")
    Utils.KGM_Aline("LeftClavicleJnt", "LeftClaviclePoint", "a")
    Utils.KGM_Aline("LeftShoulderJnt", "LeftArmPoint", "a")
    pm.parent('LeftClaviclePoint','LeftClavicleCtrl')
    pm.parent('LeftArmPoint','LeftClavicleCtrl')
    pm.parentConstraint('LeftClaviclePoint','LeftClavicleJnt',weight=1,n="LeftClavicleJntPointCon")
    pm.connectAttr('LeftClavicleCtrl.scale','LeftClavicleJnt.scale',f=1)
    pm.parentConstraint('ChestPoint','LeftClavicleCtrlGrp',mo=1,weight=1,n="LeftClavicleCtrlGrpParCon")
    #/////////////////////////
    #FK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftShoulderJnt", "LeftArmFK1Jnt")
    Utils.KGM_DuplicateJnt("LeftElbowJnt", "LeftArmFK2Jnt")
    Utils.KGM_DuplicateJnt("LeftWristJnt", "LeftArmFK3Jnt")
    pm.parent('LeftArmFK3Jnt','LeftArmFK2Jnt')
    pm.parent('LeftArmFK2Jnt','LeftArmFK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftShoulderFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftShoulderFKCtrl")
    Utils.KGM_Aline("LeftArmFK1Jnt", "LeftShoulderFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftElbowFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftElbowFKCtrl")
    Utils.KGM_Aline("LeftArmFK2Jnt", "LeftElbowFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftWristFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftWristFKCtrl")
    Utils.KGM_Aline("LeftArmFK3Jnt", "LeftWristFKCtrlGrp", "a")
    pm.parentConstraint('LeftShoulderFKCtrl','LeftElbowFKCtrlGrp',mo=1,weight=1,n="LeftElbowFKCtrlGrpParentCon")
    pm.parentConstraint('LeftElbowFKCtrl','LeftWristFKCtrlGrp',mo=1,weight=1,n="LeftWristFKCtrlGrpParentCon")
    pm.pointConstraint('LeftShoulderFKCtrl','LeftArmFK1Jnt',mo=1,weight=1,n="LeftArmFK1JntPointCon")
    pm.pointConstraint('LeftElbowFKCtrl','LeftArmFK2Jnt',mo=1,weight=1,n="LeftArmFK2JntPointCon")
    pm.pointConstraint('LeftWristFKCtrl','LeftArmFK3Jnt',mo=1,weight=1,n="LeftArmFK3JntPointCon")
    #/////////////////////////
    #Rotate set
    #/////////////////////////
    pm.connectAttr('LeftShoulderFKCtrl.rotate','LeftArmFK1Jnt.rotate',f=1)
    pm.connectAttr('LeftElbowFKCtrl.rotate','LeftArmFK2Jnt.rotate',f=1)
    pm.connectAttr('LeftWristFKCtrl.rotate','LeftArmFK3Jnt.rotate',f=1)
    #/////////////////////////
    #Scale set
    #/////////////////////////
    pm.connectAttr('LeftShoulderFKCtrl.scale','LeftArmFK1Jnt.scale',f=1)
    pm.connectAttr('LeftElbowFKCtrl.scale','LeftArmFK2Jnt.scale',f=1)
    pm.connectAttr('LeftWristFKCtrl.scale','LeftArmFK3Jnt.scale',f=1)
    #///////////////////////////
    #outline
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="LeftArmFKGrp")
    pm.group(em=1,n="LeftArmRigJntGrp")
    Utils.KGM_Aline("LeftShoulderJnt", "LeftArmFKGrp", "p")
    Utils.KGM_Aline("LeftShoulderJnt", "LeftArmRigJntGrp", "p")
    pm.parent('LeftShoulderFKCtrlGrp','LeftArmFKGrp')
    pm.parent('LeftElbowFKCtrlGrp','LeftArmFKGrp')
    pm.parent('LeftWristFKCtrlGrp','LeftArmFKGrp')
    pm.parent('LeftArmFK1Jnt','LeftArmRigJntGrp')
    # RigSysGrp
    pm.group(em=1,n="LeftArmRigSysGrp")
    pm.group(em=1,n="LeftArmFKCtrlBaseGrp")
    pm.parent('LeftClavicleCtrlBaseGrp','LeftArmRigSysGrp')
    pm.parent('LeftShoulderFKCtrlBase','LeftArmFKCtrlBaseGrp')
    pm.parent('LeftElbowFKCtrlBase','LeftArmFKCtrlBaseGrp')
    pm.parent('LeftWristFKCtrlBase','LeftArmFKCtrlBaseGrp')
    pm.parent('LeftArmFKCtrlBaseGrp','LeftArmRigSysGrp')
    pm.parent('LeftArmRigSysGrp','RigSysGrp')
    pm.delete('LeftShoulderFKCtrlBaseGrp')
    pm.delete('LeftElbowFKCtrlBaseGrp')
    pm.delete('LeftWristFKCtrlBaseGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftArmRigSysGrp',ln="ClavicleCtrlRadius",at='double')
    pm.setAttr('LeftArmRigSysGrp.ClavicleCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="ClavicleCtrlPositionX",at='double')
    pm.setAttr('LeftArmRigSysGrp.ClavicleCtrlPositionX',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="ClavicleCtrlPositionY",at='double')
    pm.setAttr('LeftArmRigSysGrp.ClavicleCtrlPositionY',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="ShoulderFKCtrlRadius",at='double')
    pm.setAttr('LeftArmRigSysGrp.ShoulderFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="ElbowFKCtrlRadius",at='double')
    pm.setAttr('LeftArmRigSysGrp.ElbowFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="WristFKCtrlRadius",at='double')
    pm.setAttr('LeftArmRigSysGrp.WristFKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('LeftArmRigSysGrp.ClavicleCtrlPositionX','LeftClavicleCtrlBase.translateX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ClavicleCtrlPositionY','LeftClavicleCtrlBase.translateY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ClavicleCtrlRadius','LeftClavicleCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ClavicleCtrlRadius','LeftClavicleCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ClavicleCtrlRadius','LeftClavicleCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ShoulderFKCtrlRadius','LeftShoulderFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ShoulderFKCtrlRadius','LeftShoulderFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ShoulderFKCtrlRadius','LeftShoulderFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ElbowFKCtrlRadius','LeftElbowFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ElbowFKCtrlRadius','LeftElbowFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ElbowFKCtrlRadius','LeftElbowFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftArmRigSysGrp.WristFKCtrlRadius','LeftWristFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.WristFKCtrlRadius','LeftWristFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.WristFKCtrlRadius','LeftWristFKCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #default 
    #///////////////////////////
    pm.setAttr("LeftArmRigSysGrp.ClavicleCtrlRadius",0.15)
    pm.setAttr("LeftArmRigSysGrp.ClavicleCtrlPositionX",0.4)
    pm.setAttr("LeftArmRigSysGrp.ClavicleCtrlPositionY",-0.2)
    pm.setAttr("LeftShoulderFKCtrlBase.rotateZ",90)
    pm.setAttr("LeftArmRigSysGrp.ShoulderFKCtrlRadius",0.3)
    pm.setAttr("LeftElbowFKCtrlBase.rotateZ",90)
    pm.setAttr("LeftArmRigSysGrp.ElbowFKCtrlRadius",0.3)
    pm.setAttr("LeftWristFKCtrlBase.rotateZ",90)
    pm.setAttr("LeftArmRigSysGrp.WristFKCtrlRadius",0.3)
    


