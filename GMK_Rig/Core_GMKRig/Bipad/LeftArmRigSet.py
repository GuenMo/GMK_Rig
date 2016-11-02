import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftArmRigSet():
    #/////////////////////////
    #Rig Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftShoulderJnt", "LeftArmRig1Jnt")
    Utils.KGM_DuplicateJnt("LeftElbowJnt", "LeftArmRig2Jnt")
    Utils.KGM_DuplicateJnt("LeftWristJnt", "LeftArmRig3Jnt")
    pm.parent('LeftArmRig3Jnt','LeftArmRig2Jnt')
    pm.parent('LeftArmRig2Jnt','LeftArmRig1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(-0.332739, 0.998218, 0), (-0.332739, 0.332739, 0), (-0.998218, 0.332739, 0), (-0.998218, -0.332739, 0), (-0.332739, -0.332739, 0), (-0.332739, -0.998218, 0), (0.332739, -0.998218, 0), (0.332739, -0.332739, 0), (0.998218, -0.332739, 0), (0.998218, 0.332739, 0), (0.332739, 0.332739, 0), (0.332739, 0.998218, 0), (-0.332739, 0.998218, 0)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],d=1)
    pm.rename("curve1","LeftArmIKFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftArmIKFKCtrl")
    Utils.KGM_Aline("LeftWristJnt", "LeftArmIKFKCtrlGrp", "p")
    pm.addAttr('LeftArmIKFKCtrl',ln="IKFK",max=1,dv=0,at='double',min=0)
    pm.setAttr('LeftArmIKFKCtrl.IKFK',e=1,keyable=True)
    pm.addAttr('LeftArmIKFKCtrl',ln="Arc",max=10,dv=0,at='double',min=0)
    pm.setAttr('LeftArmIKFKCtrl.Arc',e=1,keyable=True)
    pm.addAttr('LeftArmIKFKCtrl',ln="TwistFix",at='double')
    pm.setAttr('LeftArmIKFKCtrl.TwistFix',e=1,keyable=True)
    pm.addAttr('LeftArmIKFKCtrl',ln="AutoHideIKFK",at='bool')
    pm.setAttr('LeftArmIKFKCtrl.AutoHideIKFK',e=1,channelBox=True)
    pm.setAttr("LeftArmIKFKCtrl.AutoHideIKFK",1)
    pm.parentConstraint('LeftWristJnt','LeftArmIKFKCtrlGrp',mo=1,weight=1,n="LeftArmIKFKCtrlGrpParentCon")
    pm.group(em=1,n="LeftElbowTwistFixPointElbow")
    pm.group(em=1,n="LeftWristTwistFixPointWrist")
    Utils.KGM_Aline("LeftArmRig2Jnt", "LeftElbowTwistFixPointElbow", "a")
    Utils.KGM_Aline("LeftArmRig3Jnt", "LeftWristTwistFixPointWrist", "a")
    pm.parent('LeftElbowTwistFixPointElbow','LeftArmRig2Jnt')
    pm.parent('LeftWristTwistFixPointWrist','LeftArmRig3Jnt')
    pm.setAttr("LeftElbowTwistFixPointElbow.translateX",1)
    pm.setAttr("LeftWristTwistFixPointWrist.translateX",1)
    pm.group(em=1,n="LeftShoulderTwistFixGrp")
    pm.group(em=1,n="LeftShoulderTwistFixAim")
    pm.group(em=1,n="LeftShoulderTwistFix")
    pm.group(em=1,n="LeftShoulderTwistFixAimUp")
    pm.group(em=1,n="LeftShoulderTwistFixAimPoint")
    Utils.KGM_Aline("LeftArmRig1Jnt", "LeftShoulderTwistFixGrp", "a")
    Utils.KGM_Aline("LeftArmRig1Jnt", "LeftShoulderTwistFixAim", "a")
    Utils.KGM_Aline("LeftArmRig1Jnt", "LeftShoulderTwistFix", "a")
    Utils.KGM_Aline("LeftArmRig1Jnt", "LeftShoulderTwistFixAimUp", "a")
    Utils.KGM_Aline("LeftArmRig2Jnt ", "LeftShoulderTwistFixAimPoint", "a")
    pm.parent('LeftShoulderTwistFix','LeftShoulderTwistFixAim')
    pm.parent('LeftShoulderTwistFixAim','LeftShoulderTwistFixGrp')
    pm.parent('LeftShoulderTwistFixAimUp','LeftShoulderTwistFixGrp')
    pm.parent('LeftShoulderTwistFixAimPoint','LeftShoulderTwistFixGrp')
    pm.group(em=1,n="LeftElbowTwistFixGrp")
    pm.group(em=1,n="LeftElbowTwistFixAim")
    pm.group(em=1,n="LeftElbowTwistFix")
    pm.group(em=1,n="LeftElbowTwistFixAimPoint")
    pm.group(em=1,n="LeftElbowTwistFixPointShoulder")
    Utils.KGM_Aline("LeftArmRig2Jnt", "LeftElbowTwistFixGrp", "a")
    Utils.KGM_Aline("LeftArmRig2Jnt", "LeftElbowTwistFixAim", "a")
    Utils.KGM_Aline("LeftArmRig2Jnt ", "LeftElbowTwistFix", "a")
    Utils.KGM_Aline("LeftArmRig2Jnt", "LeftElbowTwistFixAimPoint", "a")
    Utils.KGM_Aline("LeftArmRig2Jnt", "LeftElbowTwistFixPointShoulder", "a")
    pm.parent('LeftElbowTwistFix','LeftElbowTwistFixAim')
    pm.parent('LeftElbowTwistFixAim','LeftElbowTwistFixGrp')
    pm.parent('LeftElbowTwistFixAimPoint','LeftElbowTwistFixGrp')
    pm.parent('LeftElbowTwistFixPointShoulder','LeftElbowTwistFixGrp')
    pm.setAttr("LeftElbowTwistFixAimPoint.translateX",1)
    pm.setAttr("LeftElbowTwistFixPointShoulder.translateX",1)
    pm.group(em=1,n="LeftWristTwistFixGrp")
    pm.group(em=1,n="LeftWristTwistFixAim")
    pm.group(em=1,n="LeftWristTwistFixUp")
    pm.group(em=1,n="LeftWristTwistFix")
    pm.group(em=1,n="LeftWristTwistFixAimPoint")
    pm.group(em=1,n="LeftWristTwistFixPointElbow")
    Utils.KGM_Aline("LeftArmRig3Jnt", "LeftWristTwistFixGrp", "a")
    Utils.KGM_Aline("LeftArmRig3Jnt", "LeftWristTwistFixAim", "a")
    Utils.KGM_Aline("LeftArmRig3Jnt ", "LeftWristTwistFixUp", "a")
    Utils.KGM_Aline("LeftArmRig3Jnt", "LeftWristTwistFix", "a")
    Utils.KGM_Aline("LeftArmRig3Jnt", "LeftWristTwistFixAimPoint", "a")
    Utils.KGM_Aline("LeftArmRig3Jnt", "LeftWristTwistFixPointElbow", "a")
    pm.parent('LeftWristTwistFixUp','LeftWristTwistFixAim')
    pm.parent('LeftWristTwistFix','LeftWristTwistFixAim')
    pm.parent('LeftWristTwistFixAim','LeftWristTwistFixGrp')
    pm.parent('LeftWristTwistFixAimPoint','LeftWristTwistFixGrp')
    pm.parent('LeftWristTwistFixPointElbow','LeftWristTwistFixGrp')
    pm.setAttr("LeftWristTwistFixAimPoint.translateX",1)
    pm.setAttr("LeftWristTwistFixPointElbow.translateX",1)
    pm.parent('LeftElbowTwistFixGrp','LeftArmRig1Jnt')
    pm.parent('LeftWristTwistFixGrp','LeftArmRig2Jnt')
    #LeftShoulderTwistFixGrp
    pm.aimConstraint('LeftShoulderTwistFixAimPoint','LeftShoulderTwistFixAim',weight=1,upVector=(0, 1, 0),n="LeftShoulderTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='LeftShoulderTwistFixAimUp',
        offset=(0, 0, 0),aimVector=(1, 0, 0),
        worldUpVector=(0, 1, 0))
    pm.pointConstraint('LeftArmRig2Jnt','LeftShoulderTwistFixAimPoint',mo=1,weight=1,n="LeftShoulderTwistFixAimPointCon")
    pm.createNode('vectorProduct',n="LeftShoulderTwistFixPD")
    pm.setAttr("LeftShoulderTwistFixPD.input1Y",1)
    pm.setAttr("LeftShoulderTwistFixPD.normalizeOutput",1)
    pm.connectAttr('LeftShoulderTwistFixAimPoint.translate','LeftShoulderTwistFixPD.input2',f=1)
    pm.setDrivenKeyframe('LeftShoulderTwistFixAimUp',currentDriver="LeftShoulderTwistFixPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('LeftShoulderTwistFixAimUp',currentDriver="LeftShoulderTwistFixPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    #LeftElbowTwistFixGrp
    pm.pointConstraint('LeftArmRig2Jnt','LeftElbowTwistFixGrp',mo=1,weight=1,n="LeftElbowTwistFixGrpPointCon")
    pm.aimConstraint('LeftElbowTwistFixAimPoint','LeftElbowTwistFixAim',weight=1,upVector=(0, 1, 0),n="LeftElbowTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='LeftElbowTwistFixPointElbow',
        offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.connectAttr('LeftArmIKFKCtrl.TwistFix','LeftElbowTwistFix.rotateX',f=1)
    pm.pointConstraint('LeftElbowTwistFixPointShoulder','LeftElbowTwistFixPointElbow','LeftElbowTwistFixAimPoint',mo=1,weight=1,n="LeftElbowTwistFixAimPointPointCon")
    #LeftWristTwistFixGrp
    pm.pointConstraint('LeftArmRig3Jnt','LeftWristTwistFixGrp',mo=1,weight=1,n="LeftWristTwistFixGrpPointCon")
    pm.aimConstraint('LeftWristTwistFixAimPoint','LeftWristTwistFixAim',weight=1,upVector=(0, 1, 0),n="LeftWristTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='LeftWristTwistFixGrp',
        offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.aimConstraint('LeftWristTwistFixAimPoint','LeftWristTwistFixUp',weight=1,upVector=(0, 1, 0),n="LeftWristTwistFixUpAimCon",worldUpType="objectrotation",
        worldUpObject='LeftWristTwistFixPointWrist',
        offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.orientConstraint('LeftWristTwistFixAim','LeftWristTwistFixUp','LeftWristTwistFix',mo=1,weight=1,n="LeftWristTwistFixAimPointOrientCon")
    pm.setAttr("LeftWristTwistFixAimPointOrientCon.LeftWristTwistFixAimW0",0.5)
    pm.pointConstraint('LeftWristTwistFixPointElbow','LeftWristTwistFixPointWrist','LeftWristTwistFixAimPoint',mo=1,weight=1,n="LeftWristTwistFixAimPointPointCon")
    #Shoulder
    pm.pointConstraint('LeftArmIK1Jnt','LeftArmFK1Jnt','LeftArmRig1Jnt',mo=1,weight=1,n="LeftArmRig1JntPointCon")
    pm.setAttr("LeftArmIKFKCtrl.IKFK",1)
    pm.setAttr("LeftArmRig1JntPointCon.LeftArmIK1JntW0",0)
    pm.setAttr("LeftArmRig1JntPointCon.LeftArmFK1JntW1",1)
    pm.setDrivenKeyframe('LeftArmRig1JntPointCon.LeftArmIK1JntW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig1JntPointCon.LeftArmFK1JntW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setAttr("LeftArmIKFKCtrl.IKFK",0)
    pm.setAttr("LeftArmRig1JntPointCon.LeftArmIK1JntW0",1)
    pm.setAttr("LeftArmRig1JntPointCon.LeftArmFK1JntW1",0)
    pm.setDrivenKeyframe('LeftArmRig1JntPointCon.LeftArmIK1JntW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig1JntPointCon.LeftArmFK1JntW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="LeftShoulderIKFKOrientBlend")
    pm.connectAttr('LeftArmIKFKCtrl.IKFK','LeftShoulderIKFKOrientBlend.blender',f=1)
    pm.connectAttr('LeftArmFK1Jnt.rotate','LeftShoulderIKFKOrientBlend.color1',f=1)
    pm.connectAttr('LeftArmIK1Jnt.rotate','LeftShoulderIKFKOrientBlend.color2',f=1)
    pm.connectAttr('LeftShoulderIKFKOrientBlend.output','LeftArmRig1Jnt.rotate',f=1)
    #Elbow
    pm.pointConstraint('LeftArmIK2Jnt','LeftArmFK2Jnt','LeftArmRig2Jnt',mo=1,weight=1,n="LeftArmRig2JntPointCon")
    pm.setAttr("LeftArmIKFKCtrl.IKFK",1)
    pm.setAttr("LeftArmRig2JntPointCon.LeftArmIK2JntW0",0)
    pm.setAttr("LeftArmRig2JntPointCon.LeftArmFK2JntW1",1)
    pm.setDrivenKeyframe('LeftArmRig2JntPointCon.LeftArmIK2JntW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig2JntPointCon.LeftArmFK2JntW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setAttr("LeftArmIKFKCtrl.IKFK",0)
    pm.setAttr("LeftArmRig2JntPointCon.LeftArmIK2JntW0",1)
    pm.setAttr("LeftArmRig2JntPointCon.LeftArmFK2JntW1",0)
    pm.setDrivenKeyframe('LeftArmRig2JntPointCon.LeftArmIK2JntW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig2JntPointCon.LeftArmFK2JntW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="LeftElbowIKFKOrientBlend")
    pm.connectAttr('LeftArmIKFKCtrl.IKFK','LeftElbowIKFKOrientBlend.blender',f=1)
    pm.connectAttr('LeftArmFK2Jnt.rotate','LeftElbowIKFKOrientBlend.color1',f=1)
    pm.connectAttr('LeftArmIK2Jnt.rotate','LeftElbowIKFKOrientBlend.color2',f=1)
    pm.connectAttr('LeftElbowIKFKOrientBlend.output','LeftArmRig2Jnt.rotate',f=1)
    #Wrist
    pm.pointConstraint('LeftArmIK3Jnt','LeftArmFK3Jnt','LeftArmRig3Jnt',mo=1,weight=1,n="LeftArmRig3JntPointCon")
    pm.setAttr("LeftArmIKFKCtrl.IKFK",1)
    pm.setAttr("LeftArmRig3JntPointCon.LeftArmIK3JntW0",0)
    pm.setAttr("LeftArmRig3JntPointCon.LeftArmFK3JntW1",1)
    pm.setDrivenKeyframe('LeftArmRig3JntPointCon.LeftArmIK3JntW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig3JntPointCon.LeftArmFK3JntW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setAttr("LeftArmIKFKCtrl.IKFK",0)
    pm.setAttr("LeftArmRig3JntPointCon.LeftArmIK3JntW0",1)
    pm.setAttr("LeftArmRig3JntPointCon.LeftArmFK3JntW1",0)
    pm.setDrivenKeyframe('LeftArmRig3JntPointCon.LeftArmIK3JntW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig3JntPointCon.LeftArmFK3JntW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.orientConstraint('LeftArmIKCtrlPoint','LeftWristFKCtrl','LeftArmRig3Jnt',mo=1,weight=1,n="LeftArmRig3JntOrientCon")
    pm.setAttr("LeftArmIKFKCtrl.IKFK",1)
    pm.setAttr("LeftArmRig3JntOrientCon.LeftArmIKCtrlPointW0",0)
    pm.setAttr("LeftArmRig3JntOrientCon.LeftWristFKCtrlW1",1)
    pm.setDrivenKeyframe('LeftArmRig3JntOrientCon.LeftArmIKCtrlPointW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig3JntOrientCon.LeftWristFKCtrlW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setAttr("LeftArmIKFKCtrl.IKFK",0)
    pm.setAttr("LeftArmRig3JntOrientCon.LeftArmIKCtrlPointW0",1)
    pm.setAttr("LeftArmRig3JntOrientCon.LeftWristFKCtrlW1",0)
    pm.setDrivenKeyframe('LeftArmRig3JntOrientCon.LeftArmIKCtrlPointW0',currentDriver='LeftArmIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftArmRig3JntOrientCon.LeftWristFKCtrlW1',currentDriver='LeftArmIKFKCtrl.IKFK')
    #///////////////////////////
    #ctrls Vis
    #///////////////////////////
    pm.createNode('blendTwoAttr',n="LeftArmFKCtrlsVisBlend")
    pm.createNode('blendTwoAttr',n="LeftArmIKCtrlsVisBlend")
    pm.setAttr("LeftArmFKCtrlsVisBlend.input[0]",1)
    pm.setAttr("LeftArmIKCtrlsVisBlend.input[0]",1)
    pm.connectAttr('LeftArmIKFKCtrl.AutoHideIKFK','LeftArmFKCtrlsVisBlend.attributesBlender',f=1)
    pm.connectAttr('LeftArmIKFKCtrl.AutoHideIKFK','LeftArmIKCtrlsVisBlend.attributesBlender',f=1)
    pm.setDrivenKeyframe('LeftArmFKCtrlsVisBlend',currentDriver="LeftArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=0)
    pm.setDrivenKeyframe('LeftArmFKCtrlsVisBlend',currentDriver="LeftArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.1)
    pm.setDrivenKeyframe('LeftArmIKCtrlsVisBlend',currentDriver="LeftArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.9)
    pm.setDrivenKeyframe('LeftArmIKCtrlsVisBlend',currentDriver="LeftArmIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=1)
    pm.connectAttr('LeftArmFKCtrlsVisBlend.output','LeftShoulderFKCtrlGrp.visibility',f=1)
    pm.connectAttr('LeftArmFKCtrlsVisBlend.output','LeftElbowFKCtrlGrp.visibility',f=1)
    pm.connectAttr('LeftArmFKCtrlsVisBlend.output','LeftWristFKCtrlGrp.visibility',f=1)
    pm.connectAttr('LeftArmIKCtrlsVisBlend.output','LeftArmIKCtrlGrp.visibility',f=1)
    #///////////////////////////
    #
    #///////////////////////////
    pm.parent('LeftArmRig1Jnt','LeftArmRigJntGrp')
    pm.parent('LeftShoulderTwistFixGrp','LeftArmRigJntGrp')
    pm.parent('LeftArmIKFKCtrlBaseGrp','LeftArmRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftArmRigSysGrp',ln="IKFKCtrlRadius",at='double')
    pm.setAttr('LeftArmRigSysGrp.IKFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="IKFKCtrlPostion",at='double')
    pm.setAttr('LeftArmRigSysGrp.IKFKCtrlPostion',e=1,channelBox=True)
    pm.addAttr('LeftArmRigSysGrp',ln="TwistLockWeight",at='double')
    pm.setAttr('LeftArmRigSysGrp.TwistLockWeight',e=1,channelBox=True)
    pm.setAttr("LeftArmRigSysGrp.TwistLockWeight",0.5)
    pm.connectAttr('LeftArmRigSysGrp.IKFKCtrlRadius','LeftArmIKFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.IKFKCtrlRadius','LeftArmIKFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.IKFKCtrlRadius','LeftArmIKFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftArmRigSysGrp.IKFKCtrlPostion','LeftArmIKFKCtrlBase.translateY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.TwistLockWeight','LeftWristTwistFixAimPointOrientCon.LeftWristTwistFixAimW0',f=1)
    #///////////////////////////
    #
    #///////////////////////////
    pm.setAttr("LeftArmRigSysGrp.IKFKCtrlRadius",0.1)
    pm.setAttr("LeftArmRigSysGrp.IKFKCtrlPostion",0.4)
    


