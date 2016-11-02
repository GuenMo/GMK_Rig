import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_EyeSet():
    #/////////////////////////
    #Left IK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftEyeJnt", "LeftEyeRigJnt")
    Utils.KGM_DuplicateJnt("LeftEyeEndJnt", "LeftEyeEndRigJnt")
    pm.parent('LeftEyeEndRigJnt','LeftEyeRigJnt')
    #/////////////////////////
    #Left make Pol
    #/////////////////////////
    pm.group(em=1,n="LeftEyePoleVector")
    pm.group('LeftEyePoleVector',n="LeftEyePoleVectorGrp")
    Utils.KGM_Aline("LeftEyeRigJnt", "LeftEyePoleVectorGrp", "p")
    pm.setAttr("LeftEyePoleVector.translateY",0.1)
    #/////////////////////////
    #Left make ctrl
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.delete(ch=1)
    pm.rename("nurbsCircle1","LeftEyeScaleCtrl")
    Utils.KGM_MakeCtrlShape("LeftEyeScaleCtrl")
    Utils.KGM_Aline("LeftEyeRigJnt", "LeftEyeScaleCtrlGrp", "a")
    #/////////////////////////
    #Left make ik handle
    #/////////////////////////
    pm.ikHandle(ee="LeftEyeEndRigJnt",sj="LeftEyeRigJnt",sol="ikRPsolver",n="LeftEyeIKHandle")
    pm.rename("effector1","LeftEyeEffector")
    pm.poleVectorConstraint('LeftEyePoleVector','LeftEyeIKHandle',weight=1,n="LeftEyePoleVectorPoleVecCon")
    #LeftEyeScaleCtrlGrp
    pm.parent('LeftEyePoleVectorGrp','LeftEyeScaleCtrl')
    pm.parent('LeftEyeRigJnt','LeftEyeScaleCtrl')
    #/////////////////////////
    #Right IK Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightEyeJnt", "RightEyeRigJnt")
    Utils.KGM_DuplicateJnt("RightEyeEndJnt", "RightEyeEndRigJnt")
    pm.parent('RightEyeEndRigJnt','RightEyeRigJnt')
    #/////////////////////////
    #Right make Pol
    #/////////////////////////
    pm.group(em=1,n="RightEyePoleVector")
    pm.group('RightEyePoleVector',n="RightEyePoleVectorGrp")
    Utils.KGM_Aline("RightEyeRigJnt", "RightEyePoleVectorGrp", "p")
    pm.setAttr("RightEyePoleVector.translateY",0.1)
    #/////////////////////////
    #Right make ctrl
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.delete(ch=1)
    pm.rename("nurbsCircle1","RightEyeScaleCtrl")
    Utils.KGM_MakeCtrlShape("RightEyeScaleCtrl")
    Utils.KGM_Aline("RightEyeRigJnt", "RightEyeScaleCtrlGrp", "a")
    #/////////////////////////
    #Right make ik handle
    #/////////////////////////
    pm.ikHandle(ee="RightEyeEndRigJnt",sj="RightEyeRigJnt",sol="ikRPsolver",n="RightEyeIKHandle")
    pm.rename("effector1","RightEyeEffector")
    pm.poleVectorConstraint('RightEyePoleVector','RightEyeIKHandle',weight=1,n="RightEyePoleVectorPoleVecCon")
    #RightEyeScaleCtrlGrp
    pm.parent('RightEyePoleVectorGrp','RightEyeScaleCtrl')
    pm.parent('RightEyeRigJnt','RightEyeScaleCtrl')
    pm.connectAttr('LeftEyeRigJnt.rotate','LeftEyeJnt.rotate',f=1)
    pm.connectAttr('RightEyeRigJnt.rotate','RightEyeJnt.rotate',f=1)
    #/////////////////////////
    #EyeScaleGrp
    #/////////////////////////
    pm.group(em=1,n="EyeScaleGrp")
    Utils.KGM_Aline("HeadJnt", "EyeScaleGrp", "p")
    pm.parent('LeftEyeScaleCtrlGrp','EyeScaleGrp')
    pm.parent('RightEyeScaleCtrlGrp','EyeScaleGrp')
    #/////////////////////////
    #Left make ctrl
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.delete(ch=1)
    pm.rename("nurbsCircle1","LeftEyeCtrl")
    Utils.KGM_MakeCtrlShape("LeftEyeCtrl")
    Utils.KGM_Aline("LeftEyeEndRigJnt", "LeftEyeCtrlGrp", "p")
    pm.addAttr('LeftEyeCtrl',ln="ComeaScale",at='double')
    pm.setAttr('LeftEyeCtrl.ComeaScale',e=1,keyable=True)
    pm.addAttr('LeftEyeCtrl',ln="ComeaSize",at='double')
    pm.setAttr('LeftEyeCtrl.ComeaSize',e=1,keyable=True)
    pm.addAttr('LeftEyeCtrl',ln="IrisDepth",at='double')
    pm.setAttr('LeftEyeCtrl.IrisDepth',e=1,keyable=True)
    pm.addAttr('LeftEyeCtrl',ln="PupilSize",at='double')
    pm.setAttr('LeftEyeCtrl.PupilSize',e=1,keyable=True)
    pm.parent('LeftEyeIKHandle','LeftEyeCtrl')
    #/////////////////////////
    #Right make ctrl
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,s=8,r=1,tol=0.01,nr=(1, 0, 0))
    pm.delete(ch=1)
    pm.rename("nurbsCircle1","RightEyeCtrl")
    Utils.KGM_MakeCtrlShape("RightEyeCtrl")
    Utils.KGM_Aline("RightEyeEndRigJnt", "RightEyeCtrlGrp", "p")
    pm.addAttr('RightEyeCtrl',ln="ComeaScale",at='double')
    pm.setAttr('RightEyeCtrl.ComeaScale',e=1,keyable=True)
    pm.addAttr('RightEyeCtrl',ln="ComeaSize",at='double')
    pm.setAttr('RightEyeCtrl.ComeaSize',e=1,keyable=True)
    pm.addAttr('RightEyeCtrl',ln="IrisDepth",at='double')
    pm.setAttr('RightEyeCtrl.IrisDepth',e=1,keyable=True)
    pm.addAttr('RightEyeCtrl',ln="PupilSize",at='double')
    pm.setAttr('RightEyeCtrl.PupilSize',e=1,keyable=True)
    pm.parent('RightEyeIKHandle','RightEyeCtrl')
    #///////////////
    #eyeCtrl
    #///////////////
    pm.curve(p=[(0, 0.17609, 0), (0.0860884, 0.17609, 0), (0.391311, 0.35218, 0), (0.696533, 0.17609, 0), (0.696533, -0.17609, 0), (0.391311, -0.35218, 0), (0.0860884, -0.17609, 0), (0, -0.17609, 0), (-0.0860884, -0.17609, 0), (-0.391311, -0.35218, 0), (-0.696533, -0.17609, 0), (-0.696533, 0.17609, 0), (-0.391311, 0.35218, 0), (-0.0860884, 0.17609, 0), (0, 0.17609, 0)],k=[0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 12],d=3)
    pm.rename("curve1","EyeCtrl")
    Utils.KGM_MakeCtrlShape("EyeCtrl")
    pm.parentConstraint('RightEyeCtrl','LeftEyeCtrl','EyeCtrlGrp',weight=1,n="tempCon")
    pm.delete('tempCon')
    pm.addAttr('EyeCtrl',ln="Roll",at='double')
    pm.setAttr('EyeCtrl.Roll',e=1,keyable=True)
    pm.addAttr('EyeCtrl',ln="Follow",en="Head:Fly:World:",at="enum")
    pm.setAttr('EyeCtrl.Follow',e=1,keyable=True)
    pm.addAttr('EyeCtrl',ln="EyeScaleCtrlVis",at='bool')
    pm.setAttr('EyeCtrl.EyeScaleCtrlVis',e=1,channelBox=True)
    pm.addAttr('EyeCtrl',ln="GuideLineVis",at='bool')
    pm.setAttr('EyeCtrl.GuideLineVis',e=1,channelBox=True)
    pm.group(em=1,n="EyeRollGrp")
    Utils.KGM_Aline("EyeCtrl", "EyeRollGrp", "a")
    pm.parent('LeftEyeCtrlGrp','EyeRollGrp')
    pm.parent('RightEyeCtrlGrp','EyeRollGrp')
    pm.parent('EyeRollGrp','EyeCtrl')
    pm.group(em=1,n="EyeRigGrp")
    Utils.KGM_Aline("HeadJnt", "EyeRigGrp", "p")
    pm.group(em=1,n="EyeAimPoint")
    pm.pointConstraint('RightEyeJnt','LeftEyeJnt','EyeAimPoint',weight=1,n="tempCon")
    pm.delete('tempCon')
    pm.group(em=1,n="EyeFollowHeadPoint")
    Utils.KGM_Aline("EyeCtrl", "EyeFollowHeadPoint", "p")
    pm.group(em=1,n="EyeFollowFlyPoint")
    Utils.KGM_Aline("EyeCtrl", "EyeFollowFlyPoint", "p")
    pm.group(em=1,n="EyeFollowWorldPoint")
    Utils.KGM_Aline("EyeCtrl", "EyeFollowWorldPoint", "p")
    pm.parent('EyeScaleGrp','EyeRigGrp')
    pm.parent('EyeCtrlGrp','EyeRigGrp')
    pm.parent('EyeAimPoint','EyeRigGrp')
    pm.parent('EyeFollowHeadPoint','EyeRigGrp')
    pm.parent('EyeFollowWorldPoint','WorldCtrl')
    pm.parent('EyeFollowFlyPoint','FlyCtrl')
    #eyeFollow set
    pm.parentConstraint('EyeFollowHeadPoint','EyeFollowFlyPoint','EyeFollowWorldPoint','EyeCtrlGrp',mo=1,weight=1,n="EyeCtrlGrpParentCon")
    pm.setAttr("EyeCtrl.Follow",1)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowHeadPointW0",0)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowFlyPointW1",1)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowWorldPointW2",0)
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowHeadPointW0',currentDriver='EyeCtrl.Follow')
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowFlyPointW1',currentDriver='EyeCtrl.Follow')
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowWorldPointW2',currentDriver='EyeCtrl.Follow')
    pm.setAttr("EyeCtrl.Follow",2)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowHeadPointW0",0)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowFlyPointW1",0)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowWorldPointW2",1)
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowHeadPointW0',currentDriver='EyeCtrl.Follow')
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowFlyPointW1',currentDriver='EyeCtrl.Follow')
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowWorldPointW2',currentDriver='EyeCtrl.Follow')
    pm.setAttr("EyeCtrl.Follow",0)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowHeadPointW0",1)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowFlyPointW1",0)
    pm.setAttr("EyeCtrlGrpParentCon.EyeFollowWorldPointW2",0)
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowHeadPointW0',currentDriver='EyeCtrl.Follow')
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowFlyPointW1',currentDriver='EyeCtrl.Follow')
    pm.setDrivenKeyframe('EyeCtrlGrpParentCon.EyeFollowWorldPointW2',currentDriver='EyeCtrl.Follow')
    #roll set
    pm.connectAttr('EyeCtrl.Roll','EyeRollGrp.rotateZ',f=1)
    pm.aimConstraint('EyeAimPoint','EyeCtrl',weight=1,
        upVector=(0, 1, 0),
        n="EyeCtrlShapeAimCon",
        worldUpType="objectrotation",
        worldUpObject='EyeAimPoint',
        offset=(0, 0, 0),
        aimVector=(0, 0, -1),worldUpVector=(0, 1, 0))
    pm.parent('EyeRigGrp','HeadRigSysGrp')
    pm.connectAttr('EyeCtrl.EyeScaleCtrlVis','LeftEyeScaleCtrl.visibility',f=1)
    pm.connectAttr('EyeCtrl.EyeScaleCtrlVis','RightEyeScaleCtrl.visibility',f=1)
    #/////////////////////////
    #guid line set
    #/////////////////////////
    pm.group(em=1,n="RightEyeGuideLineEndPoint")
    pm.group(em=1,n="RightEyeGuideLineBasePoint")
    pm.curve(p=[(0, 1, 0), (0, 0, 0)],k=[0, 1],d=1)
    pm.rename("curve1","RightEyeGuideLine")
    pm.connectAttr('RightEyeGuideLineBasePoint.translate','RightEyeGuideLineShape.controlPoints[0]',f=1)
    pm.connectAttr('RightEyeGuideLineEndPoint.translate','RightEyeGuideLineShape.controlPoints[1]',f=1)
    pm.parentConstraint('RightEyeEndRigJnt','RightEyeGuideLineBasePoint',weight=1,n="RightEyeGuideLineBasePointPointCon")
    pm.parentConstraint('RightEyeCtrl','RightEyeGuideLineEndPoint',weight=1,n="RightEyeGuideLineEndPointPointCon")
    pm.group(em=1,n="LeftEyeGuideLineEndPoint")
    pm.group(em=1,n="LeftEyeGuideLineBasePoint")
    pm.curve(p=[(0, 1, 0), (0, 0, 0)],k=[0, 1],d=1)
    pm.rename("curve1","LeftEyeGuideLine")
    pm.connectAttr('LeftEyeGuideLineBasePoint.translate','LeftEyeGuideLineShape.controlPoints[0]',f=1)
    pm.connectAttr('LeftEyeGuideLineEndPoint.translate','LeftEyeGuideLineShape.controlPoints[1]',f=1)
    pm.parentConstraint('LeftEyeEndRigJnt','LeftEyeGuideLineBasePoint',weight=1,n="LeftEyeGuideLineBasePointPointCon")
    pm.parentConstraint('LeftEyeCtrl','LeftEyeGuideLineEndPoint',weight=1,n="LeftEyeGuideLineEndPointPointCon")
    pm.setAttr("RightEyeGuideLineShape.template",1)
    pm.setAttr("LeftEyeGuideLineShape.template",1)
    pm.connectAttr('EyeCtrl.GuideLineVis','RightEyeGuideLine.visibility',f=1)
    pm.connectAttr('EyeCtrl.GuideLineVis','LeftEyeGuideLine.visibility',f=1)
    #scale 
    pm.parentConstraint('RightEyeScaleCtrl','RightEyeScaleConnectGrp',mo=1,weight=1,n="RightEyeScaleConnectGrpParentCon")
    pm.connectAttr('RightEyeScaleCtrl.scale','RightEyeScaleConnectGrp.scale',f=1)
    pm.parentConstraint('LeftEyeScaleCtrl','LeftEyeScaleConnectGrp',mo=1,weight=1,n="LeftEyeScaleConnectGrpParentCon")
    pm.connectAttr('LeftEyeScaleCtrl.scale','LeftEyeScaleConnectGrp.scale',f=1)
    #outline
    pm.parent('LeftEyeScaleCtrlBase','EyeCtrlBaseGrp')
    pm.parent('RightEyeScaleCtrlBase','EyeCtrlBaseGrp')
    pm.parent('LeftEyeCtrlBase','EyeCtrlBaseGrp')
    pm.parent('RightEyeCtrlBase','EyeCtrlBaseGrp')
    pm.parent('EyeCtrlBaseGrp','RigSysGrp')
    pm.delete('LeftEyeScaleCtrlBaseGrp')
    pm.delete('RightEyeScaleCtrlBaseGrp')
    pm.delete('LeftEyeCtrlBaseGrp')
    pm.delete('RightEyeCtrlBaseGrp')
    pm.parent('RightEyeGuideLineEndPoint','EyeCtrlBaseGrp')
    pm.parent('RightEyeGuideLineBasePoint','EyeCtrlBaseGrp')
    pm.parent('RightEyeGuideLine','EyeCtrlBaseGrp')
    pm.parent('LeftEyeGuideLineEndPoint','EyeCtrlBaseGrp')
    pm.parent('LeftEyeGuideLineBasePoint','EyeCtrlBaseGrp')
    pm.parent('LeftEyeGuideLine','EyeCtrlBaseGrp')
    #//////////////////////
    #shape set
    #//////////////////////
    pm.addAttr('EyeCtrlBaseGrp',ln="EyeCtrlRadius",dv=1,at='double')
    pm.setAttr('EyeCtrlBaseGrp.EyeCtrlRadius',e=1,channelBox=True)
    pm.addAttr('EyeCtrlBaseGrp',ln="LREyeCtrlRadius",dv=1,at='double')
    pm.setAttr('EyeCtrlBaseGrp.LREyeCtrlRadius',e=1,channelBox=True)
    pm.addAttr('EyeCtrlBaseGrp',ln="LREyeScaleCtrlRadius",dv=1,at='double')
    pm.setAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius',e=1,channelBox=True)
    pm.addAttr('EyeCtrlBaseGrp',ln="LREyeScaleCtrlPosition",dv=1,at='double')
    pm.setAttr('EyeCtrlBaseGrp.LREyeScaleCtrlPosition',e=1,channelBox=True)
    pm.connectAttr('EyeCtrlBaseGrp.EyeCtrlRadius','EyeCtrlBase.scaleX',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.EyeCtrlRadius','EyeCtrlBase.scaleY',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.EyeCtrlRadius','EyeCtrlBase.scaleZ',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeCtrlRadius','LeftEyeCtrlBase.scaleX',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeCtrlRadius','LeftEyeCtrlBase.scaleY',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeCtrlRadius','LeftEyeCtrlBase.scaleZ',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeCtrlRadius','RightEyeCtrlBase.scaleX',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeCtrlRadius','RightEyeCtrlBase.scaleY',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeCtrlRadius','RightEyeCtrlBase.scaleZ',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius','LeftEyeScaleCtrlBase.scaleX',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius','LeftEyeScaleCtrlBase.scaleY',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius','LeftEyeScaleCtrlBase.scaleZ',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius','RightEyeScaleCtrlBase.scaleX',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius','RightEyeScaleCtrlBase.scaleY',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlRadius','RightEyeScaleCtrlBase.scaleZ',f=1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlPosition','LeftEyeScaleCtrlBase.translateX',f=1)
    pm.createNode('multDoubleLinear',n="RightEyeScaleCtrlBaseTXRev")
    pm.setAttr("RightEyeScaleCtrlBaseTXRev.input2",-1)
    pm.connectAttr('EyeCtrlBaseGrp.LREyeScaleCtrlPosition','RightEyeScaleCtrlBaseTXRev.input1',f=1)
    pm.connectAttr('RightEyeScaleCtrlBaseTXRev.output','RightEyeScaleCtrlBase.translateX',f=1)
    #default
    pm.setAttr("LeftEyeCtrlBase.rotateY",-90)
    pm.setAttr("RightEyeCtrlBase.rotateY",-90)
    pm.setAttr("EyeCtrlBaseGrp.EyeCtrlRadius",0.6)
    pm.setAttr("EyeCtrlBaseGrp.LREyeCtrlRadius",0.1)
    pm.setAttr("EyeCtrlBaseGrp.LREyeCtrlRadius",0.1)
    pm.setAttr("EyeCtrlBaseGrp.LREyeScaleCtrlRadius",0.1)
    pm.setAttr("EyeCtrlBaseGrp.LREyeScaleCtrlPosition",0.3)
    


