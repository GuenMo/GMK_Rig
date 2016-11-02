import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightArmConnectSet():
    #RightShoulderJnt
    pm.pointConstraint('RightArmUpArcRig1Jnt','RightShoulderJnt',mo=1,weight=1,n="RightShoulderJntPointCon")
    #connectAttr -f RightArmUpArcRig1Jnt.rotate RightShoulderJnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmUpArcRig1JntRotateMulti")
    pm.setAttr("RightArmUpArcRig1JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmUpArcRig1JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmUpArcRig1JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmUpArcRig1Jnt.rotate','RightArmUpArcRig1JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmUpArcRig1JntRotateMulti.output','RightShoulderJnt.rotate',f=1)
    #RightArmUpArc1Jnt
    pm.pointConstraint('RightArmUpArcRig2Jnt','RightArmUpArc1Jnt',mo=1,weight=1,n="RightArmUpArcRig2JntPointCon")
    #connectAttr -f RightArmUpArcRig2Jnt.rotate RightArmUpArc1Jnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmUpArcRig2JntRotateMulti")
    pm.setAttr("RightArmUpArcRig2JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmUpArcRig2JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmUpArcRig2JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmUpArcRig2Jnt.rotate','RightArmUpArcRig2JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmUpArcRig2JntRotateMulti.output','RightArmUpArc1Jnt.rotate',f=1)
    # RightArmUpArc2Jnt
    pm.pointConstraint('RightArmUpArcRig3Jnt','RightArmUpArc2Jnt',mo=1,weight=1,n="RightArmUpArcRig3JntPointCon")
    #connectAttr -f RightArmUpArcRig3Jnt.rotate RightArmUpArc2Jnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmUpArcRig3JntRotateMulti")
    pm.setAttr("RightArmUpArcRig3JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmUpArcRig3JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmUpArcRig3JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmUpArcRig3Jnt.rotate','RightArmUpArcRig3JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmUpArcRig3JntRotateMulti.output','RightArmUpArc2Jnt.rotate',f=1)
    # RightArmUpArc3Jnt
    pm.pointConstraint('RightArmUpArcRig4Jnt','RightArmUpArc3Jnt',mo=1,weight=1,n="RightArmUpArcRig4JntPointCon")
    #connectAttr -f RightArmUpArcRig4Jnt.rotate RightArmUpArc3Jnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmUpArcRig4JntRotateMulti")
    pm.setAttr("RightArmUpArcRig4JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmUpArcRig4JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmUpArcRig4JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmUpArcRig4Jnt.rotate','RightArmUpArcRig4JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmUpArcRig4JntRotateMulti.output','RightArmUpArc3Jnt.rotate',f=1)
    #RightElbowJnt
    pm.pointConstraint('RightArmDwArcRig1Jnt','RightElbowJnt',mo=1,weight=1,n="RightElbowJntPointCon")
    #connectAttr -f RightArmDwArcRig1Jnt.rotate RightElbowJnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmDwArcRig1JntRotateMulti")
    pm.setAttr("RightArmDwArcRig1JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmDwArcRig1JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmDwArcRig1JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmDwArcRig1Jnt.rotate','RightArmDwArcRig1JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmDwArcRig1JntRotateMulti.output','RightElbowJnt.rotate',f=1)
    #RightArmDwArc1Jnt
    pm.pointConstraint('RightArmDwArcRig2Jnt','RightArmDwArc1Jnt',mo=1,weight=1,n="RightArmDwArcRig2JntPointCon")
    #connectAttr -f RightArmDwArcRig2Jnt.rotate RightArmDwArc1Jnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmDwArcRig2JntRotateMulti")
    pm.setAttr("RightArmDwArcRig2JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmDwArcRig2JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmDwArcRig2JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmDwArcRig2Jnt.rotate','RightArmDwArcRig2JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmDwArcRig2JntRotateMulti.output','RightArmDwArc1Jnt.rotate',f=1)
    #RightArmDwArc2Jnt
    pm.pointConstraint('RightArmDwArcRig3Jnt','RightArmDwArc2Jnt',mo=1,weight=1,n="RightArmDwArcRig3JntPointCon")
    #connectAttr -f RightArmDwArcRig3Jnt.rotate RightArmDwArc2Jnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmDwArcRig3JntRotateMulti")
    pm.setAttr("RightArmDwArcRig3JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmDwArcRig3JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmDwArcRig3JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmDwArcRig3Jnt.rotate','RightArmDwArcRig3JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmDwArcRig3JntRotateMulti.output','RightArmDwArc2Jnt.rotate',f=1)
    #RightArmDwArc3Jnt
    pm.pointConstraint('RightArmDwArcRig4Jnt','RightArmDwArc3Jnt',mo=1,weight=1,n="RightArmDwArcRig4JntPointCon")
    #connectAttr -f RightArmDwArcRig4Jnt.rotate RightArmDwArc3Jnt.rotate;
    pm.createNode('multiplyDivide',n="RightArmDwArcRig4JntRotateMulti")
    pm.setAttr("RightArmDwArcRig4JntRotateMulti.input2X",-1)
    pm.setAttr("RightArmDwArcRig4JntRotateMulti.input2Y",1)
    pm.setAttr("RightArmDwArcRig4JntRotateMulti.input2Z",-1)
    pm.connectAttr('RightArmDwArcRig4Jnt.rotate','RightArmDwArcRig4JntRotateMulti.input1',f=1)
    pm.connectAttr('RightArmDwArcRig4JntRotateMulti.output','RightArmDwArc3Jnt.rotate',f=1)
    #///////////////////////////
    #Scale blend
    #///////////////////////////
    #RightShoulderIKFKScaleBlend
    pm.createNode('blendColors',n="RightShoulderIKFKScaleBlend")
    pm.connectAttr('RightArmIKFKCtrl.IKFK','RightShoulderIKFKScaleBlend.blender',f=1)
    pm.connectAttr('RightArmFK1Jnt.scale','RightShoulderIKFKScaleBlend.color1',f=1)
    pm.connectAttr('RightArmIK1Jnt.scale','RightShoulderIKFKScaleBlend.color2',f=1)
    #RightShoulderJnt
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputG','RightShoulderJnt.scaleY',f=1)
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputB','RightShoulderJnt.scaleZ',f=1)
    #RightArmUpArc1Jnt
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputG','RightArmUpArc1Jnt.scaleY',f=1)
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputB','RightArmUpArc1Jnt.scaleZ',f=1)
    #RightArmUpArc2Jnt
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputG','RightArmUpArc2Jnt.scaleY',f=1)
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputB','RightArmUpArc2Jnt.scaleZ',f=1)
    #RightArmUpArc3Jnt
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputG','RightArmUpArc3Jnt.scaleY',f=1)
    pm.connectAttr('RightShoulderIKFKScaleBlend.outputB','RightArmUpArc3Jnt.scaleZ',f=1)
    #RightElbowIKFKScaleBlend
    pm.createNode('blendColors',n="RightElbowIKFKScaleBlend")
    pm.connectAttr('RightArmIKFKCtrl.IKFK','RightElbowIKFKScaleBlend.blender',f=1)
    pm.connectAttr('RightArmFK2Jnt.scale','RightElbowIKFKScaleBlend.color1',f=1)
    pm.connectAttr('RightArmIK2Jnt.scale','RightElbowIKFKScaleBlend.color2',f=1)
    #RightKneeJnt
    pm.connectAttr('RightElbowIKFKScaleBlend.outputG','RightElbowJnt.scaleY',f=1)
    pm.connectAttr('RightElbowIKFKScaleBlend.outputB','RightElbowJnt.scaleZ',f=1)
    #RightLegDwArc1Jnt
    pm.connectAttr('RightElbowIKFKScaleBlend.outputG','RightArmDwArc1Jnt.scaleY',f=1)
    pm.connectAttr('RightElbowIKFKScaleBlend.outputB','RightArmDwArc1Jnt.scaleZ',f=1)
    #RightLegDwArc2Jnt
    pm.connectAttr('RightElbowIKFKScaleBlend.outputG','RightArmDwArc2Jnt.scaleY',f=1)
    pm.connectAttr('RightElbowIKFKScaleBlend.outputB','RightArmDwArc2Jnt.scaleZ',f=1)
    #RightLegDwArc3Jnt
    pm.connectAttr('RightElbowIKFKScaleBlend.outputG','RightArmDwArc3Jnt.scaleY',f=1)
    pm.connectAttr('RightElbowIKFKScaleBlend.outputB','RightArmDwArc3Jnt.scaleZ',f=1)
    pm.setAttr("RightShoulderJntPointCon.offsetX",0)
    pm.setAttr("RightShoulderJntPointCon.offsetY",0)
    pm.setAttr("RightShoulderJntPointCon.offsetZ",0)