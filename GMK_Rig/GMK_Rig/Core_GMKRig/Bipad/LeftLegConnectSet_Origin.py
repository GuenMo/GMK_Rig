import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftLegConnectSet():
    #LeftHipJnt
    pm.parentConstraint('LeftLegHipLockOrient','LeftHipJnt',mo=1,weight=1,n="LeftHipJntParentCon")
    #LeftLegUpArc1Jnt
    pm.parentConstraint('LeftLegUpArcRig2Jnt','LeftLegUpArc1Jnt',mo=1,weight=1,n="LeftLegUpArc1JntParentCon")
    # LeftLegUpArc2Jnt
    pm.pointConstraint('LeftLegUpArcRig3Jnt','LeftLegUpArc2Jnt',mo=1,weight=1,n="LeftLegUpArc2JntPointCon")
    pm.createNode('multiplyDivide',n="LeftLegUpArcRig3JntRotateMulti")
    pm.connectAttr('LeftLegUpArcRig3Jnt.rotate','LeftLegUpArcRig3JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftLegUpArcRig3JntRotateMulti.output','LeftLegUpArc2Jnt.rotate',f=1)
    # LeftLegUpArc3Jnt
    pm.pointConstraint('LeftLegUpArcRig4Jnt','LeftLegUpArc3Jnt',mo=1,weight=1,n="LeftLegUpArc3JntPointCon")
    pm.createNode('multiplyDivide',n="LeftLegUpArcRig4JntRotateMulti")
    pm.connectAttr('LeftLegUpArcRig4Jnt.rotate','LeftLegUpArcRig4JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftLegUpArcRig4JntRotateMulti.output','LeftLegUpArc3Jnt.rotate',f=1)
    #LeftKneeJnt
    pm.pointConstraint('LeftLegDwArcRig1Jnt','LeftKneeJnt',mo=1,weight=1,n="LeftKneeJntPointCon")
    pm.createNode('multiplyDivide',n="LeftLegDwArcRig1JntRotateMulti")
    pm.connectAttr('LeftLegDwArcRig1Jnt.rotate','LeftLegDwArcRig1JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftLegDwArcRig1JntRotateMulti.output','LeftKneeJnt.rotate',f=1)
    #LeftLegDwArc1Jnt
    pm.pointConstraint('LeftLegDwArcRig2Jnt','LeftLegDwArc1Jnt',mo=1,weight=1,n="LeftLegDwArc1JntPointCon")
    pm.createNode('multiplyDivide',n="LeftLegDwArcRig2JntRotateMulti")
    pm.connectAttr('LeftLegDwArcRig2Jnt.rotate','LeftLegDwArcRig2JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftLegDwArcRig2JntRotateMulti.output','LeftLegDwArc1Jnt.rotate',f=1)
    #LeftLegDwArc2Jnt
    pm.pointConstraint('LeftLegDwArcRig3Jnt','LeftLegDwArc2Jnt',mo=1,weight=1,n="LeftLegDwArc2JntPointCon")
    pm.createNode('multiplyDivide',n="LeftLegDwArcRig3JntRotateMulti")
    pm.connectAttr('LeftLegDwArcRig3Jnt.rotate','LeftLegDwArcRig3JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftLegDwArcRig3JntRotateMulti.output','LeftLegDwArc2Jnt.rotate',f=1)
    #LeftLegDwArc3Jnt
    pm.pointConstraint('LeftLegDwArcRig4Jnt','LeftLegDwArc3Jnt',mo=1,weight=1,n="LeftLegDwArc3JntPointCon")
    pm.createNode('multiplyDivide',n="LeftLegDwArcRig4JntRotateMulti")
    pm.connectAttr('LeftLegDwArcRig4Jnt.rotate','LeftLegDwArcRig4JntRotateMulti.input1',f=1)
    pm.connectAttr('LeftLegDwArcRig4JntRotateMulti.output','LeftLegDwArc3Jnt.rotate',f=1)
    #LeftAnkleFKConnectGrp
    pm.pointConstraint('LeftLegRig3Jnt','LeftAnkleFKConnectGrp',mo=1,weight=1,n="LeftAnkleFKConnectGrpPointCon")
    pm.orientConstraint('LeftLegRig3Jnt','LeftAnkleFKConnectGrp',mo=1,weight=1,n="LeftAnkleFKConnectGrpOrientCon")
    #LeftAnkleJnt
    pm.parentConstraint('LeftLegFootSystemJnt','LeftAnkleJnt',mo=1,weight=1,n="LeftAnkleJntParCon")
    #LeftBallJnt
    pm.parentConstraint('LeftToeCtrl','LeftBallJnt',mo=1,weight=1,n="LeftBallJntParCon")
    #///////////////////////////
    #Scale blend
    #///////////////////////////
    #LeftHipIKFKScaleBlend
    pm.createNode('blendColors',n="LeftHipIKFKScaleBlend")
    pm.connectAttr('LeftLegIKFKCtrl.IKFK','LeftHipIKFKScaleBlend.blender',f=1)
    pm.connectAttr('LeftLegFK1Jnt.scale','LeftHipIKFKScaleBlend.color1',f=1)
    pm.connectAttr('LeftLegIK1Jnt.scale','LeftHipIKFKScaleBlend.color2',f=1)
    #LeftHipJnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftHipJnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftHipJnt.scaleZ',f=1)
    #LeftLegUpArc1Jnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftLegUpArc1Jnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftLegUpArc1Jnt.scaleZ',f=1)
    #LeftLegUpArc2Jnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftLegUpArc2Jnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftLegUpArc2Jnt.scaleZ',f=1)
    #LeftLegUpArc3Jnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftLegUpArc3Jnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftLegUpArc3Jnt.scaleZ',f=1)
    #LeftKneeIKFKScaleBlend
    pm.createNode('blendColors',n="LeftKneeIKFKScaleBlend")
    pm.connectAttr('LeftLegIKFKCtrl.IKFK','LeftKneeIKFKScaleBlend.blender',f=1)
    pm.connectAttr('LeftLegFK2Jnt.scale','LeftHipIKFKScaleBlend.color1',f=1)
    pm.connectAttr('LeftLegIK2Jnt.scale','LeftHipIKFKScaleBlend.color2',f=1)
    #LeftKneeJnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftKneeJnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftKneeJnt.scaleZ',f=1)
    #LeftLegDwArc1Jnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftLegDwArc1Jnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftLegDwArc1Jnt.scaleZ',f=1)
    #LeftLegDwArc2Jnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftLegDwArc2Jnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftLegDwArc2Jnt.scaleZ',f=1)
    #LeftLegDwArc3Jnt
    pm.connectAttr('LeftHipIKFKScaleBlend.outputG','LeftLegDwArc3Jnt.scaleY',f=1)
    pm.connectAttr('LeftHipIKFKScaleBlend.outputB','LeftLegDwArc3Jnt.scaleZ',f=1)
    #LeftAnkleFKScaleBlend
    pm.createNode('blendColors',n="LeftAnkleFKScaleBlend")
    pm.setAttr("LeftAnkleFKScaleBlend.color2R",1)
    pm.setAttr("LeftAnkleFKScaleBlend.color2G",1)
    pm.setAttr("LeftAnkleFKScaleBlend.color2B",1)
    pm.connectAttr('LeftLegIKFKCtrl.IKFK','LeftAnkleFKScaleBlend.blender',f=1)
    pm.connectAttr('LeftAnkleFKCtrl.scale','LeftAnkleFKScaleBlend.color1',f=1)
    #LeftAnkleFKConnectGrp
    pm.connectAttr('LeftAnkleFKScaleBlend.output','LeftAnkleFKConnectGrp.scale',f=1)
    #LeftToeCtrlGrp
    pm.connectAttr('LeftAnkleFKScaleBlend.output','LeftToeCtrlGrp.scale',f=1)
    #LeftAnkleIKConnectGrp
    pm.createNode('blendColors',n="LeftAnkleIKScaleBlend")
    pm.setAttr("LeftAnkleIKScaleBlend.color1R",1)
    pm.setAttr("LeftAnkleIKScaleBlend.color1G",1)
    pm.setAttr("LeftAnkleIKScaleBlend.color1B",1)
    pm.connectAttr('LeftLegIKFKCtrl.IKFK','LeftAnkleIKScaleBlend.blender',f=1)
    pm.connectAttr('LeftLegIKCtrl.scale','LeftAnkleIKScaleBlend.color2',f=1)
    #LeftAnkleIKConnectGrp
    pm.connectAttr('LeftAnkleIKScaleBlend.output','LeftAnkleIKConnectGrp.scale',f=1)
    #LeftToeCtrlIKScaleGrp
    pm.connectAttr('LeftAnkleIKScaleBlend.output','LeftToeCtrlIKScaleGrp.scale',f=1)
    


