import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftLegIKSet():
    #/////////////////////////
    #IK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftHipJnt", "LeftLegIK1Jnt")
    Utils.KGM_DuplicateJnt("LeftKneeJnt", "LeftLegIK2Jnt")
    Utils.KGM_DuplicateJnt("LeftAnkleJnt", "LeftLegIK3Jnt")
    pm.parent('LeftLegIK3Jnt','LeftLegIK2Jnt')
    pm.parent('LeftLegIK2Jnt','LeftLegIK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(0, 1.195249, 0.555115), (0, 1.180393, 0.832049), (0, 1.133567, 1.105407), (0, 1.048732, 1.369346), (0, 0.917923, 1.613767), (0, 0.738447, 1.825003), (0, 0.520555, 1.996316), (0, 0.271934, 2.118642), (-1.67422e-006, 0, 2.182925), (-0.13416, 0, 2.16342), (-0.266779, 0, 2.095529), (-0.395472, 0, 1.99807), (-0.518993, 0, 1.858632), (-0.636496, 0, 1.679268), (-0.737632, 0, 1.452024), (-0.819474, 0, 1.166445), (-0.846144, 0, 0.821387), (-0.824602, 0, 0.556128), (-0.749206, 0, 0.167213), (-0.673656, 0, -0.127237), (-0.597808, 0, -0.419587), (-0.545054, 0, -0.746104), (-0.544891, 0, -1.097217), (-0.571904, 0, -1.448294), (-0.512279, 0, -1.753435), (-0.393271, 0, -1.92306), (-0.266839, 0, -2.035747), (-0.133965, 0, -2.097731), (0, 0, -2.120128), (0.133965, 0, -2.097731), (0.266839, 0, -2.035747), (0.393271, 0, -1.92306), (0.512279, 0, -1.753435), (0.571904, 0, -1.448294), (0.544891, 0, -1.097217), (0.545054, 0, -0.746104), (0.597807, 0, -0.419586), (0.673656, 0, -0.127237), (0.749207, 0, 0.167214), (0.824602, 0, 0.556128), (0.793719, 0.309015, 0.555115), (0.711605, 0.597122, 0.555115), (0.58157, 0.845165, 0.555115), (0.410881, 1.034146, 0.555115), (0.212644, 1.153473, 0.555115), (0, 1.195249, 0.555115), (-0.212644, 1.153473, 0.555115), (-0.410881, 1.034146, 0.555115), (-0.58157, 0.845165, 0.555115), (-0.711605, 0.597122, 0.555115), (-0.793719, 0.309015, 0.555115), (-0.822457, 0, 0.555115), (-0.846144, 0, 0.821387), (-0.819474, 0, 1.166445), (-0.737632, 0, 1.452024), (-0.636496, 0, 1.679268), (-0.518993, 0, 1.858632), (-0.395472, 0, 1.99807), (-0.266779, 0, 2.095529), (-0.13416, 0, 2.16342), (-1.67422e-006, 0, 2.182925), (0.134293, 0, 2.163449), (0.266596, 0, 2.09545), (0.395504, 0, 1.9981), (0.519008, 0, 1.858641), (0.636486, 0, 1.679267), (0.737631, 0, 1.452029), (0.819474, 0, 1.166447), (0.846144, 0, 0.82139), (0.824602, 0, 0.556128)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69],d=1)
    pm.rename("curve1","LeftLegIKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("LeftLegIKCtrl")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegIKCtrlGrp", "p")
    pm.addAttr('LeftLegIKCtrl',ln="Twist",at='double')
    pm.setAttr('LeftLegIKCtrl.Twist',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="Stretch",max=10,dv=0,at='double',min=0)
    pm.setAttr('LeftLegIKCtrl.Stretch',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="Squash",max=10,dv=0,at='double',min=0)
    pm.setAttr('LeftLegIKCtrl.Squash',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="UpSlide",at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.UpSlide',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="DwSlide",at='double',min=-9.9)
    pm.setAttr('LeftLegIKCtrl.DwSlide',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="Follow",en="Hip:Root:Fly:World:",at="enum")
    pm.setAttr('LeftLegIKCtrl.Follow',e=1,keyable=True)
    pm.group(em=1,n="LeftLegIKCtrlPoint")
    Utils.KGM_Aline("LeftLegIKCtrl", "LeftLegIKCtrlPoint", "a")
    pm.setAttr("LeftLegIKCtrlPoint.rotateZ",-90)
    pm.parent('LeftLegIKCtrlPoint','LeftLegIKCtrl')
    pm.group(em=1,n="LeftHipIKPoint")
    Utils.KGM_Aline("LeftLegIK1Jnt", "LeftHipIKPoint", "p")
    pm.group(em=1,n="LeftKneeIKPoint")
    Utils.KGM_Aline("LeftLegIK2Jnt", "LeftKneeIKPoint", "p")
    pm.group(em=1,n="LeftAnkleIKPoint")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftAnkleIKPoint", "p")
    pm.group(em=1,n="LeftLegIKPoint")
    Utils.KGM_Aline("LeftLegIK1Jnt", "LeftLegIKPoint", "p")
    pm.ikHandle(ee="LeftLegIK3Jnt",sj="LeftLegIK1Jnt",sol="ikRPsolver",n="LeftLegIKHandle")
    pm.rename("effector1","LeftLegIKEffector")
    pm.createNode('multDoubleLinear',n="LeftLegTwistRev")
    pm.setAttr("LeftLegTwistRev.input2",-1)
    pm.connectAttr('LeftLegIKCtrl.Twist','LeftLegTwistRev.input1',f=1)
    pm.connectAttr('LeftLegTwistRev.output','LeftLegIKHandle.twist',f=1)
    pm.group(em=1,n="LeftLegPoleVectorGrp")
    Utils.KGM_Aline("LeftLegIK1Jnt", "LeftLegPoleVectorGrp", "p")
    pm.group(em=1,n="LeftLegPoleVectorAimGrp")
    Utils.KGM_Aline("LeftLegIK1Jnt", "LeftLegPoleVectorAimGrp", "p")
    pm.group(em=1,n="LeftLegPoleVectorAimUp")
    Utils.KGM_Aline("LeftLegIK1Jnt", "LeftLegPoleVectorAimUp", "p")
    pm.group(em=1,n="LeftLegPoleVectorPoint")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegPoleVectorPoint", "p")
    pm.group(em=1,n="LeftLegPoleVector")
    Utils.KGM_Aline("LeftLegIK1Jnt", "LeftLegPoleVector", "p")
    pm.parent('LeftLegPoleVector','LeftLegPoleVectorAimGrp')
    pm.parent('LeftLegPoleVectorAimGrp','LeftLegPoleVectorGrp')
    pm.parent('LeftLegPoleVectorAimUp','LeftLegPoleVectorGrp')
    pm.parent('LeftLegPoleVectorPoint','LeftLegPoleVectorGrp')
    pm.setAttr("LeftLegPoleVector.translateZ",0.2)
    pm.group(em=1,n="LeftLegIKCtrlWorldPoint")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegIKCtrlWorldPoint", "p")
    pm.group(em=1,n="LeftLegIKCtrlFlyPoint")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegIKCtrlFlyPoint", "p")
    pm.group(em=1,n="LeftLegIKCtrlRootPoint")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegIKCtrlRootPoint", "p")
    pm.group(em=1,n="LeftLegIKCtrlHipPoint")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegIKCtrlHipPoint", "p")
    pm.group(em=1,n="LeftLegFootSystemGrp")
    Utils.KGM_Aline("LeftLegIK3Jnt", "LeftLegFootSystemGrp", "p")
    pm.parent('LeftLegIKCtrlWorldPoint','WorldCtrl')
    pm.parent('LeftLegIKCtrlFlyPoint','FlyCtrl')
    pm.parent('LeftLegIKCtrlRootPoint','RootCtrl')
    pm.parent('LeftLegIKCtrlHipPoint','HipIKCtrl')
    pm.parent('LeftLegFootSystemGrp','LeftLegIKCtrl')
    pm.setAttr("LeftLegFootSystemGrp.rotateY",-90)
    #pointConstraint -n "LeftLegIKCtrlPointCon" -mo -weight 1  LeftLegFootSystemIKPoint LeftLegIKCtrlPoint;
    #follow setDriven key
    pm.parentConstraint('LeftLegIKCtrlHipPoint','LeftLegIKCtrlRootPoint','LeftLegIKCtrlFlyPoint','LeftLegIKCtrlWorldPoint','LeftLegIKCtrlGrp',mo=1,weight=1,n="LeftLegIKCtrlGrpFollowParentCon")
    pm.setAttr("LeftLegIKCtrl.Follow",1)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1",1)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3",0)
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3',currentDriver='LeftLegIKCtrl.Follow')
    pm.setAttr("LeftLegIKCtrl.Follow",2)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2",1)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3",0)
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3',currentDriver='LeftLegIKCtrl.Follow')
    pm.setAttr("LeftLegIKCtrl.Follow",3)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3",1)
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3',currentDriver='LeftLegIKCtrl.Follow')
    pm.setAttr("LeftLegIKCtrl.Follow",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0",1)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2",0)
    pm.setAttr("LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3",0)
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlHipPointW0',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlRootPointW1',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlFlyPointW2',currentDriver='LeftLegIKCtrl.Follow')
    pm.setDrivenKeyframe('LeftLegIKCtrlGrpFollowParentCon.LeftLegIKCtrlWorldPointW3',currentDriver='LeftLegIKCtrl.Follow')
    pm.setAttr("LeftLegIKCtrl.Follow",2)
    #Stretch setDriven key
    pm.pointConstraint('LeftLegIKCtrlPoint','LeftHipIKPoint','LeftLegIKPoint',mo=1,weight=1,n="LeftLegIKPointCon")
    pm.setAttr("LeftLegIKPointCon.offsetY",0)
    pm.setAttr("LeftLegIKPointCon.offsetZ",0)
    pm.setAttr("LeftLegIKCtrl.Stretch",10)
    pm.setAttr("LeftLegIKPointCon.LeftLegIKCtrlPointW0",1)
    pm.setAttr("LeftLegIKPointCon.LeftHipIKPointW1",0)
    pm.setDrivenKeyframe('LeftLegIKPointCon.LeftLegIKCtrlPointW0',currentDriver='LeftLegIKCtrl.Stretch')
    pm.setDrivenKeyframe('LeftLegIKPointCon.LeftHipIKPointW1',currentDriver='LeftLegIKCtrl.Stretch')
    pm.setAttr("LeftLegIKCtrl.Stretch",0)
    pm.setAttr("LeftLegIKPointCon.LeftLegIKCtrlPointW0",0)
    pm.setAttr("LeftLegIKPointCon.LeftHipIKPointW1",1)
    pm.setDrivenKeyframe('LeftLegIKPointCon.LeftLegIKCtrlPointW0',currentDriver='LeftLegIKCtrl.Stretch')
    pm.setDrivenKeyframe('LeftLegIKPointCon.LeftHipIKPointW1',currentDriver='LeftLegIKCtrl.Stretch')
    pm.pointConstraint('LeftLegIKCtrlPoint','LeftLegIKHandle',mo=1,weight=1,n="LeftLegIKHandlePointCon")
    pm.poleVectorConstraint('LeftLegPoleVector','LeftLegIKHandle',weight=1,n="LeftLegPoleVectorAimGrpPoleVecCon")
    pm.aimConstraint('LeftLegIKCtrlPoint','LeftLegPoleVectorAimGrp',weight=1,upVector=(1, 0, 0),mo=1,n="LeftLegPoleVectorAimGrpAimCon",
        worldUpType="objectrotation",worldUpObject='LeftLegPoleVectorAimUp',
        aimVector=(0, -1, 0),
        worldUpVector=(1, 0, 0))
    pm.pointConstraint('LeftLegIKCtrlPoint','LeftLegPoleVectorPoint',mo=1,weight=1,n="LeftLegPoleVectorPointCon")
    #/////////////////////////
    #PolVector set
    #/////////////////////////
    pm.createNode('vectorProduct',n="LeftLegPoleVectorPD")
    pm.setAttr("LeftLegPoleVectorPD.normalizeOutput",1)
    pm.setAttr("LeftLegPoleVectorPD.input1X",1)
    pm.setDrivenKeyframe('LeftLegPoleVectorAimUp',currentDriver="LeftLegPoleVectorPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('LeftLegPoleVectorAimUp',currentDriver="LeftLegPoleVectorPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    pm.connectAttr('LeftLegPoleVectorPoint.translate','LeftLegPoleVectorPD.input2',f=1)
    #/////////////////////////
    #Stretch set
    #/////////////////////////
    pm.createNode('distanceBetween',n="LeftLegIKDis")
    pm.createNode('distanceBetween',n="LeftLegUpDis")
    pm.createNode('distanceBetween',n="LeftLegDwDis")
    pm.connectAttr('LeftHipIKPoint.translate','LeftLegIKDis.point1',f=1)
    pm.connectAttr('LeftLegIKPoint.translate','LeftLegIKDis.point2',f=1)
    pm.connectAttr('LeftHipIKPoint.translate','LeftLegUpDis.point1',f=1)
    pm.connectAttr('LeftKneeIKPoint.translate','LeftLegUpDis.point2',f=1)
    pm.connectAttr('LeftKneeIKPoint.translate','LeftLegDwDis.point1',f=1)
    pm.connectAttr('LeftAnkleIKPoint.translate','LeftLegDwDis.point2',f=1)
    pm.createNode('addDoubleLinear',n="LeftLegDisAdd")
    pm.connectAttr('LeftLegUpDis.distance','LeftLegDisAdd.input1',f=1)
    pm.connectAttr('LeftLegDwDis.distance','LeftLegDisAdd.input2',f=1)
    pm.createNode('condition',n="LeftLegIKCondition")
    pm.setAttr('LeftLegIKCondition.operation',2)
    pm.connectAttr('LeftLegIKDis.distance','LeftLegIKCondition.firstTerm',f=1)
    pm.connectAttr('LeftLegIKDis.distance','LeftLegIKCondition.colorIfTrueR',f=1)
    pm.connectAttr('LeftLegDisAdd.output','LeftLegIKCondition.secondTerm',f=1)
    pm.connectAttr('LeftLegDisAdd.output','LeftLegIKCondition.colorIfTrueG',f=1)
    pm.createNode('multiplyDivide',n="LeftLegStretchDivide")
    pm.setAttr('LeftLegStretchDivide.operation',2)
    pm.connectAttr('LeftLegIKCondition.outColorR','LeftLegStretchDivide.input1X',f=1)
    pm.connectAttr('LeftLegIKCondition.outColorR','LeftLegStretchDivide.input2Y',f=1)
    pm.connectAttr('LeftLegIKCondition.outColorG','LeftLegStretchDivide.input1Y',f=1)
    pm.connectAttr('LeftLegIKCondition.outColorG','LeftLegStretchDivide.input2X',f=1)
    pm.createNode('multDoubleLinear',n="LeftLegUpSlideMulti")
    pm.createNode('multDoubleLinear',n="LeftLegDwSlideMulti")
    pm.setAttr("LeftLegUpSlideMulti.input2",1)
    pm.setAttr("LeftLegDwSlideMulti.input2",1)
    pm.connectAttr('LeftLegStretchDivide.outputX','LeftLegUpSlideMulti.input1',f=1)
    pm.connectAttr('LeftLegStretchDivide.outputX','LeftLegDwSlideMulti.input1',f=1)
    pm.createNode('multDoubleLinear',n="LeftLegUpTXMulti")
    pm.createNode('multDoubleLinear',n="LeftLegDwTXMulti")
    pm.setAttr("LeftLegUpTXMulti.input2",
        pm.getAttr('LeftLegIK2Jnt.translateX'))
    pm.setAttr("LeftLegDwTXMulti.input2",
        pm.getAttr('LeftLegIK3Jnt.translateX'))
    pm.connectAttr('LeftLegUpSlideMulti.output','LeftLegUpTXMulti.input1',f=1)
    pm.connectAttr('LeftLegDwSlideMulti.output','LeftLegDwTXMulti.input1',f=1)
    pm.connectAttr('LeftLegUpTXMulti.output','LeftLegIK2Jnt.translateX',f=1)
    pm.connectAttr('LeftLegDwTXMulti.output','LeftLegIK3Jnt.translateX',f=1)
    #LeftLegSquash
    pm.createNode('blendTwoAttr',n="LeftLegSquashBlend")
    pm.createNode('multDoubleLinear',n="LeftLegSquashMulti")
    pm.setAttr("LeftLegSquashBlend.input[0]",1)
    pm.setAttr("LeftLegSquashMulti.input2",0.1)
    pm.connectAttr('LeftLegIKCtrl.Squash','LeftLegSquashMulti.input1',f=1)
    pm.connectAttr('LeftLegSquashMulti.output','LeftLegSquashBlend.attributesBlender',f=1)
    pm.connectAttr('LeftLegStretchDivide.outputY','LeftLegSquashBlend.input[1]',f=1)
    pm.connectAttr('LeftLegSquashBlend.output','LeftLegIK1Jnt.scaleY',f=1)
    pm.connectAttr('LeftLegSquashBlend.output','LeftLegIK1Jnt.scaleZ',f=1)
    pm.connectAttr('LeftLegSquashBlend.output','LeftLegIK2Jnt.scaleY',f=1)
    pm.connectAttr('LeftLegSquashBlend.output','LeftLegIK2Jnt.scaleZ',f=1)
    #/////////////////////////
    #Slide set
    #/////////////////////////
    pm.setDrivenKeyframe('LeftLegUpSlideMulti',currentDriver="LeftLegIKCtrl.UpSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('LeftLegUpSlideMulti',currentDriver="LeftLegIKCtrl.UpSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setDrivenKeyframe('LeftLegDwSlideMulti',currentDriver="LeftLegIKCtrl.DwSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('LeftLegDwSlideMulti',currentDriver="LeftLegIKCtrl.DwSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setAttr('LeftLegUpSlideMulti_input2.postInfinity',1)
    pm.setAttr('LeftLegDwSlideMulti_input2.postInfinity',1)
    #///////////////////////////
    #outline
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="LeftLegIKGrp")
    Utils.KGM_Aline("LeftHipJnt", "LeftLegIKGrp", "p")
    pm.parent('LeftLegIKCtrlGrp','LeftLegIKGrp')
    pm.parent('LeftHipIKPoint','LeftLegIKGrp')
    pm.parent('LeftKneeIKPoint','LeftLegIKGrp')
    pm.parent('LeftAnkleIKPoint','LeftLegIKGrp')
    pm.parent('LeftLegIKPoint','LeftLegIKGrp')
    pm.parent('LeftLegIKHandle','LeftLegIKGrp')
    pm.parent('LeftLegPoleVectorGrp','LeftLegIKGrp')
    pm.parent('LeftLegIK1Jnt','LeftLegRigJntGrp')
    # RigSysGrp
    pm.parent('LeftLegIKCtrlBaseGrp','LeftLegRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftLegRigSysGrp',ln="LegIKCtrlRadiusX",at='double')
    pm.setAttr('LeftLegRigSysGrp.LegIKCtrlRadiusX',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="LegIKCtrlRadiusY",at='double')
    pm.setAttr('LeftLegRigSysGrp.LegIKCtrlRadiusY',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="LegIKCtrlRadiusZ",at='double')
    pm.setAttr('LeftLegRigSysGrp.LegIKCtrlRadiusZ',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="LegIKCtrlPostionY",at='double')
    pm.setAttr('LeftLegRigSysGrp.LegIKCtrlPostionY',e=1,channelBox=True)
    pm.addAttr('LeftLegRigSysGrp',ln="LegIKCtrlPostionZ",at='double')
    pm.setAttr('LeftLegRigSysGrp.LegIKCtrlPostionZ',e=1,channelBox=True)
    pm.connectAttr('LeftLegRigSysGrp.LegIKCtrlRadiusX','LeftLegIKCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.LegIKCtrlRadiusY','LeftLegIKCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.LegIKCtrlRadiusZ','LeftLegIKCtrlBase.scaleZ',f=1)
    pm.connectAttr('LeftLegRigSysGrp.LegIKCtrlPostionY','LeftLegIKCtrlBase.translateY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.LegIKCtrlPostionZ','LeftLegIKCtrlBase.translateZ',f=1)
    #///////////////////////////
    #default
    #///////////////////////////
    pm.setAttr("LeftLegRigSysGrp.LegIKCtrlRadiusX",0.25)
    pm.setAttr("LeftLegRigSysGrp.LegIKCtrlRadiusY",0.25)
    pm.setAttr("LeftLegRigSysGrp.LegIKCtrlRadiusZ",0.25)
    pm.setAttr("LeftLegRigSysGrp.LegIKCtrlPostionY",-0.333988)
    pm.setAttr("LeftLegRigSysGrp.LegIKCtrlPostionZ",0.222659)