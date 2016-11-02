import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightLegConnectSet():
    pm.parentConstraint('RightLegHipLockOrient','RightHipJnt',mo=1,weight=1,n="RightHipJntParentCon")
    #RightHipJnt
    #RightLegUpArc1Jnt
    pm.parentConstraint('RightLegUpArcRig2Jnt','RightLegUpArc1Jnt',mo=1,weight=1,n="RightLegUpArc1JntParentCon")
    # RightLegUpArc2Jnt
    pm.parentConstraint('RightLegUpArcRig3Jnt','RightLegUpArc2Jnt',mo=1,weight=1,n="RightLegUpArc2JntParentCon")
    # RightLegUpArc3Jnt
    pm.parentConstraint('RightLegUpArcRig4Jnt','RightLegUpArc3Jnt',mo=1,weight=1,n="RightLegUpArc3JntParentCon")
    #RightKneeJnt
    pm.parentConstraint('RightLegDwArcRig1Jnt','RightKneeJnt',mo=1,weight=1,n="RightKneeJntParentCon")
    #RightLegDwArc1Jnt
    pm.parentConstraint('RightLegDwArcRig2Jnt','RightLegDwArc1Jnt',mo=1,weight=1,n="RightLegDwArc1JntParentCon")
    #RightLegDwArc2Jnt
    pm.parentConstraint('RightLegDwArcRig3Jnt','RightLegDwArc2Jnt',mo=1,weight=1,n="RightLegDwArc2JntParentCon")
    #RightLegDwArc3Jnt
    pm.parentConstraint('RightLegDwArcRig4Jnt','RightLegDwArc3Jnt',mo=1,weight=1,n="RightLegDwArc3JntParentCon")
    #RightAnkleFKConnectGrp
    pm.parentConstraint('RightLegRig3Jnt','RightAnkleFKConnectGrp',mo=1,weight=1,n="RightAnkleFKConnectGrpParentCon")
    #RightAnkleJnt
    pm.parentConstraint('RightLegFootSystemJnt','RightAnkleJnt',mo=1,weight=1,n="RightAnkleJntParentCon")
    #RightBallJnt
    pm.parentConstraint('RightToeCtrl','RightBallJnt',mo=1,weight=1,n="RightBallJntParentCon")
    
    pm.setAttr("RightHipJntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightLegUpArc1JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightLegUpArc2JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightLegUpArc3JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightKneeJntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightLegDwArc1JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightLegDwArc2JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightLegDwArc3JntParentCon.target[0].targetOffsetTranslate", (0,0,0))

    
    #///////////////////////////
    #Scale blend
    #///////////////////////////
    #RightHipIKFKScaleBlend
    pm.createNode('blendColors',n="RightHipIKFKScaleBlend")
    pm.connectAttr('RightLegIKFKCtrl.IKFK','RightHipIKFKScaleBlend.blender',f=1)
    pm.connectAttr('RightLegFK1Jnt.scale','RightHipIKFKScaleBlend.color1',f=1)
    pm.connectAttr('RightLegIK1Jnt.scale','RightHipIKFKScaleBlend.color2',f=1)
    #RightHipJnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightHipJnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightHipJnt.scaleZ',f=1)
    #RightLegUpArc1Jnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightLegUpArc1Jnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightLegUpArc1Jnt.scaleZ',f=1)
    #RightLegUpArc2Jnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightLegUpArc2Jnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightLegUpArc2Jnt.scaleZ',f=1)
    #RightLegUpArc3Jnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightLegUpArc3Jnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightLegUpArc3Jnt.scaleZ',f=1)
    #RightKneeIKFKScaleBlend
    pm.createNode('blendColors',n="RightKneeIKFKScaleBlend")
    pm.connectAttr('RightLegIKFKCtrl.IKFK','RightKneeIKFKScaleBlend.blender',f=1)
    pm.connectAttr('RightLegFK2Jnt.scale','RightHipIKFKScaleBlend.color1',f=1)
    pm.connectAttr('RightLegIK2Jnt.scale','RightHipIKFKScaleBlend.color2',f=1)
    #RightKneeJnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightKneeJnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightKneeJnt.scaleZ',f=1)
    #RightLegDwArc1Jnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightLegDwArc1Jnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightLegDwArc1Jnt.scaleZ',f=1)
    #RightLegDwArc2Jnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightLegDwArc2Jnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightLegDwArc2Jnt.scaleZ',f=1)
    #RightLegDwArc3Jnt
    pm.connectAttr('RightHipIKFKScaleBlend.outputG','RightLegDwArc3Jnt.scaleY',f=1)
    pm.connectAttr('RightHipIKFKScaleBlend.outputB','RightLegDwArc3Jnt.scaleZ',f=1)
    #RightAnkleFKScaleBlend
    pm.createNode('blendColors',n="RightAnkleFKScaleBlend")
    pm.setAttr("RightAnkleFKScaleBlend.color2R",1)
    pm.setAttr("RightAnkleFKScaleBlend.color2G",1)
    pm.setAttr("RightAnkleFKScaleBlend.color2B",1)
    pm.connectAttr('RightLegIKFKCtrl.IKFK','RightAnkleFKScaleBlend.blender',f=1)
    pm.connectAttr('RightAnkleFKCtrl.scale','RightAnkleFKScaleBlend.color1',f=1)
    #RightAnkleFKConnectGrp
    pm.connectAttr('RightAnkleFKScaleBlend.output','RightAnkleFKConnectGrp.scale',f=1)
    #RightToeCtrlGrp
    pm.connectAttr('RightAnkleFKScaleBlend.output','RightToeCtrlGrp.scale',f=1)
    #RightAnkleIKConnectGrp
    pm.createNode('blendColors',n="RightAnkleIKScaleBlend")
    pm.setAttr("RightAnkleIKScaleBlend.color1R",1)
    pm.setAttr("RightAnkleIKScaleBlend.color1G",1)
    pm.setAttr("RightAnkleIKScaleBlend.color1B",1)
    pm.connectAttr('RightLegIKFKCtrl.IKFK','RightAnkleIKScaleBlend.blender',f=1)
    pm.connectAttr('RightLegIKCtrl.scale','RightAnkleIKScaleBlend.color2',f=1)
    #RightAnkleIKConnectGrp
    pm.connectAttr('RightAnkleIKScaleBlend.output','RightAnkleIKConnectGrp.scale',f=1)
    #RightToeCtrlIKScaleGrp
    pm.connectAttr('RightAnkleIKScaleBlend.output','RightToeCtrlIKScaleGrp.scale',f=1)
    


