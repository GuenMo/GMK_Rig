import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftArmConnectSet():
    #LeftShoulderJnt
    pm.parentConstraint('LeftArmUpArcRig1Jnt','LeftShoulderJnt', mo=1,weight=1,n="LeftShoulderJntParentCon")
    #LeftArmUpArc1Jnt
    pm.parentConstraint('LeftArmUpArcRig2Jnt','LeftArmUpArc1Jnt',mo=1,weight=1,n="LeftArmUpArcRig2JntParentCon")
    # LeftArmUpArc2Jnt
    pm.parentConstraint('LeftArmUpArcRig3Jnt','LeftArmUpArc2Jnt',mo=1,weight=1,n="LeftArmUpArcRig3JntParentCon")
    # LeftArmUpArc3Jnt
    pm.parentConstraint('LeftArmUpArcRig4Jnt','LeftArmUpArc3Jnt',mo=1,weight=1,n="LeftArmUpArcRig4JntParentCon")
    #LeftElbowJnt
    pm.parentConstraint('LeftArmDwArcRig1Jnt','LeftElbowJnt',    mo=1,weight=1,n="LeftElbowJntParentCon")
    #LeftArmDwArc1Jnt
    pm.parentConstraint('LeftArmDwArcRig2Jnt','LeftArmDwArc1Jnt',mo=1,weight=1,n="LeftArmDwArcRig2JntParentCon")
    #LeftArmDwArc2Jnt
    pm.parentConstraint('LeftArmDwArcRig3Jnt','LeftArmDwArc2Jnt',mo=1,weight=1,n="LeftArmDwArcRig3JntParentCon")
    #LeftArmDwArc3Jnt
    pm.parentConstraint('LeftArmDwArcRig4Jnt','LeftArmDwArc3Jnt',mo=1,weight=1,n="LeftArmDwArcRig4JntParentCon")
    
    pm.setAttr("LeftShoulderJntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftArmUpArcRig2JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftArmUpArcRig3JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftArmUpArcRig4JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftElbowJntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftArmDwArcRig2JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftArmDwArcRig3JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    pm.setAttr("LeftArmDwArcRig4JntParentCon.target[0].targetOffsetTranslate", (0,0,0))
    
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
    


