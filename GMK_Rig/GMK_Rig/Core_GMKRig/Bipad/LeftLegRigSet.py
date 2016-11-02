import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftLegRigSet():
    #/////////////////////////
    #Rig Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftHipJnt", "LeftLegRig1Jnt")
    Utils.KGM_DuplicateJnt("LeftKneeJnt", "LeftLegRig2Jnt")
    Utils.KGM_DuplicateJnt("LeftAnkleJnt", "LeftLegRig3Jnt")
    pm.parent('LeftLegRig3Jnt','LeftLegRig2Jnt')
    pm.parent('LeftLegRig2Jnt','LeftLegRig1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(-0.332739, 0.998218, 0), (-0.332739, 0.332739, 0), (-0.998218, 0.332739, 0), (-0.998218, -0.332739, 0), (-0.332739, -0.332739, 0), (-0.332739, -0.998218, 0), (0.332739, -0.998218, 0), (0.332739, -0.332739, 0), (0.998218, -0.332739, 0), (0.998218, 0.332739, 0), (0.332739, 0.332739, 0), (0.332739, 0.998218, 0), (-0.332739, 0.998218, 0)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],d=1)
    pm.rename("curve1","LeftLegIKFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftLegIKFKCtrl")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftLegIKFKCtrlGrp", "p")
    pm.addAttr('LeftLegIKFKCtrl',ln="IKFK",max=1,dv=0,at='double',min=0)
    pm.setAttr('LeftLegIKFKCtrl.IKFK',e=1,keyable=True)
    pm.addAttr('LeftLegIKFKCtrl',ln="Arc",max=10,dv=0,at='double',min=0)
    pm.setAttr('LeftLegIKFKCtrl.Arc',e=1,keyable=True)
    pm.addAttr('LeftLegIKFKCtrl',ln="TwistFix",at='double')
    pm.setAttr('LeftLegIKFKCtrl.TwistFix',e=1,keyable=True)
    pm.addAttr('LeftLegIKFKCtrl',ln="AutoHideIKFK",at='bool')
    pm.setAttr('LeftLegIKFKCtrl.AutoHideIKFK',e=1,channelBox=True)
    pm.setAttr("LeftLegIKFKCtrl.AutoHideIKFK",1)
    pm.parentConstraint('LeftAnkleJnt','LeftLegIKFKCtrlGrp',mo=1,weight=1,n="LeftLegIKFKCtrlGrpParentCon")
    pm.group(em=1,n="LeftKneeTwistFixPointKnee")
    pm.group(em=1,n="LeftAnkleTwistFixPointAnkle")
    Utils.KGM_Aline("LeftLegRig2Jnt", "LeftKneeTwistFixPointKnee", "a")
    Utils.KGM_Aline("LeftLegRig3Jnt", "LeftAnkleTwistFixPointAnkle", "a")
    pm.parent('LeftKneeTwistFixPointKnee','LeftLegRig2Jnt')
    pm.parent('LeftAnkleTwistFixPointAnkle','LeftLegRig3Jnt')
    pm.setAttr("LeftKneeTwistFixPointKnee.translateX",1)
    pm.setAttr("LeftAnkleTwistFixPointAnkle.translateX",1)
    pm.group(em=1,n="LeftHipTwistFixGrp")
    pm.group(em=1,n="LeftHipTwistFixAim")
    pm.group(em=1,n="LeftHipTwistFix")
    pm.group(em=1,n="LeftHipTwistFixAimUp")
    pm.group(em=1,n="LeftHipTwistFixAimPoint")
    Utils.KGM_Aline("LeftLegRig1Jnt", "LeftHipTwistFixGrp", "p")
    Utils.KGM_Aline("LeftLegRig1Jnt", "LeftHipTwistFixAim", "a")
    pm.parent('LeftHipTwistFixAim','LeftHipJnt')
    pm.setAttr("LeftHipTwistFixAim.rotateZ",90)
    pm.parent('LeftHipTwistFixAim',w=1)
    Utils.KGM_Aline("LeftLegRig1Jnt", "LeftHipTwistFix", "a")
    Utils.KGM_Aline("LeftLegRig1Jnt", "LeftHipTwistFixAimUp", "p")
    Utils.KGM_Aline("LeftLegRig2Jnt ", "LeftHipTwistFixAimPoint", "p")
    pm.parent('LeftHipTwistFix','LeftHipTwistFixAim')
    pm.parent('LeftHipTwistFixAim','LeftHipTwistFixGrp')
    pm.parent('LeftHipTwistFixAimUp','LeftHipTwistFixGrp')
    pm.parent('LeftHipTwistFixAimPoint','LeftHipTwistFixGrp')
    pm.group(em=1,n="LeftKneeTwistFixGrp")
    pm.group(em=1,n="LeftKneeTwistFixAim")
    pm.group(em=1,n="LeftKneeTwistFix")
    pm.group(em=1,n="LeftKneeTwistFixAimPoint")
    pm.group(em=1,n="LeftKneeTwistFixPointHip")
    Utils.KGM_Aline("LeftLegRig2Jnt", "LeftKneeTwistFixGrp", "a")
    Utils.KGM_Aline("LeftLegRig2Jnt", "LeftKneeTwistFixAim", "a")
    Utils.KGM_Aline("LeftLegRig2Jnt ", "LeftKneeTwistFix", "a")
    Utils.KGM_Aline("LeftLegRig2Jnt", "LeftKneeTwistFixAimPoint", "a")
    Utils.KGM_Aline("LeftLegRig2Jnt", "LeftKneeTwistFixPointHip", "a")
    pm.parent('LeftKneeTwistFix','LeftKneeTwistFixAim')
    pm.parent('LeftKneeTwistFixAim','LeftKneeTwistFixGrp')
    pm.parent('LeftKneeTwistFixAimPoint','LeftKneeTwistFixGrp')
    pm.parent('LeftKneeTwistFixPointHip','LeftKneeTwistFixGrp')
    pm.setAttr("LeftKneeTwistFixAimPoint.translateX",1)
    pm.setAttr("LeftKneeTwistFixPointHip.translateX",1)
    pm.group(em=1,n="LeftAnkleTwistFixGrp")
    pm.group(em=1,n="LeftAnkleTwistFixAim")
    pm.group(em=1,n="LeftAnkleTwistFixUp")
    pm.group(em=1,n="LeftAnkleTwistFix")
    pm.group(em=1,n="LeftAnkleTwistFixAimPoint")
    pm.group(em=1,n="LeftAnkleTwistFixPointKnee")
    Utils.KGM_Aline("LeftLegRig3Jnt", "LeftAnkleTwistFixGrp", "a")
    Utils.KGM_Aline("LeftLegRig3Jnt", "LeftAnkleTwistFixAim", "a")
    Utils.KGM_Aline("LeftLegRig3Jnt ", "LeftAnkleTwistFixUp", "a")
    Utils.KGM_Aline("LeftLegRig3Jnt", "LeftAnkleTwistFix", "a")
    Utils.KGM_Aline("LeftLegRig3Jnt", "LeftAnkleTwistFixAimPoint", "a")
    Utils.KGM_Aline("LeftLegRig3Jnt", "LeftAnkleTwistFixPointKnee", "a")
    pm.parent('LeftAnkleTwistFixUp','LeftAnkleTwistFixAim')
    pm.parent('LeftAnkleTwistFix','LeftAnkleTwistFixAim')
    pm.parent('LeftAnkleTwistFixAim','LeftAnkleTwistFixGrp')
    pm.parent('LeftAnkleTwistFixAimPoint','LeftAnkleTwistFixGrp')
    pm.parent('LeftAnkleTwistFixPointKnee','LeftAnkleTwistFixGrp')
    pm.setAttr("LeftAnkleTwistFixAimPoint.translateX",1)
    pm.setAttr("LeftAnkleTwistFixPointKnee.translateX",1)
    pm.parent('LeftKneeTwistFixGrp','LeftLegRig1Jnt')
    pm.parent('LeftAnkleTwistFixGrp','LeftLegRig2Jnt')
    #LeftHipTwistFixGrp
    pm.aimConstraint('LeftHipTwistFixAimPoint','LeftHipTwistFixAim',weight=1,upVector=(1, 0, 0),mo=1,n="LeftHipTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='LeftHipTwistFixAimUp',
        aimVector=(0, -1, 0),
        worldUpVector=(1, 0, 0))
    pm.pointConstraint('LeftLegRig2Jnt','LeftHipTwistFixAimPoint',mo=1,weight=1,n="LeftHipTwistFixAimPointCon")
    pm.createNode('vectorProduct',n="LeftHipTwistFixPD")
    pm.setAttr("LeftHipTwistFixPD.input1X",1)
    pm.setAttr("LeftHipTwistFixPD.normalizeOutput",1)
    pm.connectAttr('LeftHipTwistFixAimPoint.translate','LeftHipTwistFixPD.input2',f=1)
    pm.setDrivenKeyframe('LeftHipTwistFixAimUp',currentDriver="LeftHipTwistFixPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('LeftHipTwistFixAimUp',currentDriver="LeftHipTwistFixPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    #LeftKneeTwistFixGrp
    pm.pointConstraint('LeftLegRig2Jnt','LeftKneeTwistFixGrp',mo=1,weight=1,n="LeftKneeTwistFixGrpPointCon")
    pm.aimConstraint('LeftKneeTwistFixAimPoint','LeftKneeTwistFixAim',weight=1,upVector=(0, 1, 0),mo=1,n="LeftKneeTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='LeftKneeTwistFixPointKnee',
        aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.connectAttr('LeftLegIKFKCtrl.TwistFix','LeftKneeTwistFix.rotateX',f=1)
    pm.pointConstraint('LeftKneeTwistFixPointHip','LeftKneeTwistFixPointKnee','LeftKneeTwistFixAimPoint',mo=1,weight=1,n="LeftKneeTwistFixAimPointPointCon")
    #LeftAnkleTwistFixGrp
    pm.pointConstraint('LeftLegRig3Jnt','LeftAnkleTwistFixGrp',mo=1,weight=1,n="LeftAnkleTwistFixGrpPointCon")
    pm.aimConstraint('LeftAnkleTwistFixAimPoint','LeftAnkleTwistFixAim',weight=1,upVector=(0, 1, 0),mo=1,n="LeftAnkleTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='LeftAnkleTwistFixGrp',
        aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.aimConstraint('LeftAnkleTwistFixAimPoint','LeftAnkleTwistFixUp',weight=1,upVector=(0, 1, 0),mo=1,n="LeftAnkleTwistFixUpAimCon",worldUpType="objectrotation",
        worldUpObject='LeftAnkleTwistFixPointAnkle',
        aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.orientConstraint('LeftAnkleTwistFixAim','LeftAnkleTwistFixUp','LeftAnkleTwistFix',mo=1,weight=1,n="LeftAnkleTwistFixAimPointOrientCon")
    pm.setAttr("LeftAnkleTwistFixAimPointOrientCon.LeftAnkleTwistFixAimW0",0.5)
    pm.pointConstraint('LeftAnkleTwistFixPointKnee','LeftAnkleTwistFixPointAnkle','LeftAnkleTwistFixAimPoint',mo=1,weight=1,n="LeftAnkleTwistFixAimPointPointCon")
    #IKFK set
    #hip
    pm.pointConstraint('LeftLegIK1Jnt','LeftLegFK1Jnt','LeftLegRig1Jnt',mo=1,weight=1,n="LeftLegRig1JntPointCon")
    pm.setAttr("LeftLegIKFKCtrl.IKFK",1)
    pm.setAttr("LeftLegRig1JntPointCon.LeftLegIK1JntW0",0)
    pm.setAttr("LeftLegRig1JntPointCon.LeftLegFK1JntW1",1)
    pm.setDrivenKeyframe('LeftLegRig1JntPointCon.LeftLegIK1JntW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig1JntPointCon.LeftLegFK1JntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setAttr("LeftLegIKFKCtrl.IKFK",0)
    pm.setAttr("LeftLegRig1JntPointCon.LeftLegIK1JntW0",1)
    pm.setAttr("LeftLegRig1JntPointCon.LeftLegFK1JntW1",0)
    pm.setDrivenKeyframe('LeftLegRig1JntPointCon.LeftLegIK1JntW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig1JntPointCon.LeftLegFK1JntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="LeftHipIKFKOrientBlend")
    pm.connectAttr('LeftLegIKFKCtrl.IKFK','LeftHipIKFKOrientBlend.blender',f=1)
    pm.connectAttr('LeftLegFK1Jnt.rotate','LeftHipIKFKOrientBlend.color1',f=1)
    pm.connectAttr('LeftLegIK1Jnt.rotate','LeftHipIKFKOrientBlend.color2',f=1)
    pm.connectAttr('LeftHipIKFKOrientBlend.output','LeftLegRig1Jnt.rotate',f=1)
    #knee
    pm.pointConstraint('LeftLegIK2Jnt','LeftLegFK2Jnt','LeftLegRig2Jnt',mo=1,weight=1,n="LeftLegRig2JntPointCon")
    pm.setAttr("LeftLegIKFKCtrl.IKFK",1)
    pm.setAttr("LeftLegRig2JntPointCon.LeftLegIK2JntW0",0)
    pm.setAttr("LeftLegRig2JntPointCon.LeftLegFK2JntW1",1)
    pm.setDrivenKeyframe('LeftLegRig2JntPointCon.LeftLegIK2JntW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig2JntPointCon.LeftLegFK2JntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setAttr("LeftLegIKFKCtrl.IKFK",0)
    pm.setAttr("LeftLegRig2JntPointCon.LeftLegIK2JntW0",1)
    pm.setAttr("LeftLegRig2JntPointCon.LeftLegFK2JntW1",0)
    pm.setDrivenKeyframe('LeftLegRig2JntPointCon.LeftLegIK2JntW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig2JntPointCon.LeftLegFK2JntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="LeftKneeIKFKOrientBlend")
    pm.connectAttr('LeftLegIKFKCtrl.IKFK','LeftKneeIKFKOrientBlend.blender',f=1)
    pm.connectAttr('LeftLegFK2Jnt.rotate','LeftKneeIKFKOrientBlend.color1',f=1)
    pm.connectAttr('LeftLegIK2Jnt.rotate','LeftKneeIKFKOrientBlend.color2',f=1)
    pm.connectAttr('LeftKneeIKFKOrientBlend.output','LeftLegRig2Jnt.rotate',f=1)
    #ankle
    pm.pointConstraint('LeftLegIK3Jnt','LeftLegFK3Jnt','LeftLegRig3Jnt',mo=1,weight=1,n="LeftLegRig3JntPointCon")
    pm.setAttr("LeftLegIKFKCtrl.IKFK",1)
    pm.setAttr("LeftLegRig3JntPointCon.LeftLegIK3JntW0",0)
    pm.setAttr("LeftLegRig3JntPointCon.LeftLegFK3JntW1",1)
    pm.setDrivenKeyframe('LeftLegRig3JntPointCon.LeftLegIK3JntW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig3JntPointCon.LeftLegFK3JntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setAttr("LeftLegIKFKCtrl.IKFK",0)
    pm.setAttr("LeftLegRig3JntPointCon.LeftLegIK3JntW0",1)
    pm.setAttr("LeftLegRig3JntPointCon.LeftLegFK3JntW1",0)
    pm.setDrivenKeyframe('LeftLegRig3JntPointCon.LeftLegIK3JntW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig3JntPointCon.LeftLegFK3JntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.orientConstraint('LeftLegIKCtrlPoint','LeftAnkleFKCtrl','LeftLegRig3Jnt',offset=(0, 0, 0),weight=1,n="LeftLegRig3JntOrientCon")
    pm.setAttr("LeftLegIKFKCtrl.IKFK",1)
    pm.setAttr("LeftLegRig3JntOrientCon.LeftLegIKCtrlPointW0",0)
    pm.setAttr("LeftLegRig3JntOrientCon.LeftAnkleFKCtrlW1",1)
    pm.setDrivenKeyframe('LeftLegRig3JntOrientCon.LeftLegIKCtrlPointW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig3JntOrientCon.LeftAnkleFKCtrlW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setAttr("LeftLegIKFKCtrl.IKFK",0)
    pm.setAttr("LeftLegRig3JntOrientCon.LeftLegIKCtrlPointW0",1)
    pm.setAttr("LeftLegRig3JntOrientCon.LeftAnkleFKCtrlW1",0)
    pm.setDrivenKeyframe('LeftLegRig3JntOrientCon.LeftLegIKCtrlPointW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegRig3JntOrientCon.LeftAnkleFKCtrlW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    #///////////////////////////
    #ctrls Vis
    #///////////////////////////
    pm.createNode('blendTwoAttr',n="LeftLegFKCtrlsVisBlend")
    pm.createNode('blendTwoAttr',n="LeftLegIKCtrlsVisBlend")
    pm.setAttr("LeftLegFKCtrlsVisBlend.input[0]",1)
    pm.setAttr("LeftLegIKCtrlsVisBlend.input[0]",1)
    pm.connectAttr('LeftLegIKFKCtrl.AutoHideIKFK','LeftLegFKCtrlsVisBlend.attributesBlender',f=1)
    pm.connectAttr('LeftLegIKFKCtrl.AutoHideIKFK','LeftLegIKCtrlsVisBlend.attributesBlender',f=1)
    pm.setDrivenKeyframe('LeftLegFKCtrlsVisBlend',currentDriver="LeftLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=0)
    pm.setDrivenKeyframe('LeftLegFKCtrlsVisBlend',currentDriver="LeftLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.1)
    pm.setDrivenKeyframe('LeftLegIKCtrlsVisBlend',currentDriver="LeftLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.9)
    pm.setDrivenKeyframe('LeftLegIKCtrlsVisBlend',currentDriver="LeftLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=1)
    pm.connectAttr('LeftLegFKCtrlsVisBlend.output','LeftHipFKCtrlGrp.visibility',f=1)
    pm.connectAttr('LeftLegFKCtrlsVisBlend.output','LeftKneeFKCtrlGrp.visibility',f=1)
    pm.connectAttr('LeftLegFKCtrlsVisBlend.output','LeftAnkleFKCtrlGrp.visibility',f=1)
    pm.connectAttr('LeftLegIKCtrlsVisBlend.output','LeftLegIKCtrlGrp.visibility',f=1)
    #///////////////////////////
    #outline
    #///////////////////////////
    pm.parent('LeftLegRig1Jnt','LeftLegRigJntGrp')
    pm.parent('LeftHipTwistFixGrp','LeftLegRigJntGrp')
    pm.parent('LeftLegIKFKCtrlBaseGrp','LeftLegRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftLegRigSysGrp',ln="IKFKCtrlRadius",at='double')
    pm.setAttr('LeftLegRigSysGrp.IKFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="IKFKCtrlPostionX",at='double')
    pm.setAttr('LeftLegRigSysGrp.IKFKCtrlPostionX',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="IKFKCtrlPostionY",at='double')
    pm.setAttr('LeftLegRigSysGrp.IKFKCtrlPostionY',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="TwistLockWeight",at='double')
    pm.setAttr('LeftLegRigSysGrp.TwistLockWeight',e=1,channelBox=True)
    pm.setAttr("LeftLegRigSysGrp.TwistLockWeight",0.5)
    pm.connectAttr('LeftLegRigSysGrp.IKFKCtrlRadius','LeftLegIKFKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.IKFKCtrlRadius','LeftLegIKFKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.IKFKCtrlRadius','LeftLegIKFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftLegRigSysGrp.IKFKCtrlPostionX','LeftLegIKFKCtrlBase.translateX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.IKFKCtrlPostionY','LeftLegIKFKCtrlBase.translateY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.TwistLockWeight','LeftAnkleTwistFixAimPointOrientCon.LeftAnkleTwistFixAimW0',f=1)
    pm.setAttr("LeftLegRigSysGrp.IKFKCtrlRadius",0.3)
    pm.setAttr("LeftLegRigSysGrp.IKFKCtrlPostionX",0.4)
    #///////////////////////////
    #default
    #///////////////////////////
    pm.setAttr("LeftLegRigSysGrp.IKFKCtrlRadius",0.1)
    pm.setAttr("LeftLegRigSysGrp.IKFKCtrlPostionX",0.4)
    


