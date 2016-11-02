import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftArmConnectSet():
    #LeftShoulderJnt
    #connectAttr -f LeftArmUpArcRig1Jnt.rotate LeftShoulderJnt.rotate;
    pm.pointConstraint('LeftArmUpArcRig1Jnt','LeftShoulderJnt',mo=1,weight=1,n="LeftShoulderJntPointCon")
    pm.createNode('multiplyDivide',n="LeftArmUpArcRig1JntRotateMulti")
    pm.setAttr("LeftArmUpArcRig1JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmUpArcRig1JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmUpArcRig1JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmUpArcRig1Jnt.rotate','LeftArmUpArcRig1JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmUpArcRig1JntRotateMulti.output','LeftShoulderJnt.rotate',f=1)
    #LeftArmUpArc1Jnt
    pm.pointConstraint('LeftArmUpArcRig2Jnt','LeftArmUpArc1Jnt',mo=1,weight=1,n="LeftArmUpArcRig2JntPointCon")
    #connectAttr -f LeftArmUpArcRig2Jnt.rotate LeftArmUpArc1Jnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmUpArcRig2JntRotateMulti")
    pm.setAttr("LeftArmUpArcRig2JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmUpArcRig2JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmUpArcRig2JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmUpArcRig2Jnt.rotate','LeftArmUpArcRig2JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmUpArcRig2JntRotateMulti.output','LeftArmUpArc1Jnt.rotate',f=1)
    # LeftArmUpArc2Jnt
    pm.pointConstraint('LeftArmUpArcRig3Jnt','LeftArmUpArc2Jnt',mo=1,weight=1,n="LeftArmUpArcRig3JntPointCon")
    #connectAttr -f LeftArmUpArcRig3Jnt.rotate LeftArmUpArc2Jnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmUpArcRig3JntRotateMulti")
    pm.setAttr("LeftArmUpArcRig3JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmUpArcRig3JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmUpArcRig3JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmUpArcRig3Jnt.rotate','LeftArmUpArcRig3JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmUpArcRig3JntRotateMulti.output','LeftArmUpArc2Jnt.rotate',f=1)
    # LeftArmUpArc3Jnt
    pm.pointConstraint('LeftArmUpArcRig4Jnt','LeftArmUpArc3Jnt',mo=1,weight=1,n="LeftArmUpArcRig4JntPointCon")
    #connectAttr -f LeftArmUpArcRig4Jnt.rotate LeftArmUpArc3Jnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmUpArcRig4JntRotateMulti")
    pm.setAttr("LeftArmUpArcRig4JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmUpArcRig4JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmUpArcRig4JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmUpArcRig4Jnt.rotate','LeftArmUpArcRig4JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmUpArcRig4JntRotateMulti.output','LeftArmUpArc3Jnt.rotate',f=1)
    #LeftElbowJnt
    pm.pointConstraint('LeftArmDwArcRig1Jnt','LeftElbowJnt',mo=1,weight=1,n="LeftElbowJntPointCon")
    #connectAttr -f LeftArmDwArcRig1Jnt.rotate LeftElbowJnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmDwArcRig1JntRotateMulti")
    pm.setAttr("LeftArmDwArcRig1JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmDwArcRig1JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmDwArcRig1JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmDwArcRig1Jnt.rotate','LeftArmDwArcRig1JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmDwArcRig1JntRotateMulti.output','LeftElbowJnt.rotate',f=1)
    #LeftArmDwArc1Jnt
    pm.pointConstraint('LeftArmDwArcRig2Jnt','LeftArmDwArc1Jnt',mo=1,weight=1,n="LeftArmDwArcRig2JntPointCon")
    #connectAttr -f LeftArmDwArcRig2Jnt.rotate LeftArmDwArc1Jnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmDwArcRig2JntRotateMulti")
    pm.setAttr("LeftArmDwArcRig2JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmDwArcRig2JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmDwArcRig2JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmDwArcRig2Jnt.rotate','LeftArmDwArcRig2JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmDwArcRig2JntRotateMulti.output','LeftArmDwArc1Jnt.rotate',f=1)
    #LeftArmDwArc2Jnt
    pm.pointConstraint('LeftArmDwArcRig3Jnt','LeftArmDwArc2Jnt',mo=1,weight=1,n="LeftArmDwArcRig3JntPointCon")
    #connectAttr -f LeftArmDwArcRig3Jnt.rotate LeftArmDwArc2Jnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmDwArcRig3JntRotateMulti")
    pm.setAttr("LeftArmDwArcRig3JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmDwArcRig3JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmDwArcRig3JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmDwArcRig3Jnt.rotate','LeftArmDwArcRig3JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmDwArcRig3JntRotateMulti.output','LeftArmDwArc2Jnt.rotate',f=1)
    #LeftArmDwArc3Jnt
    pm.pointConstraint('LeftArmDwArcRig4Jnt','LeftArmDwArc3Jnt',mo=1,weight=1,n="LeftArmDwArcRig4JntPointCon")
    #connectAttr -f LeftArmDwArcRig4Jnt.rotate LeftArmDwArc3Jnt.rotate;
    pm.createNode('multiplyDivide',n="LeftArmDwArcRig4JntRotateMulti")
    pm.setAttr("LeftArmDwArcRig4JntRotateMulti.input2X",1)
    pm.setAttr("LeftArmDwArcRig4JntRotateMulti.input2Y",1)
    pm.setAttr("LeftArmDwArcRig4JntRotateMulti.input2Z",1)
    pm.connectAttr('LeftArmDwArcRig4Jnt.rotate','LeftArmDwArcRig4JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftArmDwArcRig4JntRotateMulti.output','LeftArmDwArc3Jnt.rotate',f=1)
    #///////////////////////////
    #Scale blend
    #///////////////////////////
    #LeftShoulderIKFKScaleBlend
    pm.createNode('blendColors',n="LeftShoulderIKFKScaleBlend")
    pm.connectAttr('LeftArmIKFKCtrl.IKFK','LeftShoulderIKFKScaleBlend.blender',f=1)
    pm.connectAttr('LeftArmFK1Jnt.scale','LeftShoulderIKFKScaleBlend.color1',f=1)
    pm.connectAttr('LeftArmIK1Jnt.scale','LeftShoulderIKFKScaleBlend.color2',f=1)
    #LeftShoulderJnt
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputG','LeftShoulderJnt.scaleY',f=1)
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputB','LeftShoulderJnt.scaleZ',f=1)
    #LeftArmUpArc1Jnt
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputG','LeftArmUpArc1Jnt.scaleY',f=1)
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputB','LeftArmUpArc1Jnt.scaleZ',f=1)
    #LeftArmUpArc2Jnt
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputG','LeftArmUpArc2Jnt.scaleY',f=1)
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputB','LeftArmUpArc2Jnt.scaleZ',f=1)
    #LeftArmUpArc3Jnt
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputG','LeftArmUpArc3Jnt.scaleY',f=1)
    pm.connectAttr('LeftShoulderIKFKScaleBlend.outputB','LeftArmUpArc3Jnt.scaleZ',f=1)
    #LeftElbowIKFKScaleBlend
    pm.createNode('blendColors',n="LeftElbowIKFKScaleBlend")
    pm.connectAttr('LeftArmIKFKCtrl.IKFK','LeftElbowIKFKScaleBlend.blender',f=1)
    pm.connectAttr('LeftArmFK2Jnt.scale','LeftElbowIKFKScaleBlend.color1',f=1)
    pm.connectAttr('LeftArmIK2Jnt.scale','LeftElbowIKFKScaleBlend.color2',f=1)
    #LeftKneeJnt
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputG','LeftElbowJnt.scaleY',f=1)
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputB','LeftElbowJnt.scaleZ',f=1)
    #LeftLegDwArc1Jnt
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputG','LeftArmDwArc1Jnt.scaleY',f=1)
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputB','LeftArmDwArc1Jnt.scaleZ',f=1)
    #LeftLegDwArc2Jnt
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputG','LeftArmDwArc2Jnt.scaleY',f=1)
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputB','LeftArmDwArc2Jnt.scaleZ',f=1)
    #LeftLegDwArc3Jnt
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputG','LeftArmDwArc3Jnt.scaleY',f=1)
    pm.connectAttr('LeftElbowIKFKScaleBlend.outputB','LeftArmDwArc3Jnt.scaleZ',f=1)
    pm.setAttr("LeftShoulderJntPointCon.offsetX",0)
    pm.setAttr("LeftShoulderJntPointCon.offsetY",0)
    pm.setAttr("LeftShoulderJntPointCon.offsetZ",0)
    


