import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightArmFKSet():
    #/////////////////////////
    #Clavicle set
    #/////////////////////////
    pm.curve(p=[(0.934487, -1.275837, 2.01658e-008), (0.932697, -1.247176, -0.35686), (0.920752, -1.172835, -0.686003), (0.891476, -1.068829, -0.978435), (0.840076, -0.946678, -1.231929), (0.763591, -0.814991, -1.445766), (0.661715, -0.681111, -1.621424), (0.537155, -0.551427, -1.765671), (0.387617, -0.433133, -1.880322), (0.209586, -0.33878, -1.961541), (0, -0.297363, -1.993747), (-0.209586, -0.33878, -1.961541), (-0.387617, -0.433133, -1.880322), (-0.537155, -0.551427, -1.765671), (-0.661715, -0.681111, -1.621424), (-0.763591, -0.814991, -1.445766), (-0.840076, -0.946678, -1.231929), (-0.891476, -1.068829, -0.978435), (-0.920752, -1.172835, -0.686003), (-0.932697, -1.247176, -0.35686), (-0.934487, -1.275837, 2.01658e-008), (-0.932697, -1.247176, 0.35686), (-0.920752, -1.172834, 0.686003), (-0.891476, -1.06883, 0.978435), (-0.840076, -0.946678, 1.23193), (-0.763591, -0.814992, 1.445765), (-0.661715, -0.68111, 1.621426), (-0.537155, -0.55143, 1.765669), (-0.387617, -0.433127, 1.880326), (-0.209586, -0.338788, 1.961536), (0, -0.297318, 1.993775), (0.209586, -0.338788, 1.961536), (0.387617, -0.433127, 1.880326), (0.537155, -0.55143, 1.765669), (0.661715, -0.68111, 1.621426), (0.763591, -0.814992, 1.445765), (0.840076, -0.946678, 1.23193), (0.891476, -1.06883, 0.978435), (0.920752, -1.172834, 0.686003), (0.932697, -1.247176, 0.35686), (0.934487, -1.275837, 2.01658e-008), (0.917572, -1.470617, 0), (0.856971, -1.657129, 0), (0.758916, -1.826965, 0), (0.627692, -1.972704, 0), (0.469036, -2.087974, 0), (0.28988, -2.167739, 0), (0.0980551, -2.208513, 0), (-0.0980551, -2.208513, 0), (-0.28988, -2.167739, 0), (-0.469036, -2.087974, 0), (-0.627692, -1.972704, 0), (-0.758916, -1.826965, 0), (-0.856971, -1.657129, 0), (-0.917572, -1.470617, 0), (-0.934487, -1.275837, 2.01658e-008)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55],d=1)
    pm.rename("curve1","RightClavicleCtrl")
    Utils.KGM_MakeCtrlShape("RightClavicleCtrl")
    Utils.KGM_Aline("RightClavicleJnt", "RightClavicleCtrlGrp", "a")
    pm.group(em=1,n="RightClaviclePoint")
    pm.group(em=1,n="RightArmPoint")
    Utils.KGM_Aline("RightClavicleJnt", "RightClaviclePoint", "a")
    Utils.KGM_Aline("RightShoulderJnt", "RightArmPoint", "a")
    pm.parent('RightClaviclePoint','RightClavicleCtrl')
    pm.parent('RightArmPoint','RightClavicleCtrl')
    pm.parentConstraint('RightClaviclePoint','RightClavicleJnt',weight=1,n="RightClavicleJntPointCon")
    pm.connectAttr('RightClavicleCtrl.scale','RightClavicleJnt.scale',f=1)
    pm.parentConstraint('ChestPoint','RightClavicleCtrlGrp',mo=1,weight=1,n="RightClavicleCtrlGrpParCon")
    #/////////////////////////
    #FK Joint  
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightShoulderJnt", "RightArmFK1Jnt")
    Utils.KGM_DuplicateJnt("RightElbowJnt", "RightArmFK2Jnt")
    Utils.KGM_DuplicateJnt("RightWristJnt", "RightArmFK3Jnt")
    pm.parent('RightArmFK3Jnt','RightArmFK2Jnt')
    pm.parent('RightArmFK2Jnt','RightArmFK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightShoulderFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightShoulderFKCtrl")
    Utils.KGM_Aline("RightArmFK1Jnt", "RightShoulderFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightElbowFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightElbowFKCtrl")
    Utils.KGM_Aline("RightArmFK2Jnt", "RightElbowFKCtrlGrp", "a")
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightWristFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightWristFKCtrl")
    Utils.KGM_Aline("RightArmFK3Jnt", "RightWristFKCtrlGrp", "a")
    pm.parentConstraint('RightShoulderFKCtrl','RightElbowFKCtrlGrp',mo=1,weight=1,n="RightElbowFKCtrlGrpParentCon")
    pm.parentConstraint('RightElbowFKCtrl','RightWristFKCtrlGrp',mo=1,weight=1,n="RightWristFKCtrlGrpParentCon")
    pm.pointConstraint('RightShoulderFKCtrl','RightArmFK1Jnt',mo=1,weight=1,n="RightArmFK1JntPointCon")
    pm.pointConstraint('RightElbowFKCtrl','RightArmFK2Jnt',mo=1,weight=1,n="RightArmFK2JntPointCon")
    pm.pointConstraint('RightWristFKCtrl','RightArmFK3Jnt',mo=1,weight=1,n="RightArmFK3JntPointCon")
    #/////////////////////////
    #Rotate set
    #/////////////////////////
    pm.connectAttr('RightShoulderFKCtrl.rotate','RightArmFK1Jnt.rotate',f=1)
    pm.connectAttr('RightElbowFKCtrl.rotate','RightArmFK2Jnt.rotate',f=1)
    pm.connectAttr('RightWristFKCtrl.rotate','RightArmFK3Jnt.rotate',f=1)
    #/////////////////////////
    #Scale set
    #/////////////////////////
    pm.connectAttr('RightShoulderFKCtrl.scale','RightArmFK1Jnt.scale',f=1)
    pm.connectAttr('RightElbowFKCtrl.scale','RightArmFK2Jnt.scale',f=1)
    pm.connectAttr('RightWristFKCtrl.scale','RightArmFK3Jnt.scale',f=1)
    #///////////////////////////
    #
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="RightArmFKGrp")
    pm.group(em=1,n="RightArmRigJntGrp")
    Utils.KGM_Aline("RightShoulderJnt", "RightArmFKGrp", "p")
    Utils.KGM_Aline("RightShoulderJnt", "RightArmRigJntGrp", "p")
    pm.parent('RightShoulderFKCtrlGrp','RightArmFKGrp')
    pm.parent('RightElbowFKCtrlGrp','RightArmFKGrp')
    pm.parent('RightWristFKCtrlGrp','RightArmFKGrp')
    pm.parent('RightArmFK1Jnt','RightArmRigJntGrp')
    # RigSysGrp
    pm.group(em=1,n="RightArmRigSysGrp")
    pm.group(em=1,n="RightArmFKCtrlBaseGrp")
    pm.parent('RightClavicleCtrlBaseGrp','RightArmRigSysGrp')
    pm.parent('RightShoulderFKCtrlBase','RightArmFKCtrlBaseGrp')
    pm.parent('RightElbowFKCtrlBase','RightArmFKCtrlBaseGrp')
    pm.parent('RightWristFKCtrlBase','RightArmFKCtrlBaseGrp')
    pm.parent('RightArmFKCtrlBaseGrp','RightArmRigSysGrp')
    pm.parent('RightArmRigSysGrp','RigSysGrp')
    pm.delete('RightShoulderFKCtrlBaseGrp')
    pm.delete('RightElbowFKCtrlBaseGrp')
    pm.delete('RightWristFKCtrlBaseGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightArmRigSysGrp',ln="ClavicleCtrlRadius",at='double')
    pm.setAttr('RightArmRigSysGrp.ClavicleCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="ClavicleCtrlPositionX",at='double')
    pm.setAttr('RightArmRigSysGrp.ClavicleCtrlPositionX',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="ClavicleCtrlPositionY",at='double')
    pm.setAttr('RightArmRigSysGrp.ClavicleCtrlPositionY',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="ShoulderFKCtrlRadius",at='double')
    pm.setAttr('RightArmRigSysGrp.ShoulderFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="ElbowFKCtrlRadius",at='double')
    pm.setAttr('RightArmRigSysGrp.ElbowFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="WristFKCtrlRadius",at='double')
    pm.setAttr('RightArmRigSysGrp.WristFKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('RightArmRigSysGrp.ClavicleCtrlPositionX','RightClavicleCtrlBase.translateX',f=1)
    pm.connectAttr('RightArmRigSysGrp.ClavicleCtrlPositionY','RightClavicleCtrlBase.translateY',f=1)
    pm.connectAttr('RightArmRigSysGrp.ClavicleCtrlRadius','RightClavicleCtrlBase.scaleX',f=1)
    pm.connectAttr('RightArmRigSysGrp.ClavicleCtrlRadius','RightClavicleCtrlBase.scaleY',f=1)
    pm.connectAttr('RightArmRigSysGrp.ClavicleCtrlRadius','RightClavicleCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightArmRigSysGrp.ShoulderFKCtrlRadius','RightShoulderFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightArmRigSysGrp.ShoulderFKCtrlRadius','RightShoulderFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightArmRigSysGrp.ShoulderFKCtrlRadius','RightShoulderFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightArmRigSysGrp.ElbowFKCtrlRadius','RightElbowFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightArmRigSysGrp.ElbowFKCtrlRadius','RightElbowFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightArmRigSysGrp.ElbowFKCtrlRadius','RightElbowFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightArmRigSysGrp.WristFKCtrlRadius','RightWristFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightArmRigSysGrp.WristFKCtrlRadius','RightWristFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightArmRigSysGrp.WristFKCtrlRadius','RightWristFKCtrlBase.scaleZ',f=1)
    #///////////////////////////
    # 
    #///////////////////////////
    pm.setAttr("RightArmRigSysGrp.ClavicleCtrlRadius",-0.15)
    pm.setAttr("RightArmRigSysGrp.ClavicleCtrlPositionX",-0.4)
    pm.setAttr("RightArmRigSysGrp.ClavicleCtrlPositionY",0.2)
    pm.setAttr("RightShoulderFKCtrlBase.rotateZ",90)
    pm.setAttr("RightArmRigSysGrp.ShoulderFKCtrlRadius",0.3)
    pm.setAttr("RightElbowFKCtrlBase.rotateZ",90)
    pm.setAttr("RightArmRigSysGrp.ElbowFKCtrlRadius",0.3)
    pm.setAttr("RightWristFKCtrlBase.rotateZ",90)
    pm.setAttr("RightArmRigSysGrp.WristFKCtrlRadius",0.3)
    


