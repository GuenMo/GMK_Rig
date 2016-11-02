import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightArmConnectSet():
    #RightShoulderJnt
    pm.parentConstraint('RightArmUpArcRig1Jnt','RightShoulderJnt', mo=1,weight=1,n="RightShoulderJntParentCon")
    #RightArmUpArc1Jnt
    pm.parentConstraint('RightArmUpArcRig2Jnt','RightArmUpArc1Jnt',mo=1,weight=1,n="RightArmUpArcRig2JntParentCon")
    # RightArmUpArc2Jnt
    pm.parentConstraint('RightArmUpArcRig3Jnt','RightArmUpArc2Jnt',mo=1,weight=1,n="RightArmUpArcRig3JntParentCon")
    # RightArmUpArc3Jnt
    pm.parentConstraint('RightArmUpArcRig4Jnt','RightArmUpArc3Jnt',mo=1,weight=1,n="RightArmUpArcRig4JntParentCon")
    #RightElbowJnt
    pm.parentConstraint('RightArmDwArcRig1Jnt','RightElbowJnt',    mo=1,weight=1,n="RightElbowJntParentCon")
    #RightArmDwArc1Jnt
    pm.parentConstraint('RightArmDwArcRig2Jnt','RightArmDwArc1Jnt',mo=1,weight=1,n="RightArmDwArcRig2JntParentCon")
    #RightArmDwArc2Jnt
    pm.parentConstraint('RightArmDwArcRig3Jnt','RightArmDwArc2Jnt',mo=1,weight=1,n="RightArmDwArcRig3JntParentCon")
    #RightArmDwArc3Jnt
    pm.parentConstraint('RightArmDwArcRig4Jnt','RightArmDwArc3Jnt',mo=1,weight=1,n="RightArmDwArcRig4JntParentCon")
    
    pm.setAttr("RightShoulderJntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightArmUpArcRig2JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightArmUpArcRig3JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightArmUpArcRig4JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightElbowJntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightArmDwArcRig2JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightArmDwArcRig3JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("RightArmDwArcRig4JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    
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


