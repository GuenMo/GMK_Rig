import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightLegIKSet():
    #/////////////////////////
    #IK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightHipJnt", "RightLegIK1Jnt")
    Utils.KGM_DuplicateJnt("RightKneeJnt", "RightLegIK2Jnt")
    Utils.KGM_DuplicateJnt("RightAnkleJnt", "RightLegIK3Jnt")
    pm.parent('RightLegIK3Jnt','RightLegIK2Jnt')
    pm.parent('RightLegIK2Jnt','RightLegIK1Jnt')
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.curve(p=[(0, 1.195249, 0.555115), (0, 1.180393, 0.832049), (0, 1.133567, 1.105407), (0, 1.048732, 1.369346), (0, 0.917923, 1.613767), (0, 0.738447, 1.825003), (0, 0.520555, 1.996316), (0, 0.271934, 2.118642), (-1.67422e-006, 0, 2.182925), (-0.13416, 0, 2.16342), (-0.266779, 0, 2.095529), (-0.395472, 0, 1.99807), (-0.518993, 0, 1.858632), (-0.636496, 0, 1.679268), (-0.737632, 0, 1.452024), (-0.819474, 0, 1.166445), (-0.846144, 0, 0.821387), (-0.824602, 0, 0.556128), (-0.749206, 0, 0.167213), (-0.673656, 0, -0.127237), (-0.597808, 0, -0.419587), (-0.545054, 0, -0.746104), (-0.544891, 0, -1.097217), (-0.571904, 0, -1.448294), (-0.512279, 0, -1.753435), (-0.393271, 0, -1.92306), (-0.266839, 0, -2.035747), (-0.133965, 0, -2.097731), (0, 0, -2.120128), (0.133965, 0, -2.097731), (0.266839, 0, -2.035747), (0.393271, 0, -1.92306), (0.512279, 0, -1.753435), (0.571904, 0, -1.448294), (0.544891, 0, -1.097217), (0.545054, 0, -0.746104), (0.597807, 0, -0.419586), (0.673656, 0, -0.127237), (0.749207, 0, 0.167214), (0.824602, 0, 0.556128), (0.793719, 0.309015, 0.555115), (0.711605, 0.597122, 0.555115), (0.58157, 0.845165, 0.555115), (0.410881, 1.034146, 0.555115), (0.212644, 1.153473, 0.555115), (0, 1.195249, 0.555115), (-0.212644, 1.153473, 0.555115), (-0.410881, 1.034146, 0.555115), (-0.58157, 0.845165, 0.555115), (-0.711605, 0.597122, 0.555115), (-0.793719, 0.309015, 0.555115), (-0.822457, 0, 0.555115), (-0.846144, 0, 0.821387), (-0.819474, 0, 1.166445), (-0.737632, 0, 1.452024), (-0.636496, 0, 1.679268), (-0.518993, 0, 1.858632), (-0.395472, 0, 1.99807), (-0.266779, 0, 2.095529), (-0.13416, 0, 2.16342), (-1.67422e-006, 0, 2.182925), (0.134293, 0, 2.163449), (0.266596, 0, 2.09545), (0.395504, 0, 1.9981), (0.519008, 0, 1.858641), (0.636486, 0, 1.679267), (0.737631, 0, 1.452029), (0.819474, 0, 1.166447), (0.846144, 0, 0.82139), (0.824602, 0, 0.556128)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69],d=1)
    pm.rename("curve1","RightLegIKCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RightLegIKCtrl")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegIKCtrlGrp", "p")
    pm.addAttr('RightLegIKCtrl',ln="Twist",at='double')
    pm.setAttr('RightLegIKCtrl.Twist',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="Stretch",max=10,dv=0,at='double',min=0)
    pm.setAttr('RightLegIKCtrl.Stretch',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="Squash",max=10,dv=0,at='double',min=0)
    pm.setAttr('RightLegIKCtrl.Squash',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="UpSlide",at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.UpSlide',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="DwSlide",at='double',min=-9.9)
    pm.setAttr('RightLegIKCtrl.DwSlide',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="Follow",en="Hip:Root:Fly:World:",at="enum")
    pm.setAttr('RightLegIKCtrl.Follow',e=1,keyable=True)
    pm.group(em=1,n="RightLegIKCtrlPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegIKCtrlPoint", "p")
    pm.setAttr("RightLegIKCtrlPoint.rotateX",180)
    pm.setAttr("RightLegIKCtrlPoint.rotateY",0)
    pm.setAttr("RightLegIKCtrlPoint.rotateZ",90)
    pm.parent('RightLegIKCtrlPoint','RightLegIKCtrl')
    pm.group(em=1,n="RightHipIKPoint")
    Utils.KGM_Aline("RightLegIK1Jnt", "RightHipIKPoint", "p")
    pm.group(em=1,n="RightKneeIKPoint")
    Utils.KGM_Aline("RightLegIK2Jnt", "RightKneeIKPoint", "p")
    pm.group(em=1,n="RightAnkleIKPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightAnkleIKPoint", "p")
    pm.group(em=1,n="RightLegIKPoint")
    Utils.KGM_Aline("RightLegIK1Jnt", "RightLegIKPoint", "p")
    pm.ikHandle(ee="RightLegIK3Jnt",sj="RightLegIK1Jnt",sol="ikRPsolver",n="RightLegIKHandle")
    pm.rename("effector1","RightLegIKEffector")
    pm.createNode('multDoubleLinear',n="RightLegTwistRev")
    pm.setAttr("RightLegTwistRev.input2",1)
    pm.connectAttr('RightLegIKCtrl.Twist','RightLegTwistRev.input1',f=1)
    pm.connectAttr('RightLegTwistRev.output','RightLegIKHandle.twist',f=1)
    pm.group(em=1,n="RightLegPoleVectorGrp")
    Utils.KGM_Aline("RightLegIK1Jnt", "RightLegPoleVectorGrp", "p")
    pm.group(em=1,n="RightLegPoleVectorAimGrp")
    Utils.KGM_Aline("RightLegIK1Jnt", "RightLegPoleVectorAimGrp", "p")
    pm.group(em=1,n="RightLegPoleVectorAimUp")
    Utils.KGM_Aline("RightLegIK1Jnt", "RightLegPoleVectorAimUp", "p")
    pm.group(em=1,n="RightLegPoleVectorPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegPoleVectorPoint", "p")
    pm.group(em=1,n="RightLegPoleVector")
    Utils.KGM_Aline("RightLegIK1Jnt", "RightLegPoleVector", "p")
    pm.parent('RightLegPoleVector','RightLegPoleVectorAimGrp')
    pm.parent('RightLegPoleVectorAimGrp','RightLegPoleVectorGrp')
    pm.parent('RightLegPoleVectorAimUp','RightLegPoleVectorGrp')
    pm.parent('RightLegPoleVectorPoint','RightLegPoleVectorGrp')
    pm.setAttr("RightLegPoleVector.translateZ",0.2)
    pm.group(em=1,n="RightLegIKCtrlWorldPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegIKCtrlWorldPoint", "p")
    pm.group(em=1,n="RightLegIKCtrlFlyPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegIKCtrlFlyPoint", "p")
    pm.group(em=1,n="RightLegIKCtrlRootPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegIKCtrlRootPoint", "p")
    pm.group(em=1,n="RightLegIKCtrlHipPoint")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegIKCtrlHipPoint", "p")
    pm.group(em=1,n="RightLegFootSystemGrp")
    Utils.KGM_Aline("RightLegIK3Jnt", "RightLegFootSystemGrp", "p")
    pm.parent('RightLegIKCtrlWorldPoint','WorldCtrl')
    pm.parent('RightLegIKCtrlFlyPoint','FlyCtrl')
    pm.parent('RightLegIKCtrlRootPoint','RootCtrl')
    pm.parent('RightLegIKCtrlHipPoint','HipIKCtrl')
    pm.parent('RightLegFootSystemGrp','RightLegIKCtrl')
    pm.setAttr("RightLegFootSystemGrp.rotateX",-180)
    pm.setAttr("RightLegFootSystemGrp.rotateY",90)
    #pointConstraint -n "RightLegIKCtrlPointCon" -mo -weight 1  RightLegFootSystemIKPoint RightLegIKCtrlPoint;
    #follow setDriven key
    pm.parentConstraint('RightLegIKCtrlHipPoint','RightLegIKCtrlRootPoint','RightLegIKCtrlFlyPoint','RightLegIKCtrlWorldPoint','RightLegIKCtrlGrp',mo=1,weight=1,n="RightLegIKCtrlGrpFollowParentCon")
    pm.setAttr("RightLegIKCtrl.Follow",1)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1",1)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3",0)
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3',currentDriver='RightLegIKCtrl.Follow')
    pm.setAttr("RightLegIKCtrl.Follow",2)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2",1)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3",0)
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3',currentDriver='RightLegIKCtrl.Follow')
    pm.setAttr("RightLegIKCtrl.Follow",3)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3",1)
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3',currentDriver='RightLegIKCtrl.Follow')
    pm.setAttr("RightLegIKCtrl.Follow",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0",1)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2",0)
    pm.setAttr("RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3",0)
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlHipPointW0',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlRootPointW1',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlFlyPointW2',currentDriver='RightLegIKCtrl.Follow')
    pm.setDrivenKeyframe('RightLegIKCtrlGrpFollowParentCon.RightLegIKCtrlWorldPointW3',currentDriver='RightLegIKCtrl.Follow')
    pm.setAttr("RightLegIKCtrl.Follow",2)
    #Stretch setDriven key
    pm.pointConstraint('RightLegIKCtrlPoint','RightHipIKPoint','RightLegIKPoint',mo=1,weight=1,n="RightLegIKPointCon")
    pm.setAttr("RightLegIKPointCon.offsetY",0)
    pm.setAttr("RightLegIKPointCon.offsetZ",0)
    pm.setAttr("RightLegIKCtrl.Stretch",10)
    pm.setAttr("RightLegIKPointCon.RightLegIKCtrlPointW0",1)
    pm.setAttr("RightLegIKPointCon.RightHipIKPointW1",0)
    pm.setDrivenKeyframe('RightLegIKPointCon.RightLegIKCtrlPointW0',currentDriver='RightLegIKCtrl.Stretch')
    pm.setDrivenKeyframe('RightLegIKPointCon.RightHipIKPointW1',currentDriver='RightLegIKCtrl.Stretch')
    pm.setAttr("RightLegIKCtrl.Stretch",0)
    pm.setAttr("RightLegIKPointCon.RightLegIKCtrlPointW0",0)
    pm.setAttr("RightLegIKPointCon.RightHipIKPointW1",1)
    pm.setDrivenKeyframe('RightLegIKPointCon.RightLegIKCtrlPointW0',currentDriver='RightLegIKCtrl.Stretch')
    pm.setDrivenKeyframe('RightLegIKPointCon.RightHipIKPointW1',currentDriver='RightLegIKCtrl.Stretch')
    pm.pointConstraint('RightLegIKCtrlPoint','RightLegIKHandle',mo=1,weight=1,n="RightLegIKHandlePointCon")
    pm.poleVectorConstraint('RightLegPoleVector','RightLegIKHandle',weight=1,n="RightLegPoleVectorAimGrpPoleVecCon")
    pm.aimConstraint('RightLegIKCtrlPoint','RightLegPoleVectorAimGrp',weight=1,upVector=(1, 0, 0),mo=1,n="RightLegPoleVectorAimGrpAimCon",
        worldUpType="objectrotation",worldUpObject='RightLegPoleVectorAimUp',
        aimVector=(0, -1, 0),
        worldUpVector=(1, 0, 0))
    pm.pointConstraint('RightLegIKCtrlPoint','RightLegPoleVectorPoint',mo=1,weight=1,n="RightLegPoleVectorPointCon")
    #/////////////////////////
    #PolVector set
    #/////////////////////////
    pm.createNode('vectorProduct',n="RightLegPoleVectorPD")
    pm.setAttr("RightLegPoleVectorPD.normalizeOutput",1)
    pm.setAttr("RightLegPoleVectorPD.input1X",1)
    pm.setDrivenKeyframe('RightLegPoleVectorAimUp',currentDriver="RightLegPoleVectorPD.outputX",
        attribute="rotateZ",
        value=-90,
        driverValue=-1)
    pm.setDrivenKeyframe('RightLegPoleVectorAimUp',currentDriver="RightLegPoleVectorPD.outputX",
        attribute="rotateZ",
        value=90,
        driverValue=1)
    pm.connectAttr('RightLegPoleVectorPoint.translate','RightLegPoleVectorPD.input2',f=1)
    #/////////////////////////
    #Stretch set
    #/////////////////////////
    pm.createNode('distanceBetween',n="RightLegIKDis")
    pm.createNode('distanceBetween',n="RightLegUpDis")
    pm.createNode('distanceBetween',n="RightLegDwDis")
    pm.connectAttr('RightHipIKPoint.translate','RightLegIKDis.point1',f=1)
    pm.connectAttr('RightLegIKPoint.translate','RightLegIKDis.point2',f=1)
    pm.connectAttr('RightHipIKPoint.translate','RightLegUpDis.point1',f=1)
    pm.connectAttr('RightKneeIKPoint.translate','RightLegUpDis.point2',f=1)
    pm.connectAttr('RightKneeIKPoint.translate','RightLegDwDis.point1',f=1)
    pm.connectAttr('RightAnkleIKPoint.translate','RightLegDwDis.point2',f=1)
    pm.createNode('addDoubleLinear',n="RightLegDisAdd")
    pm.connectAttr('RightLegUpDis.distance','RightLegDisAdd.input1',f=1)
    pm.connectAttr('RightLegDwDis.distance','RightLegDisAdd.input2',f=1)
    pm.createNode('condition',n="RightLegIKCondition")
    pm.setAttr('RightLegIKCondition.operation',2)
    pm.connectAttr('RightLegIKDis.distance','RightLegIKCondition.firstTerm',f=1)
    pm.connectAttr('RightLegIKDis.distance','RightLegIKCondition.colorIfTrueR',f=1)
    pm.connectAttr('RightLegDisAdd.output','RightLegIKCondition.secondTerm',f=1)
    pm.connectAttr('RightLegDisAdd.output','RightLegIKCondition.colorIfTrueG',f=1)
    pm.createNode('multiplyDivide',n="RightLegStretchDivide")
    pm.setAttr('RightLegStretchDivide.operation',2)
    pm.connectAttr('RightLegIKCondition.outColorR','RightLegStretchDivide.input1X',f=1)
    pm.connectAttr('RightLegIKCondition.outColorR','RightLegStretchDivide.input2Y',f=1)
    pm.connectAttr('RightLegIKCondition.outColorG','RightLegStretchDivide.input1Y',f=1)
    pm.connectAttr('RightLegIKCondition.outColorG','RightLegStretchDivide.input2X',f=1)
    pm.createNode('multDoubleLinear',n="RightLegUpSlideMulti")
    pm.createNode('multDoubleLinear',n="RightLegDwSlideMulti")
    pm.setAttr("RightLegUpSlideMulti.input2",1)
    pm.setAttr("RightLegDwSlideMulti.input2",1)
    pm.connectAttr('RightLegStretchDivide.outputX','RightLegUpSlideMulti.input1',f=1)
    pm.connectAttr('RightLegStretchDivide.outputX','RightLegDwSlideMulti.input1',f=1)
    pm.createNode('multDoubleLinear',n="RightLegUpTXMulti")
    pm.createNode('multDoubleLinear',n="RightLegDwTXMulti")
    pm.setAttr("RightLegUpTXMulti.input2",
        pm.getAttr('RightLegIK2Jnt.translateX'))
    pm.setAttr("RightLegDwTXMulti.input2",
        pm.getAttr('RightLegIK3Jnt.translateX'))
    pm.connectAttr('RightLegUpSlideMulti.output','RightLegUpTXMulti.input1',f=1)
    pm.connectAttr('RightLegDwSlideMulti.output','RightLegDwTXMulti.input1',f=1)
    pm.connectAttr('RightLegUpTXMulti.output','RightLegIK2Jnt.translateX',f=1)
    pm.connectAttr('RightLegDwTXMulti.output','RightLegIK3Jnt.translateX',f=1)
    #RightLegSquash
    pm.createNode('blendTwoAttr',n="RightLegSquashBlend")
    pm.createNode('multDoubleLinear',n="RightLegSquashMulti")
    pm.setAttr("RightLegSquashBlend.input[0]",1)
    pm.setAttr("RightLegSquashMulti.input2",0.1)
    pm.connectAttr('RightLegIKCtrl.Squash','RightLegSquashMulti.input1',f=1)
    pm.connectAttr('RightLegSquashMulti.output','RightLegSquashBlend.attributesBlender',f=1)
    pm.connectAttr('RightLegStretchDivide.outputY','RightLegSquashBlend.input[1]',f=1)
    pm.connectAttr('RightLegSquashBlend.output','RightLegIK1Jnt.scaleY',f=1)
    pm.connectAttr('RightLegSquashBlend.output','RightLegIK1Jnt.scaleZ',f=1)
    pm.connectAttr('RightLegSquashBlend.output','RightLegIK2Jnt.scaleY',f=1)
    pm.connectAttr('RightLegSquashBlend.output','RightLegIK2Jnt.scaleZ',f=1)
    #/////////////////////////
    #Slide set
    #/////////////////////////
    pm.setDrivenKeyframe('RightLegUpSlideMulti',currentDriver="RightLegIKCtrl.UpSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('RightLegUpSlideMulti',currentDriver="RightLegIKCtrl.UpSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setDrivenKeyframe('RightLegDwSlideMulti',currentDriver="RightLegIKCtrl.DwSlide",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setDrivenKeyframe('RightLegDwSlideMulti',currentDriver="RightLegIKCtrl.DwSlide",
        attribute="input2",
        value=0,
        driverValue=-10)
    pm.setAttr('RightLegUpSlideMulti_input2.postInfinity',1)
    pm.setAttr('RightLegDwSlideMulti_input2.postInfinity',1)
    #///////////////////////////
    #outline
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="RightLegIKGrp")
    Utils.KGM_Aline("RightHipJnt", "RightLegIKGrp", "p")
    pm.parent('RightLegIKCtrlGrp','RightLegIKGrp')
    pm.parent('RightHipIKPoint','RightLegIKGrp')
    pm.parent('RightKneeIKPoint','RightLegIKGrp')
    pm.parent('RightAnkleIKPoint','RightLegIKGrp')
    pm.parent('RightLegIKPoint','RightLegIKGrp')
    pm.parent('RightLegIKHandle','RightLegIKGrp')
    pm.parent('RightLegPoleVectorGrp','RightLegIKGrp')
    pm.parent('RightLegIK1Jnt','RightLegRigJntGrp')
    # RigSysGrp
    pm.parent('RightLegIKCtrlBaseGrp','RightLegRigSysGrp')
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightLegRigSysGrp',ln="LegIKCtrlRadiusX",at='double')
    pm.setAttr('RightLegRigSysGrp.LegIKCtrlRadiusX',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="LegIKCtrlRadiusY",at='double')
    pm.setAttr('RightLegRigSysGrp.LegIKCtrlRadiusY',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="LegIKCtrlRadiusZ",at='double')
    pm.setAttr('RightLegRigSysGrp.LegIKCtrlRadiusZ',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="LegIKCtrlPostionY",at='double')
    pm.setAttr('RightLegRigSysGrp.LegIKCtrlPostionY',e=1,channelBox=True)
    pm.addAttr('RightLegRigSysGrp',ln="LegIKCtrlPostionZ",at='double')
    pm.setAttr('RightLegRigSysGrp.LegIKCtrlPostionZ',e=1,channelBox=True)
    pm.connectAttr('RightLegRigSysGrp.LegIKCtrlRadiusX','RightLegIKCtrlBase.scaleX',f=1)
    pm.connectAttr('RightLegRigSysGrp.LegIKCtrlRadiusY','RightLegIKCtrlBase.scaleY',f=1)
    pm.connectAttr('RightLegRigSysGrp.LegIKCtrlRadiusZ','RightLegIKCtrlBase.scaleZ',f=1)
    pm.connectAttr('RightLegRigSysGrp.LegIKCtrlPostionY','RightLegIKCtrlBase.translateY',f=1)
    pm.connectAttr('RightLegRigSysGrp.LegIKCtrlPostionZ','RightLegIKCtrlBase.translateZ',f=1)
    #///////////////////////////
    #default 
    #///////////////////////////
    pm.setAttr("RightLegRigSysGrp.LegIKCtrlRadiusX",0.25)
    pm.setAttr("RightLegRigSysGrp.LegIKCtrlRadiusY",0.25)
    pm.setAttr("RightLegRigSysGrp.LegIKCtrlRadiusZ",0.25)
    pm.setAttr("RightLegRigSysGrp.LegIKCtrlPostionY",-0.333988)
    pm.setAttr("RightLegRigSysGrp.LegIKCtrlPostionZ",0.222659)