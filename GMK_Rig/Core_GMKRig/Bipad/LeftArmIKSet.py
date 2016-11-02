import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftArmIKSet():
    #/////////////////////////
    #IK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftShoulderJnt", "LeftArmIK1Jnt")
    Utils.KGM_DuplicateJnt("LeftElbowJnt", "LeftArmIK2Jnt")
    Utils.KGM_DuplicateJnt("LeftWristJnt", "LeftArmIK3Jnt")
    pm.parent('LeftArmIK3Jnt','LeftArmIK2Jnt')
    pm.parent('LeftArmIK2Jnt','LeftArmIK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.rename("nurbsCircle1","LeftArmIKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftArmIKCtrl")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmIKCtrlGrp", "a")
    pm.addAttr('LeftArmIKCtrl',ln="Twist",at='double')
    pm.setAttr('LeftArmIKCtrl.Twist',e=1,keyable=True)
    pm.addAttr('LeftArmIKCtrl',ln="Stretch",max=10,dv=0,at='double',min=0)
    pm.setAttr('LeftArmIKCtrl.Stretch',e=1,keyable=True)
    pm.addAttr('LeftArmIKCtrl',ln="Squash",max=10,dv=0,at='double',min=0)
    pm.setAttr('LeftArmIKCtrl.Squash',e=1,keyable=True)
    pm.addAttr('LeftArmIKCtrl',ln="UpSlide",at='double',min=-10)
    pm.setAttr('LeftArmIKCtrl.UpSlide',e=1,keyable=True)
    pm.addAttr('LeftArmIKCtrl',ln="DwSlide",at='double',min=-9.9)
    pm.setAttr('LeftArmIKCtrl.DwSlide',e=1,keyable=True)
    pm.addAttr('LeftArmIKCtrl',ln="Follow",en="Head:Chest:Root:Fly:Clavicle",at="enum")
    pm.setAttr('LeftArmIKCtrl.Follow',e=1,keyable=True)
    pm.group(em=1,n="LeftArmIKCtrlPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmIKCtrlPoint", "a")
    pm.parent('LeftArmIKCtrlPoint','LeftArmIKCtrl')
    pm.group(em=1,n="LeftShoulderIKPoint")
    Utils.KGM_Aline("LeftArmIK1Jnt", "LeftShoulderIKPoint", "a")
    pm.group(em=1,n="LeftElbowIKPoint")
    Utils.KGM_Aline("LeftArmIK2Jnt", "LeftElbowIKPoint", "a")
    pm.group(em=1,n="LeftWristIKPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftWristIKPoint", "a")
    pm.group(em=1,n="LeftArmIKPoint")
    Utils.KGM_Aline("LeftArmIK1Jnt", "LeftArmIKPoint", "a")
    pm.ikHandle(ee="LeftArmIK3Jnt",sj="LeftArmIK1Jnt",sol="ikRPsolver",n="LeftArmIKHandle")
    pm.rename("effector1","LeftArmIKEffector")
    pm.createNode('multDoubleLinear',n="LeftArmTwistRev")
    pm.setAttr("LeftArmTwistRev.input2",1)
    pm.connectAttr('LeftArmIKCtrl.Twist','LeftArmTwistRev.input1',f=1)
    pm.connectAttr('LeftArmTwistRev.output','LeftArmIKHandle.twist',f=1)
    pm.group(em=1,n="LeftArmPoleVectorGrp")
    Utils.KGM_Aline("LeftArmIK1Jnt", "LeftArmPoleVectorGrp", "a")
    pm.group(em=1,n="LeftArmPoleVectorAimGrp")
    Utils.KGM_Aline("LeftArmIK1Jnt", "LeftArmPoleVectorAimGrp", "a")
    pm.group(em=1,n="LeftArmPoleVectorAimUp")
    Utils.KGM_Aline("LeftArmIK1Jnt", "LeftArmPoleVectorAimUp", "a")
    pm.group(em=1,n="LeftArmPoleVectorPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmPoleVectorPoint", "a")
    pm.group(em=1,n="LeftArmPoleVector")
    Utils.KGM_Aline("LeftArmIK1Jnt", "LeftArmPoleVector", "a")
    pm.parent('LeftArmPoleVector','LeftArmPoleVectorAimGrp')
    pm.parent('LeftArmPoleVectorAimGrp','LeftArmPoleVectorGrp')
    pm.parent('LeftArmPoleVectorAimUp','LeftArmPoleVectorGrp')
    pm.parent('LeftArmPoleVectorPoint','LeftArmPoleVectorGrp')
    pm.setAttr("LeftArmPoleVector.translateZ",0.2)
    pm.group(em=1,n="LeftArmIKCtrlFlyPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmIKCtrlFlyPoint", "a")
    pm.group(em=1,n="LeftArmIKCtrlRootPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmIKCtrlRootPoint", "a")
    pm.group(em=1,n="LeftArmIKCtrlChestPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmIKCtrlChestPoint", "a")
    pm.group(em=1,n="LeftArmIKCtrlHeadPoint")
    Utils.KGM_Aline("LeftArmIK3Jnt", "LeftArmIKCtrlHeadPoint", "a")
    pm.group(em=1,n="LeftArmIKCtrlClaviclePoint")
    Utils.KGM_Aline("LeftClavicleJnt", "LeftArmIKCtrlClaviclePoint", "a")
    pm.parent('LeftArmIKCtrlFlyPoint','FlyCtrl')
    pm.parent('LeftArmIKCtrlRootPoint','RootCtrl')
    pm.parent('LeftArmIKCtrlHeadPoint','HeadPoint')
    pm.parent('LeftArmIKCtrlChestPoint','ChestPoint')
    pm.parent('LeftArmIKCtrlClaviclePoint','LeftClavicleCtrl')
    #follow setDriven key
    #parentConstraint -n "LeftArmIKCtrlGrpFollowParentCon" -mo -weight 1  LeftArmIKCtrlHeadPoint LeftArmIKCtrlChestPoint LeftArmIKCtrlRootPoint LeftArmIKCtrlFlyPoint LeftArmIKCtrlGrp;
    pm.parentConstraint('LeftArmIKCtrlHeadPoint','LeftArmIKCtrlChestPoint','LeftArmIKCtrlRootPoint','LeftArmIKCtrlFlyPoint','LeftArmIKCtrlClaviclePoint','LeftArmIKCtrlGrp',mo=1,weight=1,n="LeftArmIKCtrlGrpFollowParentCon")
    pm.setAttr("LeftArmIKCtrl.Follow",1)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1",1)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4',currentDriver='LeftArmIKCtrl.Follow')
    pm.setAttr("LeftArmIKCtrl.Follow",2)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2",1)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4',currentDriver='LeftArmIKCtrl.Follow')
    pm.setAttr("LeftArmIKCtrl.Follow",3)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3",1)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4',currentDriver='LeftArmIKCtrl.Follow')
    pm.setAttr("LeftArmIKCtrl.Follow",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0",1)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4',currentDriver='LeftArmIKCtrl.Follow')
    pm.setAttr("LeftArmIKCtrl.Follow",4)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3",0)
    pm.setAttr("LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4",1)
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlHeadPointW0',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlChestPointW1',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlRootPointW2',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlFlyPointW3',currentDriver='LeftArmIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftArmIKCtrlGrpFollowParentCon.LeftArmIKCtrlClaviclePointW4',currentDriver='LeftArmIKCtrl.Follow')
    pm.setAttr("LeftArmIKCtrl.Follow",4)
    #Stretch setDriven key
    pm.pointConstraint('LeftArmIKCtrlPoint','LeftShoulderIKPoint','LeftArmIKPoint',offset=(0, 0, 0),weight=1,n="LeftArmIKPointCon")
    pm.setAttr("LeftArmIKCtrl.Stretch",10)
    pm.setAttr("LeftArmIKPointCon.LeftArmIKCtrlPointW0",1)
    pm.setAttr("LeftArmIKPointCon.LeftShoulderIKPointW1",0)
    pm.setDrivenKeyframe('LeftArmIKPointCon.LeftArmIKCtrlPointW0',currentDriver='LeftArmIKCtrl.Stretch')
    pm.setDrivenKeyframe('LeftArmIKPointCon.LeftShoulderIKPointW1',currentDriver='LeftArmIKCtrl.Stretch')
    pm.setAttr("LeftArmIKCtrl.Stretch",0)
    pm.setAttr("LeftArmIKPointCon.LeftArmIKCtrlPointW0",0)
    pm.setAttr("LeftArmIKPointCon.LeftShoulderIKPointW1",1)
    pm.setDrivenKeyframe('LeftArmIKPointCon.LeftArmIKCtrlPointW0',currentDriver='LeftArmIKCtrl.Stretch')
    pm.setDrivenKeyframe('LeftArmIKPointCon.LeftShoulderIKPointW1',currentDriver='LeftArmIKCtrl.Stretch')
    pm.pointConstraint('LeftArmIKCtrlPoint','LeftArmIKHandle',mo=1,weight=1,n="LeftArmIKHandlePointCon")
    pm.poleVectorConstraint('LeftArmPoleVector','LeftArmIKHandle',weight=1,n="LeftArmPoleVectorAimGrpPoleVecCon")
    pm.aimConstraint('LeftArmIKCtrlPoint','LeftArmPoleVectorAimGrp',weight=1,upVector=(0, 1, 0),n="LeftArmPoleVectorAimGrpAimCon",
        worldUpType="objectrotation",worldUpObject='LeftArmPoleVectorAimUp',
        offset=(0, 0, 0),aimVector=(1, 0, 0),
        worldUpVector=(0, 1, 0))
    pm.pointConstraint('LeftArmIKCtrlPoint','LeftArmPoleVectorPoint',mo=1,weight=1,n="LeftArmPoleVectorPointCon")
    #/////////////////////////
    #PolVector set
    #/////////////////////////
    pm.createNode('vectorProduct',n="LeftArmPoleVectorPD")
    pm.setAttr("LeftArmPoleVectorPD.normalizeOutput",1)
    pm.setAttr("LeftArmPoleVectorPD.input1Y",1)
    pm.setDrivenKeyframe('LeftArmPoleVectorAimUp',currentDriver="LeftArmPoleVectorPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('LeftArmPoleVectorAimUp',currentDriver="LeftArmPoleVectorPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    pm.connectAttr('LeftArmPoleVectorPoint.translate','LeftArmPoleVectorPD.input2',f=1)
    #/////////////////////////
    #Stretch set
    #/////////////////////////
    pm.createNode('distanceBetween',n="LeftArmIKDis")
    pm.createNode('distanceBetween',n="LeftArmUpDis")
    pm.createNode('distanceBetween',n="LeftArmDwDis")
    pm.connectAttr('LeftShoulderIKPoint.translate','LeftArmIKDis.point1',f=1)
    pm.connectAttr('LeftArmIKPoint.translate','LeftArmIKDis.point2',f=1)
    pm.connectAttr('LeftShoulderIKPoint.translate','LeftArmUpDis.point1',f=1)
    pm.connectAttr('LeftElbowIKPoint.translate','LeftArmUpDis.point2',f=1)
    pm.connectAttr('LeftElbowIKPoint.translate','LeftArmDwDis.point1',f=1)
    pm.connectAttr('LeftWristIKPoint.translate','LeftArmDwDis.point2',f=1)
    pm.createNode('addDoubleLinear',n="LeftArmDisAdd")
    pm.connectAttr('LeftArmUpDis.distance','LeftArmDisAdd.input1',f=1)
    pm.connectAttr('LeftArmDwDis.distance','LeftArmDisAdd.input2',f=1)
    pm.createNode('condition',n="LeftArmIKCondition")
    pm.setAttr('LeftArmIKCondition.operation',2)
    pm.connectAttr('LeftArmIKDis.distance','LeftArmIKCondition.firstTerm',f=1)
    pm.connectAttr('LeftArmIKDis.distance','LeftArmIKCondition.colorIfTrueR',f=1)
    pm.connectAttr('LeftArmDisAdd.output','LeftArmIKCondition.secondTerm',f=1)
    pm.connectAttr('LeftArmDisAdd.output','LeftArmIKCondition.colorIfTrueG',f=1)
    pm.createNode('multiplyDivide',n="LeftArmStretchDivide")
    pm.setAttr('LeftArmStretchDivide.operation',2)
    pm.connectAttr('LeftArmIKCondition.outColorR','LeftArmStretchDivide.input1X',f=1)
    pm.connectAttr('LeftArmIKCondition.outColorR','LeftArmStretchDivide.input2Y',f=1)
    pm.connectAttr('LeftArmIKCondition.outColorG','LeftArmStretchDivide.input1Y',f=1)
    pm.connectAttr('LeftArmIKCondition.outColorG','LeftArmStretchDivide.input2X',f=1)
    pm.createNode('multDoubleLinear',n="LeftArmUpSlideMulti")
    pm.createNode('multDoubleLinear',n="LeftArmDwSlideMulti")
    pm.setAttr("LeftArmUpSlideMulti.input2",1)
    pm.setAttr("LeftArmDwSlideMulti.input2",1)
    pm.connectAttr('LeftArmStretchDivide.outputX','LeftArmUpSlideMulti.input1',f=1)
    pm.connectAttr('LeftArmStretchDivide.outputX','LeftArmDwSlideMulti.input1',f=1)
    pm.createNode('multDoubleLinear',n="LeftArmUpTXMulti")
    pm.createNode('multDoubleLinear',n="LeftArmDwTXMulti")
    pm.setAttr("LeftArmUpTXMulti.input2",
        pm.getAttr('LeftArmIK2Jnt.translateX'))
    pm.setAttr("LeftArmDwTXMulti.input2",
        pm.getAttr('LeftArmIK3Jnt.translateX'))
    pm.connectAttr('LeftArmUpSlideMulti.output','LeftArmUpTXMulti.input1',f=1)
    pm.connectAttr('LeftArmDwSlideMulti.output','LeftArmDwTXMulti.input1',f=1)
    pm.connectAttr('LeftArmUpTXMulti.output','LeftArmIK2Jnt.translateX',f=1)
    pm.connectAttr('LeftArmDwTXMulti.output','LeftArmIK3Jnt.translateX',f=1)
    #LeftArmSquash
    pm.createNode('blendTwoAttr',n="LeftArmSquashBlend")
    pm.createNode('multDoubleLinear',n="LeftArmSquashMulti")
    pm.setAttr("LeftArmSquashBlend.input[0]",1)
    pm.setAttr("LeftArmSquashMulti.input2",0.1)
    pm.connectAttr('LeftArmIKCtrl.Squash','LeftArmSquashMulti.input1',f=1)
    pm.connectAttr('LeftArmSquashMulti.output','LeftArmSquashBlend.attributesBlender',f=1)
    pm.connectAttr('LeftArmStretchDivide.outputY','LeftArmSquashBlend.input[1]',f=1)
    pm.connectAttr('LeftArmSquashBlend.output','LeftArmIK1Jnt.scaleY',f=1)
    pm.connectAttr('LeftArmSquashBlend.output','LeftArmIK1Jnt.scaleZ',f=1)
    pm.connectAttr('LeftArmSquashBlend.output','LeftArmIK2Jnt.scaleY',f=1)
    pm.connectAttr('LeftArmSquashBlend.output','LeftArmIK2Jnt.scaleZ',f=1)
    #/////////////////////////
    #Slide set
    #/////////////////////////
    pm.setDrivenKeyframe('LeftArmUpSlideMulti',currentDriver="LeftArmIKCtrl.UpSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('LeftArmUpSlideMulti',currentDriver="LeftArmIKCtrl.UpSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setDrivenKeyframe('LeftArmDwSlideMulti',currentDriver="LeftArmIKCtrl.DwSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('LeftArmDwSlideMulti',currentDriver="LeftArmIKCtrl.DwSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setAttr('LeftArmUpSlideMulti_input2.postInfinity',1)
    pm.setAttr('LeftArmDwSlideMulti_input2.postInfinity',1)
    #///////////////////////////
    #
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="LeftArmIKGrp")
    Utils.KGM_Aline("LeftShoulderJnt", "LeftArmIKGrp", "p")
    pm.parent('LeftArmIKCtrlGrp','LeftArmIKGrp')
    pm.parent('LeftShoulderIKPoint','LeftArmIKGrp')
    pm.parent('LeftElbowIKPoint','LeftArmIKGrp')
    pm.parent('LeftWristIKPoint','LeftArmIKGrp')
    pm.parent('LeftArmIKPoint','LeftArmIKGrp')
    pm.parent('LeftArmIKHandle','LeftArmIKGrp')
    pm.parent('LeftArmPoleVectorGrp','LeftArmIKGrp')
    pm.parent('LeftArmIK1Jnt','LeftArmRigJntGrp')
    # RigSysGrp
    pm.parent('LeftArmIKCtrlBaseGrp','LeftArmRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftArmRigSysGrp',ln="ArmIKCtrlRadius",at='double')
    pm.setAttr('LeftArmRigSysGrp.ArmIKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('LeftArmRigSysGrp.ArmIKCtrlRadius','LeftArmIKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ArmIKCtrlRadius','LeftArmIKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftArmRigSysGrp.ArmIKCtrlRadius','LeftArmIKCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #
    #///////////////////////////
    pm.setAttr("LeftArmRigSysGrp.ArmIKCtrlRadius",0.25)
    


