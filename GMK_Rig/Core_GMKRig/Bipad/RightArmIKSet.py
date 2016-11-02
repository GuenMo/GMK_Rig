import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightArmIKSet():
    Utils.KGM_DuplicateJnt("RightShoulderJnt", "RightArmIK1Jnt")
    #/////////////////////////
    #IK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightElbowJnt", "RightArmIK2Jnt")
    Utils.KGM_DuplicateJnt("RightWristJnt", "RightArmIK3Jnt")
    pm.parent('RightArmIK3Jnt','RightArmIK2Jnt')
    pm.parent('RightArmIK2Jnt','RightArmIK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.rename("nurbsCircle1","RightArmIKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightArmIKCtrl")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmIKCtrlGrp", "a")
    pm.addAttr('RightArmIKCtrl',ln="Twist",at='double')
    pm.setAttr('RightArmIKCtrl.Twist',e=1,keyable=True)
    pm.addAttr('RightArmIKCtrl',ln="Stretch",max=10,dv=0,at='double',min=0)
    pm.setAttr('RightArmIKCtrl.Stretch',e=1,keyable=True)
    pm.addAttr('RightArmIKCtrl',ln="Squash",max=10,dv=0,at='double',min=0)
    pm.setAttr('RightArmIKCtrl.Squash',e=1,keyable=True)
    pm.addAttr('RightArmIKCtrl',ln="UpSlide",at='double',min=-10)
    pm.setAttr('RightArmIKCtrl.UpSlide',e=1,keyable=True)
    pm.addAttr('RightArmIKCtrl',ln="DwSlide",at='double',min=-9.9)
    pm.setAttr('RightArmIKCtrl.DwSlide',e=1,keyable=True)
    pm.addAttr('RightArmIKCtrl',ln="Follow",en="Head:Chest:Root:Fly:Clavicle",at="enum")
    pm.setAttr('RightArmIKCtrl.Follow',e=1,keyable=True)
    pm.group(em=1,n="RightArmIKCtrlPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmIKCtrlPoint", "a")
    pm.parent('RightArmIKCtrlPoint','RightArmIKCtrl')
    pm.group(em=1,n="RightShoulderIKPoint")
    Utils.KGM_Aline("RightArmIK1Jnt", "RightShoulderIKPoint", "a")
    pm.group(em=1,n="RightElbowIKPoint")
    Utils.KGM_Aline("RightArmIK2Jnt", "RightElbowIKPoint", "a")
    pm.group(em=1,n="RightWristIKPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightWristIKPoint", "a")
    pm.group(em=1,n="RightArmIKPoint")
    Utils.KGM_Aline("RightArmIK1Jnt", "RightArmIKPoint", "a")
    pm.ikHandle(ee="RightArmIK3Jnt",sj="RightArmIK1Jnt",sol="ikRPsolver",n="RightArmIKHandle")
    pm.rename("effector1","RightArmIKEffector")
    pm.createNode('multDoubleLinear',n="RightArmTwistRev")
    pm.setAttr("RightArmTwistRev.input2",-1)
    pm.connectAttr('RightArmIKCtrl.Twist','RightArmTwistRev.input1',f=1)
    pm.connectAttr('RightArmTwistRev.output','RightArmIKHandle.twist',f=1)
    pm.group(em=1,n="RightArmPoleVectorGrp")
    Utils.KGM_Aline("RightArmIK1Jnt", "RightArmPoleVectorGrp", "a")
    pm.group(em=1,n="RightArmPoleVectorAimGrp")
    Utils.KGM_Aline("RightArmIK1Jnt", "RightArmPoleVectorAimGrp", "a")
    pm.group(em=1,n="RightArmPoleVectorAimUp")
    Utils.KGM_Aline("RightArmIK1Jnt", "RightArmPoleVectorAimUp", "a")
    pm.group(em=1,n="RightArmPoleVectorPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmPoleVectorPoint", "a")
    pm.group(em=1,n="RightArmPoleVector")
    Utils.KGM_Aline("RightArmIK1Jnt", "RightArmPoleVector", "a")
    pm.parent('RightArmPoleVector','RightArmPoleVectorAimGrp')
    pm.parent('RightArmPoleVectorAimGrp','RightArmPoleVectorGrp')
    pm.parent('RightArmPoleVectorAimUp','RightArmPoleVectorGrp')
    pm.parent('RightArmPoleVectorPoint','RightArmPoleVectorGrp')
    pm.setAttr("RightArmPoleVector.translateZ",-0.2)
    pm.group(em=1,n="RightArmIKCtrlFlyPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmIKCtrlFlyPoint", "a")
    pm.group(em=1,n="RightArmIKCtrlRootPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmIKCtrlRootPoint", "a")
    pm.group(em=1,n="RightArmIKCtrlChestPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmIKCtrlChestPoint", "a")
    pm.group(em=1,n="RightArmIKCtrlHeadPoint")
    Utils.KGM_Aline("RightArmIK3Jnt", "RightArmIKCtrlHeadPoint", "a")
    pm.group(em=1,n="RightArmIKCtrlClaviclePoint")
    Utils.KGM_Aline("RightClavicleJnt", "RightArmIKCtrlClaviclePoint", "a")
    pm.parent('RightArmIKCtrlFlyPoint','FlyCtrl')
    pm.parent('RightArmIKCtrlRootPoint','RootCtrl')
    pm.parent('RightArmIKCtrlHeadPoint','HeadPoint')
    pm.parent('RightArmIKCtrlChestPoint','ChestPoint')
    pm.parent('RightArmIKCtrlClaviclePoint','RightClavicleCtrl')
    #follow setDriven key
    #parentConstraint -n "RightArmIKCtrlGrpFollowParentCon" -mo -weight 1  RightArmIKCtrlHeadPoint RightArmIKCtrlChestPoint RightArmIKCtrlRootPoint RightArmIKCtrlFlyPoint RightArmIKCtrlGrp;
    pm.parentConstraint('RightArmIKCtrlHeadPoint','RightArmIKCtrlChestPoint','RightArmIKCtrlRootPoint','RightArmIKCtrlFlyPoint','RightArmIKCtrlClaviclePoint','RightArmIKCtrlGrp',mo=1,weight=1,n="RightArmIKCtrlGrpFollowParentCon")
    pm.setAttr("RightArmIKCtrl.Follow",1)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1",1)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4',currentDriver='RightArmIKCtrl.Follow')
    pm.setAttr("RightArmIKCtrl.Follow",2)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2",1)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4',currentDriver='RightArmIKCtrl.Follow')
    pm.setAttr("RightArmIKCtrl.Follow",3)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3",1)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4',currentDriver='RightArmIKCtrl.Follow')
    pm.setAttr("RightArmIKCtrl.Follow",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0",1)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4",0)
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4',currentDriver='RightArmIKCtrl.Follow')
    pm.setAttr("RightArmIKCtrl.Follow",4)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3",0)
    pm.setAttr("RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4",1)
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlHeadPointW0',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlChestPointW1',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlRootPointW2',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlFlyPointW3',currentDriver='RightArmIKCtrl.Follow')
    pm.setDrivenKeyframe('RightArmIKCtrlGrpFollowParentCon.RightArmIKCtrlClaviclePointW4',currentDriver='RightArmIKCtrl.Follow')
    pm.setAttr("RightArmIKCtrl.Follow",4)
    #Stretch setDriven key
    pm.pointConstraint('RightArmIKCtrlPoint','RightShoulderIKPoint','RightArmIKPoint',offset=(0, 0, 0),weight=1,n="RightArmIKPointCon")
    pm.setAttr("RightArmIKCtrl.Stretch",10)
    pm.setAttr("RightArmIKPointCon.RightArmIKCtrlPointW0",1)
    pm.setAttr("RightArmIKPointCon.RightShoulderIKPointW1",0)
    pm.setDrivenKeyframe('RightArmIKPointCon.RightArmIKCtrlPointW0',currentDriver='RightArmIKCtrl.Stretch')
    pm.setDrivenKeyframe('RightArmIKPointCon.RightShoulderIKPointW1',currentDriver='RightArmIKCtrl.Stretch')
    pm.setAttr("RightArmIKCtrl.Stretch",0)
    pm.setAttr("RightArmIKPointCon.RightArmIKCtrlPointW0",0)
    pm.setAttr("RightArmIKPointCon.RightShoulderIKPointW1",1)
    pm.setDrivenKeyframe('RightArmIKPointCon.RightArmIKCtrlPointW0',currentDriver='RightArmIKCtrl.Stretch')
    pm.setDrivenKeyframe('RightArmIKPointCon.RightShoulderIKPointW1',currentDriver='RightArmIKCtrl.Stretch')
    pm.pointConstraint('RightArmIKCtrlPoint','RightArmIKHandle',mo=1,weight=1,n="RightArmIKHandlePointCon")
    pm.poleVectorConstraint('RightArmPoleVector','RightArmIKHandle',weight=1,n="RightArmPoleVectorAimGrpPoleVecCon")
    pm.aimConstraint('RightArmIKCtrlPoint','RightArmPoleVectorAimGrp',weight=1,upVector=(0, -1, 0),n="RightArmPoleVectorAimGrpAimCon",
        worldUpType="objectrotation",worldUpObject='RightArmPoleVectorAimUp',
        offset=(0, 0, 0),aimVector=(-1, 0, 0),
        worldUpVector=(0, -1, 0))
    pm.pointConstraint('RightArmIKCtrlPoint','RightArmPoleVectorPoint',mo=1,weight=1,n="RightArmPoleVectorPointCon")
    #/////////////////////////
    #PolVector set
    #/////////////////////////
    pm.createNode('vectorProduct',n="RightArmPoleVectorPD")
    pm.setAttr("RightArmPoleVectorPD.normalizeOutput",1)
    pm.setAttr("RightArmPoleVectorPD.input1Y",-1)
    pm.setDrivenKeyframe('RightArmPoleVectorAimUp',currentDriver="RightArmPoleVectorPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('RightArmPoleVectorAimUp',currentDriver="RightArmPoleVectorPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    pm.connectAttr('RightArmPoleVectorPoint.translate','RightArmPoleVectorPD.input2',f=1)
    #/////////////////////////
    #Stretch set
    #/////////////////////////
    pm.createNode('distanceBetween',n="RightArmIKDis")
    pm.createNode('distanceBetween',n="RightArmUpDis")
    pm.createNode('distanceBetween',n="RightArmDwDis")
    pm.connectAttr('RightShoulderIKPoint.translate','RightArmIKDis.point1',f=1)
    pm.connectAttr('RightArmIKPoint.translate','RightArmIKDis.point2',f=1)
    pm.connectAttr('RightShoulderIKPoint.translate','RightArmUpDis.point1',f=1)
    pm.connectAttr('RightElbowIKPoint.translate','RightArmUpDis.point2',f=1)
    pm.connectAttr('RightElbowIKPoint.translate','RightArmDwDis.point1',f=1)
    pm.connectAttr('RightWristIKPoint.translate','RightArmDwDis.point2',f=1)
    pm.createNode('addDoubleLinear',n="RightArmDisAdd")
    pm.connectAttr('RightArmUpDis.distance','RightArmDisAdd.input1',f=1)
    pm.connectAttr('RightArmDwDis.distance','RightArmDisAdd.input2',f=1)
    pm.createNode('condition',n="RightArmIKCondition")
    pm.setAttr('RightArmIKCondition.operation',2)
    pm.connectAttr('RightArmIKDis.distance','RightArmIKCondition.firstTerm',f=1)
    pm.connectAttr('RightArmIKDis.distance','RightArmIKCondition.colorIfTrueR',f=1)
    pm.connectAttr('RightArmDisAdd.output','RightArmIKCondition.secondTerm',f=1)
    pm.connectAttr('RightArmDisAdd.output','RightArmIKCondition.colorIfTrueG',f=1)
    pm.createNode('multiplyDivide',n="RightArmStretchDivide")
    pm.setAttr('RightArmStretchDivide.operation',2)
    pm.connectAttr('RightArmIKCondition.outColorR','RightArmStretchDivide.input1X',f=1)
    pm.connectAttr('RightArmIKCondition.outColorR','RightArmStretchDivide.input2Y',f=1)
    pm.connectAttr('RightArmIKCondition.outColorG','RightArmStretchDivide.input1Y',f=1)
    pm.connectAttr('RightArmIKCondition.outColorG','RightArmStretchDivide.input2X',f=1)
    pm.createNode('multDoubleLinear',n="RightArmUpSlideMulti")
    pm.createNode('multDoubleLinear',n="RightArmDwSlideMulti")
    pm.setAttr("RightArmUpSlideMulti.input2",1)
    pm.setAttr("RightArmDwSlideMulti.input2",1)
    pm.connectAttr('RightArmStretchDivide.outputX','RightArmUpSlideMulti.input1',f=1)
    pm.connectAttr('RightArmStretchDivide.outputX','RightArmDwSlideMulti.input1',f=1)
    pm.createNode('multDoubleLinear',n="RightArmUpTXMulti")
    pm.createNode('multDoubleLinear',n="RightArmDwTXMulti")
    pm.setAttr("RightArmUpTXMulti.input2",
        pm.getAttr('RightArmIK2Jnt.translateX'))
    pm.setAttr("RightArmDwTXMulti.input2",
        pm.getAttr('RightArmIK3Jnt.translateX'))
    pm.connectAttr('RightArmUpSlideMulti.output','RightArmUpTXMulti.input1',f=1)
    pm.connectAttr('RightArmDwSlideMulti.output','RightArmDwTXMulti.input1',f=1)
    pm.connectAttr('RightArmUpTXMulti.output','RightArmIK2Jnt.translateX',f=1)
    pm.connectAttr('RightArmDwTXMulti.output','RightArmIK3Jnt.translateX',f=1)
    #RightArmSquash
    pm.createNode('blendTwoAttr',n="RightArmSquashBlend")
    pm.createNode('multDoubleLinear',n="RightArmSquashMulti")
    pm.setAttr("RightArmSquashBlend.input[0]",1)
    pm.setAttr("RightArmSquashMulti.input2",0.1)
    pm.connectAttr('RightArmIKCtrl.Squash','RightArmSquashMulti.input1',f=1)
    pm.connectAttr('RightArmSquashMulti.output','RightArmSquashBlend.attributesBlender',f=1)
    pm.connectAttr('RightArmStretchDivide.outputY','RightArmSquashBlend.input[1]',f=1)
    pm.connectAttr('RightArmSquashBlend.output','RightArmIK1Jnt.scaleY',f=1)
    pm.connectAttr('RightArmSquashBlend.output','RightArmIK1Jnt.scaleZ',f=1)
    pm.connectAttr('RightArmSquashBlend.output','RightArmIK2Jnt.scaleY',f=1)
    pm.connectAttr('RightArmSquashBlend.output','RightArmIK2Jnt.scaleZ',f=1)
    #/////////////////////////
    #Slide set
    #/////////////////////////
    pm.setDrivenKeyframe('RightArmUpSlideMulti',currentDriver="RightArmIKCtrl.UpSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('RightArmUpSlideMulti',currentDriver="RightArmIKCtrl.UpSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setDrivenKeyframe('RightArmDwSlideMulti',currentDriver="RightArmIKCtrl.DwSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('RightArmDwSlideMulti',currentDriver="RightArmIKCtrl.DwSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setAttr('RightArmUpSlideMulti_input2.postInfinity',1)
    pm.setAttr('RightArmDwSlideMulti_input2.postInfinity',1)
    #///////////////////////////
    #
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="RightArmIKGrp")
    Utils.KGM_Aline("RightShoulderJnt", "RightArmIKGrp", "p")
    pm.parent('RightArmIKCtrlGrp','RightArmIKGrp')
    pm.parent('RightShoulderIKPoint','RightArmIKGrp')
    pm.parent('RightElbowIKPoint','RightArmIKGrp')
    pm.parent('RightWristIKPoint','RightArmIKGrp')
    pm.parent('RightArmIKPoint','RightArmIKGrp')
    pm.parent('RightArmIKHandle','RightArmIKGrp')
    pm.parent('RightArmPoleVectorGrp','RightArmIKGrp')
    pm.parent('RightArmIK1Jnt','RightArmRigJntGrp')
    # RigSysGrp
    pm.parent('RightArmIKCtrlBaseGrp','RightArmRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightArmRigSysGrp',ln="ArmIKCtrlRadius",at='double')
    pm.setAttr('RightArmRigSysGrp.ArmIKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('RightArmRigSysGrp.ArmIKCtrlRadius','RightArmIKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightArmRigSysGrp.ArmIKCtrlRadius','RightArmIKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightArmRigSysGrp.ArmIKCtrlRadius','RightArmIKCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #
    #///////////////////////////
    pm.setAttr("RightArmRigSysGrp.ArmIKCtrlRadius",0.25)
    


