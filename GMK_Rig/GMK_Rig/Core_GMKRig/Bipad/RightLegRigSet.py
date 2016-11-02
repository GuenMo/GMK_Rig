import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightLegRigSet():
    #/////////////////////////
    #Rig Joint  
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightHipJnt", "RightLegRig1Jnt")
    Utils.KGM_DuplicateJnt("RightKneeJnt", "RightLegRig2Jnt")
    Utils.KGM_DuplicateJnt("RightAnkleJnt", "RightLegRig3Jnt")
    pm.parent('RightLegRig3Jnt','RightLegRig2Jnt')
    pm.parent('RightLegRig2Jnt','RightLegRig1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(-0.332739, 0.998218, 0), (-0.332739, 0.332739, 0), (-0.998218, 0.332739, 0), (-0.998218, -0.332739, 0), (-0.332739, -0.332739, 0), (-0.332739, -0.998218, 0), (0.332739, -0.998218, 0), (0.332739, -0.332739, 0), (0.998218, -0.332739, 0), (0.998218, 0.332739, 0), (0.332739, 0.332739, 0), (0.332739, 0.998218, 0), (-0.332739, 0.998218, 0)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],d=1)
    pm.rename("curve1","RightLegIKFKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightLegIKFKCtrl")
    Utils.KGM_Aline("RightAnkleJnt", "RightLegIKFKCtrlGrp", "p")
    pm.addAttr('RightLegIKFKCtrl',ln="IKFK",max=1,dv=0,at='double',min=0)
    pm.setAttr('RightLegIKFKCtrl.IKFK',e=1,keyable=True)
    pm.addAttr('RightLegIKFKCtrl',ln="Arc",max=10,dv=0,at='double',min=0)
    pm.setAttr('RightLegIKFKCtrl.Arc',e=1,keyable=True)
    pm.addAttr('RightLegIKFKCtrl',ln="TwistFix",at='double')
    pm.setAttr('RightLegIKFKCtrl.TwistFix',e=1,keyable=True)
    pm.addAttr('RightLegIKFKCtrl',ln="AutoHideIKFK",at='bool')
    pm.setAttr('RightLegIKFKCtrl.AutoHideIKFK',e=1,channelBox=True)
    pm.setAttr("RightLegIKFKCtrl.AutoHideIKFK",1)
    pm.parentConstraint('RightAnkleJnt','RightLegIKFKCtrlGrp',mo=1,weight=1,n="RightLegIKFKCtrlGrpParentCon")
    pm.group(em=1,n="RightKneeTwistFixPointKnee")
    pm.group(em=1,n="RightAnkleTwistFixPointAnkle")
    Utils.KGM_Aline("RightLegRig2Jnt", "RightKneeTwistFixPointKnee", "a")
    Utils.KGM_Aline("RightLegRig3Jnt", "RightAnkleTwistFixPointAnkle", "a")
    pm.parent('RightKneeTwistFixPointKnee','RightLegRig2Jnt')
    pm.parent('RightAnkleTwistFixPointAnkle','RightLegRig3Jnt')
    pm.setAttr("RightKneeTwistFixPointKnee.translateX",1)
    pm.setAttr("RightAnkleTwistFixPointAnkle.translateX",1)
    pm.group(em=1,n="RightHipTwistFixGrp")
    pm.group(em=1,n="RightHipTwistFixAim")
    pm.group(em=1,n="RightHipTwistFix")
    pm.group(em=1,n="RightHipTwistFixAimUp")
    pm.group(em=1,n="RightHipTwistFixAimPoint")
    Utils.KGM_Aline("RightLegRig1Jnt", "RightHipTwistFixGrp", "p")
    Utils.KGM_Aline("RightLegRig1Jnt", "RightHipTwistFixAim", "a")
    pm.parent('RightHipTwistFixAim','RightHipJnt')
    pm.setAttr("RightHipTwistFixAim.rotateZ",0)
    pm.setAttr("RightHipTwistFixAim.rotateX",0)
    pm.parent('RightHipTwistFixAim',w=1)
    Utils.KGM_Aline("RightLegRig1Jnt", "RightHipTwistFix", "a")
    Utils.KGM_Aline("RightLegRig1Jnt", "RightHipTwistFixAimUp", "p")
    Utils.KGM_Aline("RightLegRig2Jnt ", "RightHipTwistFixAimPoint", "p")
    #parent RightHipTwistFix RightHipTwistFixAim ;
    pm.parent('RightHipTwistFixAim','RightHipTwistFixGrp')
    pm.parent('RightHipTwistFixAimUp','RightHipTwistFixGrp')
    pm.parent('RightHipTwistFixAimPoint','RightHipTwistFixGrp')
    pm.group(em=1,n="RightKneeTwistFixGrp")
    pm.group(em=1,n="RightKneeTwistFixAim")
    pm.group(em=1,n="RightKneeTwistFix")
    pm.group(em=1,n="RightKneeTwistFixAimPoint")
    pm.group(em=1,n="RightKneeTwistFixPointHip")
    Utils.KGM_Aline("RightLegRig2Jnt", "RightKneeTwistFixGrp", "a")
    Utils.KGM_Aline("RightLegRig2Jnt", "RightKneeTwistFixAim", "a")
    Utils.KGM_Aline("RightLegRig2Jnt ", "RightKneeTwistFix", "a")
    Utils.KGM_Aline("RightLegRig2Jnt", "RightKneeTwistFixAimPoint", "a")
    Utils.KGM_Aline("RightLegRig2Jnt", "RightKneeTwistFixPointHip", "a")
    pm.parent('RightKneeTwistFix','RightKneeTwistFixAim')
    pm.parent('RightKneeTwistFixAim','RightKneeTwistFixGrp')
    pm.parent('RightKneeTwistFixAimPoint','RightKneeTwistFixGrp')
    pm.parent('RightKneeTwistFixPointHip','RightKneeTwistFixGrp')
    pm.setAttr("RightKneeTwistFixAimPoint.translateX",1)
    pm.setAttr("RightKneeTwistFixPointHip.translateX",1)
    pm.group(em=1,n="RightAnkleTwistFixGrp")
    pm.group(em=1,n="RightAnkleTwistFixAim")
    pm.group(em=1,n="RightAnkleTwistFixUp")
    pm.group(em=1,n="RightAnkleTwistFix")
    pm.group(em=1,n="RightAnkleTwistFixAimPoint")
    pm.group(em=1,n="RightAnkleTwistFixPointKnee")
    Utils.KGM_Aline("RightLegRig3Jnt", "RightAnkleTwistFixGrp", "a")
    Utils.KGM_Aline("RightLegRig3Jnt", "RightAnkleTwistFixAim", "a")
    Utils.KGM_Aline("RightLegRig3Jnt ", "RightAnkleTwistFixUp", "a")
    Utils.KGM_Aline("RightLegRig3Jnt", "RightAnkleTwistFix", "a")
    Utils.KGM_Aline("RightLegRig3Jnt", "RightAnkleTwistFixAimPoint", "a")
    Utils.KGM_Aline("RightLegRig3Jnt", "RightAnkleTwistFixPointKnee", "a")
    pm.parent('RightAnkleTwistFixUp','RightAnkleTwistFixAim')
    pm.parent('RightAnkleTwistFix','RightAnkleTwistFixAim')
    pm.parent('RightAnkleTwistFixAim','RightAnkleTwistFixGrp')
    pm.parent('RightAnkleTwistFixAimPoint','RightAnkleTwistFixGrp')
    pm.parent('RightAnkleTwistFixPointKnee','RightAnkleTwistFixGrp')
    pm.setAttr("RightAnkleTwistFixAimPoint.translateX",1)
    pm.setAttr("RightAnkleTwistFixPointKnee.translateX",1)
    pm.parent('RightKneeTwistFixGrp','RightLegRig1Jnt')
    pm.parent('RightAnkleTwistFixGrp','RightLegRig2Jnt')
    #RightHipTwistFixGrp
    pm.aimConstraint('RightHipTwistFixAimPoint','RightHipTwistFixAim',weight=1,upVector=(1, 0, 0),n="RightHipTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='RightHipTwistFixAimUp',
        offset=(0, 0, 0),aimVector=(0, -1, 0),
        worldUpVector=(1, 0, 0))
    pm.parent('RightHipTwistFix','RightHipTwistFixAim')
    pm.pointConstraint('RightLegRig2Jnt','RightHipTwistFixAimPoint',mo=1,weight=1,n="RightHipTwistFixAimPointCon")
    pm.createNode('vectorProduct',n="RightHipTwistFixPD")
    pm.setAttr("RightHipTwistFixPD.input1X",1)
    pm.setAttr("RightHipTwistFixPD.normalizeOutput",1)
    pm.connectAttr('RightHipTwistFixAimPoint.translate','RightHipTwistFixPD.input2',f=1)
    pm.setDrivenKeyframe('RightHipTwistFixAimUp',currentDriver="RightHipTwistFixPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('RightHipTwistFixAimUp',currentDriver="RightHipTwistFixPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    #RightKneeTwistFixGrp
    pm.pointConstraint('RightLegRig2Jnt','RightKneeTwistFixGrp',mo=1,weight=1,n="RightKneeTwistFixGrpPointCon")
    pm.aimConstraint('RightKneeTwistFixAimPoint','RightKneeTwistFixAim',weight=1,upVector=(0, 1, 0),mo=1,n="RightKneeTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='RightKneeTwistFixPointKnee',
        aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.connectAttr('RightLegIKFKCtrl.TwistFix','RightKneeTwistFix.rotateX',f=1)
    pm.pointConstraint('RightKneeTwistFixPointHip','RightKneeTwistFixPointKnee','RightKneeTwistFixAimPoint',mo=1,weight=1,n="RightKneeTwistFixAimPointPointCon")
    #RightAnkleTwistFixGrp
    pm.pointConstraint('RightLegRig3Jnt','RightAnkleTwistFixGrp',mo=1,weight=1,n="RightAnkleTwistFixGrpPointCon")
    pm.aimConstraint('RightAnkleTwistFixAimPoint','RightAnkleTwistFixAim',weight=1,upVector=(0, 1, 0),mo=1,n="RightAnkleTwistFixAimAimCon",worldUpType="objectrotation",
        worldUpObject='RightAnkleTwistFixGrp',
        aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.aimConstraint('RightAnkleTwistFixAimPoint','RightAnkleTwistFixUp',weight=1,upVector=(0, 1, 0),mo=1,n="RightAnkleTwistFixUpAimCon",worldUpType="objectrotation",
        worldUpObject='RightAnkleTwistFixPointAnkle',
        aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.orientConstraint('RightAnkleTwistFixAim','RightAnkleTwistFixUp','RightAnkleTwistFix',mo=1,weight=1,n="RightAnkleTwistFixAimPointOrientCon")
    pm.setAttr("RightAnkleTwistFixAimPointOrientCon.RightAnkleTwistFixAimW0",0.5)
    pm.pointConstraint('RightAnkleTwistFixPointKnee','RightAnkleTwistFixPointAnkle','RightAnkleTwistFixAimPoint',mo=1,weight=1,n="RightAnkleTwistFixAimPointPointCon")
    #IKFK set
    #hip
    pm.pointConstraint('RightLegIK1Jnt','RightLegFK1Jnt','RightLegRig1Jnt',mo=1,weight=1,n="RightLegRig1JntPointCon")
    pm.setAttr("RightLegIKFKCtrl.IKFK",1)
    pm.setAttr("RightLegRig1JntPointCon.RightLegIK1JntW0",0)
    pm.setAttr("RightLegRig1JntPointCon.RightLegFK1JntW1",1)
    pm.setDrivenKeyframe('RightLegRig1JntPointCon.RightLegIK1JntW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig1JntPointCon.RightLegFK1JntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setAttr("RightLegIKFKCtrl.IKFK",0)
    pm.setAttr("RightLegRig1JntPointCon.RightLegIK1JntW0",1)
    pm.setAttr("RightLegRig1JntPointCon.RightLegFK1JntW1",0)
    pm.setDrivenKeyframe('RightLegRig1JntPointCon.RightLegIK1JntW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig1JntPointCon.RightLegFK1JntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="RightHipIKFKOrientBlend")
    pm.connectAttr('RightLegIKFKCtrl.IKFK','RightHipIKFKOrientBlend.blender',f=1)
    pm.connectAttr('RightLegFK1Jnt.rotate','RightHipIKFKOrientBlend.color1',f=1)
    pm.connectAttr('RightLegIK1Jnt.rotate','RightHipIKFKOrientBlend.color2',f=1)
    pm.connectAttr('RightHipIKFKOrientBlend.output','RightLegRig1Jnt.rotate',f=1)
    #knee
    pm.pointConstraint('RightLegIK2Jnt','RightLegFK2Jnt','RightLegRig2Jnt',mo=1,weight=1,n="RightLegRig2JntPointCon")
    pm.setAttr("RightLegIKFKCtrl.IKFK",1)
    pm.setAttr("RightLegRig2JntPointCon.RightLegIK2JntW0",0)
    pm.setAttr("RightLegRig2JntPointCon.RightLegFK2JntW1",1)
    pm.setDrivenKeyframe('RightLegRig2JntPointCon.RightLegIK2JntW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig2JntPointCon.RightLegFK2JntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setAttr("RightLegIKFKCtrl.IKFK",0)
    pm.setAttr("RightLegRig2JntPointCon.RightLegIK2JntW0",1)
    pm.setAttr("RightLegRig2JntPointCon.RightLegFK2JntW1",0)
    pm.setDrivenKeyframe('RightLegRig2JntPointCon.RightLegIK2JntW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig2JntPointCon.RightLegFK2JntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.createNode('blendColors',n="RightKneeIKFKOrientBlend")
    pm.connectAttr('RightLegIKFKCtrl.IKFK','RightKneeIKFKOrientBlend.blender',f=1)
    pm.connectAttr('RightLegFK2Jnt.rotate','RightKneeIKFKOrientBlend.color1',f=1)
    pm.connectAttr('RightLegIK2Jnt.rotate','RightKneeIKFKOrientBlend.color2',f=1)
    pm.connectAttr('RightKneeIKFKOrientBlend.output','RightLegRig2Jnt.rotate',f=1)
    #ankle
    pm.pointConstraint('RightLegIK3Jnt','RightLegFK3Jnt','RightLegRig3Jnt',mo=1,weight=1,n="RightLegRig3JntPointCon")
    pm.setAttr("RightLegIKFKCtrl.IKFK",1)
    pm.setAttr("RightLegRig3JntPointCon.RightLegIK3JntW0",0)
    pm.setAttr("RightLegRig3JntPointCon.RightLegFK3JntW1",1)
    pm.setDrivenKeyframe('RightLegRig3JntPointCon.RightLegIK3JntW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig3JntPointCon.RightLegFK3JntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setAttr("RightLegIKFKCtrl.IKFK",0)
    pm.setAttr("RightLegRig3JntPointCon.RightLegIK3JntW0",1)
    pm.setAttr("RightLegRig3JntPointCon.RightLegFK3JntW1",0)
    pm.setDrivenKeyframe('RightLegRig3JntPointCon.RightLegIK3JntW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig3JntPointCon.RightLegFK3JntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.orientConstraint('RightLegIKCtrlPoint','RightAnkleFKCtrl','RightLegRig3Jnt',offset=(0, 0, 0),weight=1,n="RightLegRig3JntOrientCon")
    pm.setAttr("RightLegIKFKCtrl.IKFK",1)
    pm.setAttr("RightLegRig3JntOrientCon.RightLegIKCtrlPointW0",0)
    pm.setAttr("RightLegRig3JntOrientCon.RightAnkleFKCtrlW1",1)
    pm.setDrivenKeyframe('RightLegRig3JntOrientCon.RightLegIKCtrlPointW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig3JntOrientCon.RightAnkleFKCtrlW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setAttr("RightLegIKFKCtrl.IKFK",0)
    pm.setAttr("RightLegRig3JntOrientCon.RightLegIKCtrlPointW0",1)
    pm.setAttr("RightLegRig3JntOrientCon.RightAnkleFKCtrlW1",0)
    pm.setDrivenKeyframe('RightLegRig3JntOrientCon.RightLegIKCtrlPointW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegRig3JntOrientCon.RightAnkleFKCtrlW1',currentDriver='RightLegIKFKCtrl.IKFK')
    #///////////////////////////
    #ctrls Vis
    #///////////////////////////
    pm.createNode('blendTwoAttr',n="RightLegFKCtrlsVisBlend")
    pm.createNode('blendTwoAttr',n="RightLegIKCtrlsVisBlend")
    pm.setAttr("RightLegFKCtrlsVisBlend.input[0]",1)
    pm.setAttr("RightLegIKCtrlsVisBlend.input[0]",1)
    pm.connectAttr('RightLegIKFKCtrl.AutoHideIKFK','RightLegFKCtrlsVisBlend.attributesBlender',f=1)
    pm.connectAttr('RightLegIKFKCtrl.AutoHideIKFK','RightLegIKCtrlsVisBlend.attributesBlender',f=1)
    pm.setDrivenKeyframe('RightLegFKCtrlsVisBlend',currentDriver="RightLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=0)
    pm.setDrivenKeyframe('RightLegFKCtrlsVisBlend',currentDriver="RightLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.1)
    pm.setDrivenKeyframe('RightLegIKCtrlsVisBlend',currentDriver="RightLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=1,
        driverValue=0.9)
    pm.setDrivenKeyframe('RightLegIKCtrlsVisBlend',currentDriver="RightLegIKFKCtrl.IKFK",
        attribute="input[1]",
        value=0,
        driverValue=1)
    pm.connectAttr('RightLegFKCtrlsVisBlend.output','RightHipFKCtrlGrp.visibility',f=1)
    pm.connectAttr('RightLegFKCtrlsVisBlend.output','RightKneeFKCtrlGrp.visibility',f=1)
    pm.connectAttr('RightLegFKCtrlsVisBlend.output','RightAnkleFKCtrlGrp.visibility',f=1)
    pm.connectAttr('RightLegIKCtrlsVisBlend.output','RightLegIKCtrlGrp.visibility',f=1)
    #///////////////////////////
    #outline
    #///////////////////////////
    pm.parent('RightLegRig1Jnt','RightLegRigJntGrp')
    pm.parent('RightHipTwistFixGrp','RightLegRigJntGrp')
    pm.parent('RightLegIKFKCtrlBaseGrp','RightLegRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightLegRigSysGrp',ln="IKFKCtrlRadius",at='double')
    pm.setAttr('RightLegRigSysGrp.IKFKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="IKFKCtrlPostionX",at='double')
    pm.setAttr('RightLegRigSysGrp.IKFKCtrlPostionX',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="IKFKCtrlPostionY",at='double')
    pm.setAttr('RightLegRigSysGrp.IKFKCtrlPostionY',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="TwistLockWeight",at='double')
    pm.setAttr('RightLegRigSysGrp.TwistLockWeight',e=1,channelBox=True)
    pm.setAttr("RightLegRigSysGrp.TwistLockWeight",0.5)
    pm.connectAttr('RightLegRigSysGrp.IKFKCtrlRadius','RightLegIKFKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightLegRigSysGrp.IKFKCtrlRadius','RightLegIKFKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightLegRigSysGrp.IKFKCtrlRadius','RightLegIKFKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightLegRigSysGrp.IKFKCtrlPostionX','RightLegIKFKCtrlBase.translateX',f=1)
    pm.connectAttr('RightLegRigSysGrp.IKFKCtrlPostionY','RightLegIKFKCtrlBase.translateY',f=1)
    pm.connectAttr('RightLegRigSysGrp.TwistLockWeight','RightAnkleTwistFixAimPointOrientCon.RightAnkleTwistFixAimW0',f=1)
    pm.setAttr("RightLegRigSysGrp.IKFKCtrlRadius",0.3)
    pm.setAttr("RightLegRigSysGrp.IKFKCtrlPostionX",0.4)
    #///////////////////////////
    #default 
    #///////////////////////////
    pm.setAttr("RightLegRigSysGrp.IKFKCtrlRadius",0.1)
    pm.setAttr("RightLegRigSysGrp.IKFKCtrlPostionX",-0.4)