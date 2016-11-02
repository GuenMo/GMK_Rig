import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightArmRigSet():
    Utils.KGM_DuplicateJnt("RightShoulderJnt", "RightArmRig1Jnt")
    #/////////////////////////
    #Rig Joint
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightElbowJnt", "RightArmRig2Jnt")
    Utils.KGM_DuplicateJnt("RightWristJnt", "RightArmRig3Jnt")
    pm.parent('RightArmRig3Jnt','RightArmRig2Jnt')
    pm.parent('RightArmRig2Jnt','RightArmRig1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(-0.332739, 0.998218, 0), (-0.332739, 0.332739, 0), (-0.998218, 0.332739, 0), (-0.998218, -0.332739, 0), (-0.332739, -0.332739, 0), (-0.332739, -0.998218, 0), (0.332739, -0.998218, 0), (0.332739, -0.332739, 0), (0.998218, -0.332739, 0), (0.998218, 0.332739, 0), (0.332739, 0.332739, 0), (0.332739, 0.998218, 0), (-0.332739, 0.998218, 0)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],d=1)
    pm.rename("curve1","RightArmIKFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightArmIKFKCtrl")
    Utils.KGM_Aline("RightWristJnt", "RightArmIKFKCtrlGrp", "p")
    pm.addAttr('RightArmIKFKCtrl',ln="IKFK",max=1,dv=0,at='double',min=0)
    pm.setAttr('RightArmIKFKCtrl.IKFK',e=1,keyable=True)
    pm.addAttr('RightArmIKFKCtrl',ln="Arc",max=10,dv=0,at='double',min=0)
    pm.setAttr('RightArmIKFKCtrl.Arc',e=1,keyable=True)
    pm.addAttr('RightArmIKFKCtrl',ln="TwistFix",at='double')
    pm.setAttr('RightArmIKFKCtrl.TwistFix',e=1,keyable=True)
    pm.addAttr('RightArmIKFKCtrl',ln="AutoHideIKFK",at='bool')
    pm.setAttr('RightArmIKFKCtrl.AutoHideIKFK',e=1,channelBox=True)
    pm.setAttr("RightArmIKFKCtrl.AutoHideIKFK",1)
    pm.parentConstraint('RightWristJnt','RightArmIKFKCtrlGrp',mo=1,weight=1,n="RightArmIKFKCtrlGrpParentCon")
    pm.group(em=1,n="RightElbowTwistFixPointElbow")
    pm.group(em=1,n="RightWristTwistFixPointWrist")
    Utils.KGM_Aline("RightArmRig2Jnt", "RightElbowTwistFixPointElbow", "a")
    Utils.KGM_Aline("RightArmRig3Jnt", "RightWristTwistFixPointWrist", "a")
    pm.parent('RightElbowTwistFixPointElbow','RightArmRig2Jnt')
    pm.parent('RightWristTwistFixPointWrist','RightArmRig3Jnt')
    pm.setAttr("RightElbowTwistFixPointElbow.translateX",1)
    pm.setAttr("RightWristTwistFixPointWrist.translateX",1)
    pm.group(em=1,n="RightShoulderTwistFixGrp")
    pm.group(em=1,n="RightShoulderTwistFixAim")
    pm.group(em=1,n="RightShoulderTwistFix")
    pm.group(em=1,n="RightShoulderTwistFixAimUp")
    pm.group(em=1,n="RightShoulderTwistFixAimPoint")
    Utils.KGM_Aline("RightArmRig1Jnt", "RightShoulderTwistFixGrp", "a")
    Utils.KGM_Aline("RightArmRig1Jnt", "RightShoulderTwistFixAim", "a")
    Utils.KGM_Aline("RightArmRig1Jnt", "RightShoulderTwistFix", "a")
    Utils.KGM_Aline("RightArmRig1Jnt", "RightShoulderTwistFixAimUp", "a")
    Utils.KGM_Aline("RightArmRig2Jnt ", "RightShoulderTwistFixAimPoint", "a")
    pm.parent('RightShoulderTwistFix','RightShoulderTwistFixAim')
    pm.parent('RightShoulderTwistFixAim','RightShoulderTwistFixGrp')
    pm.parent('RightShoulderTwistFixAimUp','RightShoulderTwistFixGrp')
    pm.parent('RightShoulderTwistFixAimPoint','RightShoulderTwistFixGrp')
    pm.group(em=1,n="RightElbowTwistFixGrp")
    pm.group(em=1,n="RightElbowTwistFixAim")
    pm.group(em=1,n="RightElbowTwistFix")
    pm.group(em=1,n="RightElbowTwistFixAimPoint")
    pm.group(em=1,n="RightElbowTwistFixPointShoulder")
    Utils.KGM_Aline("RightArmRig2Jnt", "RightElbowTwistFixGrp", "a")
    Utils.KGM_Aline("RightArmRig2Jnt", "RightElbowTwistFixAim", "a")
    Utils.KGM_Aline("RightArmRig2Jnt ", "RightElbowTwistFix", "a")
    Utils.KGM_Aline("RightArmRig2Jnt", "RightElbowTwistFixAimPoint", "a")
    Utils.KGM_Aline("RightArmRig2Jnt", "RightElbowTwistFixPointShoulder", "a")
    pm.parent('RightElbowTwistFix','RightElbowTwistFixAim')
    pm.parent('RightElbowTwistFixAim','RightElbowTwistFixGrp')
    pm.parent('RightElbowTwistFixAimPoint','RightElbowTwistFixGrp')
    pm.parent('RightElbowTwistFixPointShoulder','RightElbowTwistFixGrp')
    pm.setAttr("RightElbowTwistFixAimPoint.translateX",1)
    pm.setAttr("RightElbowTwistFixPointShoulder.translateX",1)
    pm.group(em=1,n="RightWristTwistFixGrp")
    pm.group(em=1,n="RightWristTwistFixAim")
    pm.group(em=1,n="RightWristTwistFixUp")
    pm.group(em=1,n="RightWristTwistFix")
    pm.group(em=1,n="RightWristTwistFixAimPoint")
    pm.group(em=1,n="RightWristTwistFixPointElbow")
    Utils.KGM_Aline("RightArmRig3Jnt", "RightWristTwistFixGrp", "a")
    Utils.KGM_Aline("RightArmRig3Jnt", "RightWristTwistFixAim", "a")
    Utils.KGM_Aline("RightArmRig3Jnt ", "RightWristTwistFixUp", "a")
    Utils.KGM_Aline("RightArmRig3Jnt", "RightWristTwistFix", "a")
    Utils.KGM_Aline("RightArmRig3Jnt", "RightWristTwistFixAimPoint", "a")
    Utils.KGM_Aline("RightArmRig3Jnt", "RightWristTwistFixPointElbow", "a")
    pm.parent('RightWristTwistFixUp','RightWristTwistFixAim')
    pm.parent('RightWristTwistFix','RightWristTwistFixAim')
    pm.parent('RightWristTwistFixAim','RightWristTwistFixGrp')
    pm.parent('RightWristTwistFixAimPoint','RightWristTwistFixGrp')
    pm.parent('RightWristTwistFixPointElbow','RightWristTwistFixGrp')
    pm.setAttr("RightWristTwistFixAimPoint.translateX",1)
    pm.setAttr("RightWristTwistFixPointElbow.translateX",1)
    pm.parent('RightElbowTwistFixGrp','RightArmRig1Jnt')
    pm.parent('RightWristTwistFixGrp','RightArmRig2Jnt')
    #RightShoulderTwistFixGrp
    pm.aimConstraint('RightShoulderTwistFixAimPoint','RightShoulderTwistFixAim',weight=1,upVector=(0, 0, 1),n="RightShoulderTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='RightShoulderTwistFixAimUp',
        offset=(0, 0, 0),aimVector=(-1, 0, 0),
        worldUpVector=(0, 0, 1))
    pm.pointConstraint('RightArmRig2Jnt','RightShoulderTwistFixAimPoint',mo=1,weight=1,n="RightShoulderTwistFixAimPointCon")
    pm.createNode('vectorProduct',n="RightShoulderTwistFixPD")
    pm.setAttr("RightShoulderTwistFixPD.input1Y",-1)
    pm.setAttr("RightShoulderTwistFixPD.normalizeOutput",1)
    pm.connectAttr('RightShoulderTwistFixAimPoint.translate','RightShoulderTwistFixPD.input2',f=1)
    pm.setDrivenKeyframe('RightShoulderTwistFixAimUp',currentDriver="RightShoulderTwistFixPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('RightShoulderTwistFixAimUp',currentDriver="RightShoulderTwistFixPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    #RightElbowTwistFixGrp
    pm.pointConstraint('RightArmRig2Jnt','RightElbowTwistFixGrp',mo=1,weight=1,n="RightElbowTwistFixGrpPointCon")
    pm.aimConstraint('RightElbowTwistFixAimPoint','RightElbowTwistFixAim',weight=1,upVector=(0, 1, 0),n="RightElbowTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='RightElbowTwistFixPointElbow',
        offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.connectAttr('RightArmIKFKCtrl.TwistFix','RightElbowTwistFix.rotateX',f=1)
    pm.pointConstraint('RightElbowTwistFixPointShoulder','RightElbowTwistFixPointElbow','RightElbowTwistFixAimPoint',mo=1,weight=1,n="RightElbowTwistFixAimPointPointCon")
    #RightWristTwistFixGrp
    pm.pointConstraint('RightArmRig3Jnt','RightWristTwistFixGrp',mo=1,weight=1,n="RightWristTwistFixGrpPointCon")
    pm.aimConstraint('RightWristTwistFixAimPoint','RightWristTwistFixAim',weight=1,upVector=(0, 1, 0),n="RightWristTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='RightWristTwistFixGrp',
        offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.aimConstraint('RightWristTwistFixAimPoint','RightWristTwistFixUp',weight=1,upVector=(0, 1, 0),n="RightWristTwistFixUpAimCon",worldUpType="objectrotation",
        worldUpObject='RightWristTwistFixPointWrist',
        offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.orientConstraint('RightWristTwistFixAim','RightWristTwistFixUp','RightWristTwistFix',mo=1,weight=1,n="RightWristTwistFixAimPointOrientCon")
    pm.setAttr("RightWristTwistFixAimPointOrientCon.RightWristTwistFixAimW0",0.5)
    pm.pointConstraint('RightWristTwistFixPointElbow','RightWristTwistFixPointWrist','RightWristTwistFixAimPoint',mo=1,weight=1,n="RightWristTwistFixAimPointPointCon")
    #Shoulder
    pm.pointConstraint('RightArmIK1Jnt','RightArmFK1Jnt','RightArmRig1Jnt',mo=1,weight=1,n="RightArmRig1JntPointCon")
    pm.setAttr("RightArmIKFKCtrl.IKFK",1)
    pm.setAttr("RightArmRig1JntPointCon.RightArmIK1JntW0",0)
    pm.setAttr("RightArmRig1JntPointCon.RightArmFK1JntW1",1)
    pm.setDrivenKeyframe('RightArmRig1JntPointCon.RightArmIK1JntW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig1JntPointCon.RightArmFK1JntW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setAttr("RightArmIKFKCtrl.IKFK",0)
    pm.setAttr("RightArmRig1JntPointCon.RightArmIK1JntW0",1)
    pm.setAttr("RightArmRig1JntPointCon.RightArmFK1JntW1",0)
    pm.setDrivenKeyframe('RightArmRig1JntPointCon.RightArmIK1JntW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig1JntPointCon.RightArmFK1JntW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="RightShoulderIKFKOrientBlend")
    pm.connectAttr('RightArmIKFKCtrl.IKFK','RightShoulderIKFKOrientBlend.blender',f=1)
    pm.connectAttr('RightArmFK1Jnt.rotate','RightShoulderIKFKOrientBlend.color1',f=1)
    pm.connectAttr('RightArmIK1Jnt.rotate','RightShoulderIKFKOrientBlend.color2',f=1)
    pm.connectAttr('RightShoulderIKFKOrientBlend.output','RightArmRig1Jnt.rotate',f=1)
    #Elbow
    pm.pointConstraint('RightArmIK2Jnt','RightArmFK2Jnt','RightArmRig2Jnt',mo=1,weight=1,n="RightArmRig2JntPointCon")
    pm.setAttr("RightArmIKFKCtrl.IKFK",1)
    pm.setAttr("RightArmRig2JntPointCon.RightArmIK2JntW0",0)
    pm.setAttr("RightArmRig2JntPointCon.RightArmFK2JntW1",1)
    pm.setDrivenKeyframe('RightArmRig2JntPointCon.RightArmIK2JntW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig2JntPointCon.RightArmFK2JntW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setAttr("RightArmIKFKCtrl.IKFK",0)
    pm.setAttr("RightArmRig2JntPointCon.RightArmIK2JntW0",1)
    pm.setAttr("RightArmRig2JntPointCon.RightArmFK2JntW1",0)
    pm.setDrivenKeyframe('RightArmRig2JntPointCon.RightArmIK2JntW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig2JntPointCon.RightArmFK2JntW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="RightElbowIKFKOrientBlend")
    pm.connectAttr('RightArmIKFKCtrl.IKFK','RightElbowIKFKOrientBlend.blender',f=1)
    pm.connectAttr('RightArmFK2Jnt.rotate','RightElbowIKFKOrientBlend.color1',f=1)
    pm.connectAttr('RightArmIK2Jnt.rotate','RightElbowIKFKOrientBlend.color2',f=1)
    pm.connectAttr('RightElbowIKFKOrientBlend.output','RightArmRig2Jnt.rotate',f=1)
    #Wrist
    pm.pointConstraint('RightArmIK3Jnt','RightArmFK3Jnt','RightArmRig3Jnt',mo=1,weight=1,n="RightArmRig3JntPointCon")
    pm.setAttr("RightArmIKFKCtrl.IKFK",1)
    pm.setAttr("RightArmRig3JntPointCon.RightArmIK3JntW0",0)
    pm.setAttr("RightArmRig3JntPointCon.RightArmFK3JntW1",1)
    pm.setDrivenKeyframe('RightArmRig3JntPointCon.RightArmIK3JntW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig3JntPointCon.RightArmFK3JntW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setAttr("RightArmIKFKCtrl.IKFK",0)
    pm.setAttr("RightArmRig3JntPointCon.RightArmIK3JntW0",1)
    pm.setAttr("RightArmRig3JntPointCon.RightArmFK3JntW1",0)
    pm.setDrivenKeyframe('RightArmRig3JntPointCon.RightArmIK3JntW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig3JntPointCon.RightArmFK3JntW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.orientConstraint('RightArmIKCtrlPoint','RightWristFKCtrl','RightArmRig3Jnt',mo=1,weight=1,n="RightArmRig3JntOrientCon")
    pm.setAttr("RightArmIKFKCtrl.IKFK",1)
    pm.setAttr("RightArmRig3JntOrientCon.RightArmIKCtrlPointW0",0)
    pm.setAttr("RightArmRig3JntOrientCon.RightWristFKCtrlW1",1)
    pm.setDrivenKeyframe('RightArmRig3JntOrientCon.RightArmIKCtrlPointW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig3JntOrientCon.RightWristFKCtrlW1',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setAttr("RightArmIKFKCtrl.IKFK",0)
    pm.setAttr("RightArmRig3JntOrientCon.RightArmIKCtrlPointW0",1)
    pm.setAttr("RightArmRig3JntOrientCon.RightWristFKCtrlW1",0)
    pm.setDrivenKeyframe('RightArmRig3JntOrientCon.RightArmIKCtrlPointW0',currentDriver='RightArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightArmRig3JntOrientCon.RightWristFKCtrlW1',currentDriver='RightArmIKFKCtrl.IKFK')
    #///////////////////////////
    #ctrls Vis
    #///////////////////////////
    pm.createNode('blendTwoAttr',n="RightArmFKCtrlsVisBlend")
    pm.createNode('blendTwoAttr',n="RightArmIKCtrlsVisBlend")
    pm.setAttr("RightArmFKCtrlsVisBlend.input[0]",1)
    pm.setAttr("RightArmIKCtrlsVisBlend.input[0]",1)
    pm.connectAttr('RightArmIKFKCtrl.AutoHideIKFK','RightArmFKCtrlsVisBlend.attributesBlender',f=1)
    pm.connectAttr('RightArmIKFKCtrl.AutoHideIKFK','RightArmIKCtrlsVisBlend.attributesBlender',f=1)
    pm.setDrivenKeyframe('RightArmFKCtrlsVisBlend',currentDriver="RightArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=0)
    pm.setDrivenKeyframe('RightArmFKCtrlsVisBlend',currentDriver="RightArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.1)
    pm.setDrivenKeyframe('RightArmIKCtrlsVisBlend',currentDriver="RightArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.9)
    pm.setDrivenKeyframe('RightArmIKCtrlsVisBlend',currentDriver="RightArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=1)
    pm.connectAttr('RightArmFKCtrlsVisBlend.output','RightShoulderFKCtrlGrp.visibility',f=1)
    pm.connectAttr('RightArmFKCtrlsVisBlend.output','RightElbowFKCtrlGrp.visibility',f=1)
    pm.connectAttr('RightArmFKCtrlsVisBlend.output','RightWristFKCtrlGrp.visibility',f=1)
    pm.connectAttr('RightArmIKCtrlsVisBlend.output','RightArmIKCtrlGrp.visibility',f=1)
    #///////////////////////////
    #
    #///////////////////////////
    pm.parent('RightArmRig1Jnt','RightArmRigJntGrp')
    pm.parent('RightShoulderTwistFixGrp','RightArmRigJntGrp')
    pm.parent('RightArmIKFKCtrlBaseGrp','RightArmRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightArmRigSysGrp',ln="IKFKCtrlRadius",at='double')
    pm.setAttr('RightArmRigSysGrp.IKFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="IKFKCtrlPostion",at='double')
    pm.setAttr('RightArmRigSysGrp.IKFKCtrlPostion',e=1,channelBox=True)
    pm.addAttr('RightArmRigSysGrp',ln="TwistLockWeight",at='double')
    pm.setAttr('RightArmRigSysGrp.TwistLockWeight',e=1,channelBox=True)
    pm.setAttr("RightArmRigSysGrp.TwistLockWeight",0.5)
    pm.connectAttr('RightArmRigSysGrp.IKFKCtrlRadius','RightArmIKFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightArmRigSysGrp.IKFKCtrlRadius','RightArmIKFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightArmRigSysGrp.IKFKCtrlRadius','RightArmIKFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightArmRigSysGrp.IKFKCtrlPostion','RightArmIKFKCtrlBase.translateY',f=1)
    pm.connectAttr('RightArmRigSysGrp.TwistLockWeight','RightWristTwistFixAimPointOrientCon.RightWristTwistFixAimW0',f=1)
    #///////////////////////////
    # 
    #///////////////////////////
    pm.setAttr("RightArmRigSysGrp.IKFKCtrlRadius",0.1)
    pm.setAttr("RightArmRigSysGrp.IKFKCtrlPostion",0.4)
    


