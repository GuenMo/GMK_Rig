import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_SpineSet():
    #/////////////////////////
    #Create IK Joint
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RootJnt", "SpineIKRig1Jnt")
    Utils.KGM_DuplicateJnt("Spine1Jnt", "SpineIKRig2Jnt")
    Utils.KGM_DuplicateJnt("Spine2Jnt", "SpineIKRig3Jnt")
    Utils.KGM_DuplicateJnt("Spine3Jnt", "SpineIKRig4Jnt")
    Utils.KGM_DuplicateJnt("Spine4Jnt", "SpineIKRig5Jnt")
    Utils.KGM_DuplicateJnt("Neck1Jnt", "SpineIKRig6Jnt")
    
    pm.parent('SpineIKRig6Jnt','SpineIKRig5Jnt')
    pm.parent('SpineIKRig5Jnt','SpineIKRig4Jnt')
    pm.parent('SpineIKRig4Jnt','SpineIKRig3Jnt')
    pm.parent('SpineIKRig3Jnt','SpineIKRig2Jnt')
    pm.parent('SpineIKRig2Jnt','SpineIKRig1Jnt')
    pm.joint('SpineIKRig6Jnt',zso=1,e=1,oj='none',secondaryAxisOrient='zdown')
    
    pm.select(cl=1)
    pm.joint(p=(0, 0, 0),n="HipIKCtrlJnt")
    Utils.KGM_Aline("SpineIKRig1Jnt", "HipIKCtrlJnt", "p")
    pm.select(cl=1)
    pm.joint(p=(0, 0, 0),n="BodyIKCtrlJnt1")
    Utils.KGM_Aline("SpineIKRig5Jnt", "BodyIKCtrlJnt1", "p")
    pm.select(cl=1)
    pm.joint(p=(0, 0, 0),n="BodyIKCtrlJnt2")
    Utils.KGM_Aline("SpineIKRig6Jnt", "BodyIKCtrlJnt2", "p")
    
    # Arm
    pm.group(em=1,n="ChestPoint")
    Utils.KGM_Aline("SpineIKRig6Jnt", "ChestPoint", "p")
    pm.parent('ChestPoint','SpineIKRig5Jnt')
    
    #/////////////////////////
    #Create Spine IK 
    #/////////////////////////
    pm.ikHandle(ee="SpineIKRig6Jnt",sj="SpineIKRig1Jnt",ns=4,sol='ikSplineSolver')
    pm.rename("ikHandle1","SpineIKHandle")
    pm.rename("effector1","SpineIKEffector")
    pm.rename("curve1","SpineIKCurve")
    pm.duplicate('SpineIKCurve',rr=1,n="SpineIKChkCurve")
    
    #/////////////////////////
    #Spine FK Ctrl Point 
    #/////////////////////////
    pm.createNode('pointOnCurveInfo',n="SpineFK1CtrlCurvePointInfo")
    pm.createNode('pointOnCurveInfo',n="SpineFK2CtrlCurvePointInfo")
    pm.setAttr("SpineFK1CtrlCurvePointInfo.turnOnPercentage",1)
    pm.setAttr("SpineFK2CtrlCurvePointInfo.turnOnPercentage",1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineFK1CtrlCurvePointInfo.inputCurve',f=1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineFK2CtrlCurvePointInfo.inputCurve',f=1)
    pm.setAttr("SpineFK1CtrlCurvePointInfo.parameter", pm.getAttr('JntGuide_motionPath5.uValue') / 3)
    pm.setAttr("SpineFK2CtrlCurvePointInfo.parameter", pm.getAttr('JntGuide_motionPath5.uValue') / 3 * 2)
    pm.spaceLocator(p=(0, 0, 0),n="SpineFK1CtrlPointLoc")
    pm.spaceLocator(p=(0, 0, 0),n="SpineFK2CtrlPointLoc")
    pm.connectAttr('SpineFK1CtrlCurvePointInfo.position','SpineFK1CtrlPointLoc.translate',f=1)
    pm.connectAttr('SpineFK2CtrlCurvePointInfo.position','SpineFK2CtrlPointLoc.translate',f=1)
    
    #/////////////////////////
    #Make Ctrls
    #/////////////////////////
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,n="WorldCtrl",s=8,r=1.6,tol=0.01,nr=(0, 1, 0))
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("WorldCtrl")
    
    pm.curve(p=[(-0.5, 0, -1.5), (0.5, 0, -1.5), (0.5, 0, -0.5), (1.5, 0, -0.5), (1.5, 0, 0.5), (0.5, 0, 0.5), (0.5, 0, 1.5), (-0.5, 0, 1.5), (-0.5, 0, 0.5), (-1.5, 0, 0.5), (-1.5, 0, -0.5), (-0.5, 0, -0.5), (-0.5, 0, -1.5)],k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],d=1)
    pm.rename("curve1","MoveCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("MoveCtrl")
    
    pm.curve(p=[(0, 1, 0), (-1, -1, 0), (-0.5, -1, 0), (0, 0, 0), (0.5, -1, 0), (1, -1, 0), (0, 1, 0)],k=[0, 1, 2, 3, 4, 5, 6],d=1)
    pm.rename("curve1","FlyCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("FlyCtrl")
    Utils.KGM_Aline("Spine4Jnt", "FlyCtrlGrp", "p")
    
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RootCtrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("RootCtrl")
    Utils.KGM_Aline("HipIKCtrlJnt", "RootCtrlGrp", "p")
    
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,n="HipIKCtrl",s=8,r=1,tol=0.01,nr=(0, 1, 0))
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("HipIKCtrl")
    Utils.KGM_Aline("Spine1Jnt", "HipIKCtrlGrp", "p")
    pm.parent('HipIKCtrlJnt','HipIKCtrl')
    
    pm.circle(c=(0, 0, 0),ch=1,d=3,ut=0,sw=360,n="BodyIKCtrl",s=8,r=1,tol=0.01,nr=(0, 1, 0))
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("BodyIKCtrl")
    Utils.KGM_Aline("BodyIKCtrlJnt1", "BodyIKCtrlGrp", "p")
    pm.parent('BodyIKCtrlJnt1','BodyIKCtrl')
    pm.parent('BodyIKCtrlJnt2','BodyIKCtrl')
    
    pm.addAttr('BodyIKCtrl',ln="Stretch",max=10,dv=0,at='double',min=0)
    pm.setAttr('BodyIKCtrl.Stretch',e=1,keyable=True)
    pm.addAttr('BodyIKCtrl',ln="Squash",max=10,dv=0,at='double',min=0)
    pm.setAttr('BodyIKCtrl.Squash',e=1,keyable=True)
    pm.addAttr('BodyIKCtrl',ln="Slide",max=10,dv=0,at='double',min=-10)
    pm.setAttr('BodyIKCtrl.Slide',e=1,keyable=True)
    pm.addAttr('BodyIKCtrl',ln="Scale_X",dv=0,at='double',min=-10)
    pm.setAttr('BodyIKCtrl.Scale_X',e=1,keyable=True)
    pm.addAttr('BodyIKCtrl',ln="Scale_Z",dv=0,at='double',min=-10)
    pm.setAttr('BodyIKCtrl.Scale_Z',e=1,keyable=True)
    
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","SpineFK1Ctrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("SpineFK1Ctrl")
    Utils.KGM_Aline("SpineFK1CtrlPointLoc", "SpineFK1CtrlGrp", "p")
    pm.delete('SpineFK1CtrlCurvePointInfo')
    pm.delete('SpineFK1CtrlPointLoc')
    pm.curve(p=[(0, 0, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (0, 0, -1)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","SpineFK2Ctrl")
    pm.delete(ch=1)
    Utils.KGM_MakeCtrlShape("SpineFK2Ctrl")
    Utils.KGM_Aline("SpineFK2CtrlPointLoc", "SpineFK2CtrlGrp", "p")
    pm.delete('SpineFK2CtrlCurvePointInfo')
    pm.delete('SpineFK2CtrlPointLoc')
    pm.parentConstraint('RootCtrl','HipIKCtrlGrp',mo=1,weight=1)
    pm.parentConstraint('RootCtrl','SpineFK1CtrlGrp',mo=1,weight=1)
    pm.parentConstraint('SpineFK1Ctrl','SpineFK2CtrlGrp',mo=1,weight=1)
    pm.parentConstraint('SpineFK2Ctrl','BodyIKCtrlGrp',mo=1,weight=1)
    
    #/////////////////////////
    #Spine IK curve set 
    #/////////////////////////
    pm.skinCluster('HipIKCtrlJnt','BodyIKCtrlJnt1','BodyIKCtrlJnt2','SpineIKCurve',dr=4.0,tsb=1,mi=5,n="SpineSkinCluster")
    pm.rename("tweak1","SpineTweak")
    pm.rename("bindPose1","SpineCurveBindPose")
    pm.setAttr("SpineIKHandle.dTwistControlEnable",1)
    pm.setAttr('SpineIKHandle.dWorldUpType',4)
    pm.setAttr('SpineIKHandle.dWorldUpAxis',4)
    pm.setAttr("SpineIKHandle.dWorldUpVectorY",0)
    pm.setAttr("SpineIKHandle.dWorldUpVectorZ",-1)
    pm.setAttr("SpineIKHandle.dWorldUpVectorEndY",0)
    pm.setAttr("SpineIKHandle.dWorldUpVectorEndZ",-1)
    pm.connectAttr('HipIKCtrl.worldMatrix[0]','SpineIKHandle.dWorldUpMatrix',f=1)
    pm.connectAttr('BodyIKCtrl.worldMatrix[0]','SpineIKHandle.dWorldUpMatrixEnd',f=1)
    
    #/////////////////////////
    #SpineIKCurve length
    #/////////////////////////
    pm.createNode('pointOnCurveInfo',n="SpineIKCurvePointInfo1")
    pm.createNode('pointOnCurveInfo',n="SpineIKCurvePointInfo2")
    pm.createNode('pointOnCurveInfo',n="SpineIKCurvePointInfo3")
    pm.createNode('pointOnCurveInfo',n="SpineIKCurvePointInfo4")
    pm.createNode('pointOnCurveInfo',n="SpineIKCurvePointInfo5")
    pm.createNode('pointOnCurveInfo',n="SpineIKCurvePointInfo6")
    pm.setAttr("SpineIKCurvePointInfo1.turnOnPercentage",1)
    pm.setAttr("SpineIKCurvePointInfo2.turnOnPercentage",1)
    pm.setAttr("SpineIKCurvePointInfo3.turnOnPercentage",1)
    pm.setAttr("SpineIKCurvePointInfo4.turnOnPercentage",1)
    pm.setAttr("SpineIKCurvePointInfo5.turnOnPercentage",1)
    pm.setAttr("SpineIKCurvePointInfo6.turnOnPercentage",1)
    pm.connectAttr('SpineIKCurveShape.worldSpace[0]','SpineIKCurvePointInfo1.inputCurve',f=1)
    pm.connectAttr('SpineIKCurveShape.worldSpace[0]','SpineIKCurvePointInfo2.inputCurve',f=1)
    pm.connectAttr('SpineIKCurveShape.worldSpace[0]','SpineIKCurvePointInfo3.inputCurve',f=1)
    pm.connectAttr('SpineIKCurveShape.worldSpace[0]','SpineIKCurvePointInfo4.inputCurve',f=1)
    pm.connectAttr('SpineIKCurveShape.worldSpace[0]','SpineIKCurvePointInfo5.inputCurve',f=1)
    pm.connectAttr('SpineIKCurveShape.worldSpace[0]','SpineIKCurvePointInfo6.inputCurve',f=1)
    pm.setAttr("SpineIKCurvePointInfo1.parameter", pm.getAttr('JntGuide_motionPath1.uValue'))
    pm.setAttr("SpineIKCurvePointInfo2.parameter", pm.getAttr('JntGuide_motionPath2.uValue'))
    pm.setAttr("SpineIKCurvePointInfo3.parameter", pm.getAttr('JntGuide_motionPath3.uValue'))
    pm.setAttr("SpineIKCurvePointInfo4.parameter", pm.getAttr('JntGuide_motionPath4.uValue'))
    pm.setAttr("SpineIKCurvePointInfo5.parameter", pm.getAttr('JntGuide_motionPath5.uValue'))
    pm.setAttr("SpineIKCurvePointInfo6.parameter", pm.getAttr('JntGuide_motionPath6.uValue'))
    pm.createNode('distanceBetween',n="SpineDistance1")
    pm.createNode('distanceBetween',n="SpineDistance2")
    pm.createNode('distanceBetween',n="SpineDistance3")
    pm.createNode('distanceBetween',n="SpineDistance4")
    pm.createNode('distanceBetween',n="SpineDistance5")
    pm.connectAttr('SpineIKCurvePointInfo1.position','SpineDistance1.point1',f=1)
    pm.connectAttr('SpineIKCurvePointInfo2.position','SpineDistance1.point2',f=1)
    pm.connectAttr('SpineIKCurvePointInfo2.position','SpineDistance2.point1',f=1)
    pm.connectAttr('SpineIKCurvePointInfo3.position','SpineDistance2.point2',f=1)
    pm.connectAttr('SpineIKCurvePointInfo3.position','SpineDistance3.point1',f=1)
    pm.connectAttr('SpineIKCurvePointInfo4.position','SpineDistance3.point2',f=1)
    pm.connectAttr('SpineIKCurvePointInfo4.position','SpineDistance4.point1',f=1)
    pm.connectAttr('SpineIKCurvePointInfo5.position','SpineDistance4.point2',f=1)
    pm.connectAttr('SpineIKCurvePointInfo5.position','SpineDistance5.point1',f=1)
    pm.connectAttr('SpineIKCurvePointInfo6.position','SpineDistance5.point2',f=1)
    
    #/////////////////////////
    #Spine Slide setDriven key
    #/////////////////////////
    #0    default
    #10   0.350511 
    #-10  0.0798916
    pm.setDrivenKeyframe('SpineIKCurvePointInfo2',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=pm.getAttr('SpineIKCurvePointInfo2.parameter'),
        driverValue=0)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo2',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.350511,
        driverValue=10)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo2',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.0798916,
        driverValue=-10)
    #0        default
    #10      0.524601 
    #-10     0.170126
    pm.setDrivenKeyframe('SpineIKCurvePointInfo3',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=pm.getAttr('SpineIKCurvePointInfo3.parameter'),
        driverValue=0)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo3',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.524601,
        driverValue=10)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo3',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.170126,
        driverValue=-10)
    #0       default
    #10       0.642182  
    #-10      0.350385 
    pm.setDrivenKeyframe('SpineIKCurvePointInfo4',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=pm.getAttr('SpineIKCurvePointInfo4.parameter'),
        driverValue=0)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo4',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.642182,
        driverValue=10)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo4',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.350385,
        driverValue=-10)
    #0   default
    #10  0.743058  
    pm.setDrivenKeyframe('SpineIKCurvePointInfo5',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=pm.getAttr('SpineIKCurvePointInfo5.parameter'),
        driverValue=0)
    pm.setDrivenKeyframe('SpineIKCurvePointInfo5',currentDriver="BodyIKCtrl.Slide",
        attribute="parameter",
        value=0.743058,
        driverValue=10)
    
    #/////////////////////////
    #SpineIKChkCurve length
    #/////////////////////////
    pm.createNode('pointOnCurveInfo',n="SpineIKChkCurvePointInfo1")
    pm.createNode('pointOnCurveInfo',n="SpineIKChkCurvePointInfo2")
    pm.createNode('pointOnCurveInfo',n="SpineIKChkCurvePointInfo3")
    pm.createNode('pointOnCurveInfo',n="SpineIKChkCurvePointInfo4")
    pm.createNode('pointOnCurveInfo',n="SpineIKChkCurvePointInfo5")
    pm.createNode('pointOnCurveInfo',n="SpineIKChkCurvePointInfo6")
    pm.setAttr("SpineIKChkCurvePointInfo1.turnOnPercentage",1)
    pm.setAttr("SpineIKChkCurvePointInfo2.turnOnPercentage",1)
    pm.setAttr("SpineIKChkCurvePointInfo3.turnOnPercentage",1)
    pm.setAttr("SpineIKChkCurvePointInfo4.turnOnPercentage",1)
    pm.setAttr("SpineIKChkCurvePointInfo5.turnOnPercentage",1)
    pm.setAttr("SpineIKChkCurvePointInfo6.turnOnPercentage",1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineIKChkCurvePointInfo1.inputCurve',f=1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineIKChkCurvePointInfo2.inputCurve',f=1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineIKChkCurvePointInfo3.inputCurve',f=1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineIKChkCurvePointInfo4.inputCurve',f=1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineIKChkCurvePointInfo5.inputCurve',f=1)
    pm.connectAttr('SpineIKChkCurveShape.worldSpace[0]','SpineIKChkCurvePointInfo6.inputCurve',f=1)
    pm.setAttr("SpineIKChkCurvePointInfo1.parameter", pm.getAttr('JntGuide_motionPath1.uValue'))
    pm.setAttr("SpineIKChkCurvePointInfo2.parameter", pm.getAttr('JntGuide_motionPath2.uValue'))
    pm.setAttr("SpineIKChkCurvePointInfo3.parameter", pm.getAttr('JntGuide_motionPath3.uValue'))
    pm.setAttr("SpineIKChkCurvePointInfo4.parameter", pm.getAttr('JntGuide_motionPath4.uValue'))
    pm.setAttr("SpineIKChkCurvePointInfo5.parameter", pm.getAttr('JntGuide_motionPath5.uValue'))
    pm.setAttr("SpineIKChkCurvePointInfo6.parameter", pm.getAttr('JntGuide_motionPath6.uValue'))
    pm.createNode('distanceBetween',n="SpineChkDistance1")
    pm.createNode('distanceBetween',n="SpineChkDistance2")
    pm.createNode('distanceBetween',n="SpineChkDistance3")
    pm.createNode('distanceBetween',n="SpineChkDistance4")
    pm.createNode('distanceBetween',n="SpineChkDistance5")
    pm.connectAttr('SpineIKChkCurvePointInfo1.position','SpineChkDistance1.point1',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo2.position','SpineChkDistance1.point2',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo2.position','SpineChkDistance2.point1',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo3.position','SpineChkDistance2.point2',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo3.position','SpineChkDistance3.point1',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo4.position','SpineChkDistance3.point2',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo4.position','SpineChkDistance4.point1',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo5.position','SpineChkDistance4.point2',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo5.position','SpineChkDistance5.point1',f=1)
    pm.connectAttr('SpineIKChkCurvePointInfo6.position','SpineChkDistance5.point2',f=1)
    
    #/////////////////////////
    #Stretch blend Attr
    #/////////////////////////
    pm.createNode('blendTwoAttr',n="SpineStretchBlend1")
    pm.createNode('blendTwoAttr',n="SpineStretchBlend2")
    pm.createNode('blendTwoAttr',n="SpineStretchBlend3")
    pm.createNode('blendTwoAttr',n="SpineStretchBlend4")
    pm.createNode('blendTwoAttr',n="SpineStretchBlend5")
    pm.connectAttr('SpineChkDistance1.distance','SpineStretchBlend1.input[0]',f=1)
    pm.connectAttr('SpineDistance1.distance','SpineStretchBlend1.input[1]',f=1)
    pm.connectAttr('SpineChkDistance2.distance','SpineStretchBlend2.input[0]',f=1)
    pm.connectAttr('SpineDistance2.distance','SpineStretchBlend2.input[1]',f=1)
    pm.connectAttr('SpineChkDistance3.distance','SpineStretchBlend3.input[0]',f=1)
    pm.connectAttr('SpineDistance3.distance','SpineStretchBlend3.input[1]',f=1)
    pm.connectAttr('SpineChkDistance4.distance','SpineStretchBlend4.input[0]',f=1)
    pm.connectAttr('SpineDistance4.distance','SpineStretchBlend4.input[1]',f=1)
    pm.connectAttr('SpineChkDistance5.distance','SpineStretchBlend5.input[0]',f=1)
    pm.connectAttr('SpineDistance5.distance','SpineStretchBlend5.input[1]',f=1)
    
    #/////////////////////////
    #
    #/////////////////////////
    pm.createNode('multiplyDivide',n="SpineDistanceDivide1")
    pm.createNode('multiplyDivide',n="SpineDistanceDivide2")
    pm.createNode('multiplyDivide',n="SpineDistanceDivide3")
    pm.createNode('multiplyDivide',n="SpineDistanceDivide4")
    pm.createNode('multiplyDivide',n="SpineDistanceDivide5")
    pm.setAttr('SpineDistanceDivide1.operation',2)
    pm.setAttr('SpineDistanceDivide2.operation',2)
    pm.setAttr('SpineDistanceDivide3.operation',2)
    pm.setAttr('SpineDistanceDivide4.operation',2)
    pm.setAttr('SpineDistanceDivide5.operation',2)
    pm.connectAttr('SpineStretchBlend1.output','SpineDistanceDivide1.input1X',f=1)
    pm.connectAttr('SpineStretchBlend1.output','SpineDistanceDivide1.input2Y',f=1)
    pm.connectAttr('SpineStretchBlend2.output','SpineDistanceDivide2.input1X',f=1)
    pm.connectAttr('SpineStretchBlend2.output','SpineDistanceDivide2.input2Y',f=1)
    pm.connectAttr('SpineStretchBlend3.output','SpineDistanceDivide3.input1X',f=1)
    pm.connectAttr('SpineStretchBlend3.output','SpineDistanceDivide3.input2Y',f=1)
    pm.connectAttr('SpineStretchBlend4.output','SpineDistanceDivide4.input1X',f=1)
    pm.connectAttr('SpineStretchBlend4.output','SpineDistanceDivide4.input2Y',f=1)
    pm.connectAttr('SpineStretchBlend5.output','SpineDistanceDivide5.input1X',f=1)
    pm.connectAttr('SpineStretchBlend5.output','SpineDistanceDivide5.input2Y',f=1)
    pm.connectAttr('SpineChkDistance1.distance','SpineDistanceDivide1.input2X',f=1)
    pm.connectAttr('SpineChkDistance1.distance','SpineDistanceDivide1.input1Y',f=1)
    pm.connectAttr('SpineChkDistance2.distance','SpineDistanceDivide2.input2X',f=1)
    pm.connectAttr('SpineChkDistance2.distance','SpineDistanceDivide2.input1Y',f=1)
    pm.connectAttr('SpineChkDistance3.distance','SpineDistanceDivide3.input2X',f=1)
    pm.connectAttr('SpineChkDistance3.distance','SpineDistanceDivide3.input1Y',f=1)
    pm.connectAttr('SpineChkDistance4.distance','SpineDistanceDivide4.input2X',f=1)
    pm.connectAttr('SpineChkDistance4.distance','SpineDistanceDivide4.input1Y',f=1)
    pm.connectAttr('SpineChkDistance5.distance','SpineDistanceDivide5.input2X',f=1)
    pm.connectAttr('SpineChkDistance5.distance','SpineDistanceDivide5.input1Y',f=1)
    
    #/////////////////////////
    #streath X
    #/////////////////////////
    pm.createNode('multDoubleLinear',n="SpineTransMulti1")
    pm.createNode('multDoubleLinear',n="SpineTransMulti2")
    pm.createNode('multDoubleLinear',n="SpineTransMulti3")
    pm.createNode('multDoubleLinear',n="SpineTransMulti4")
    pm.createNode('multDoubleLinear',n="SpineTransMulti5")
    pm.connectAttr('SpineDistanceDivide1.outputX','SpineTransMulti1.input1',f=1)
    pm.connectAttr('SpineDistanceDivide2.outputX','SpineTransMulti2.input1',f=1)
    pm.connectAttr('SpineDistanceDivide3.outputX','SpineTransMulti3.input1',f=1)
    pm.connectAttr('SpineDistanceDivide4.outputX','SpineTransMulti4.input1',f=1)
    pm.connectAttr('SpineDistanceDivide5.outputX','SpineTransMulti5.input1',f=1)
    pm.setAttr("SpineTransMulti1.input2",pm.getAttr('SpineIKRig2Jnt.translateX'))
    pm.setAttr("SpineTransMulti2.input2",pm.getAttr('SpineIKRig3Jnt.translateX'))
    pm.setAttr("SpineTransMulti3.input2",pm.getAttr('SpineIKRig4Jnt.translateX'))
    pm.setAttr("SpineTransMulti4.input2",pm.getAttr('SpineIKRig5Jnt.translateX'))
    pm.setAttr("SpineTransMulti5.input2",pm.getAttr('SpineIKRig6Jnt.translateX'))
    pm.connectAttr('SpineTransMulti1.output','SpineIKRig2Jnt.translateX',f=1)
    pm.connectAttr('SpineTransMulti2.output','SpineIKRig3Jnt.translateX',f=1)
    pm.connectAttr('SpineTransMulti3.output','SpineIKRig4Jnt.translateX',f=1)
    pm.connectAttr('SpineTransMulti4.output','SpineIKRig5Jnt.translateX',f=1)
    pm.connectAttr('SpineTransMulti5.output','SpineIKRig6Jnt.translateX',f=1)
    pm.createNode('multDoubleLinear',n="SpineStretchMulti")
    pm.setAttr("SpineStretchMulti.input2",0.1)
    pm.connectAttr('BodyIKCtrl.Stretch','SpineStretchMulti.input1',f=1)
    pm.connectAttr('SpineStretchMulti.output','SpineStretchBlend1.attributesBlender',f=1)
    pm.connectAttr('SpineStretchMulti.output','SpineStretchBlend2.attributesBlender',f=1)
    pm.connectAttr('SpineStretchMulti.output','SpineStretchBlend3.attributesBlender',f=1)
    pm.connectAttr('SpineStretchMulti.output','SpineStretchBlend4.attributesBlender',f=1)
    pm.connectAttr('SpineStretchMulti.output','SpineStretchBlend5.attributesBlender',f=1)
    
    #/////////////////////////
    #Spine Squash Blend
    #/////////////////////////
    pm.createNode('blendTwoAttr',n="SpineSquashBlend1")
    pm.createNode('blendTwoAttr',n="SpineSquashBlend2")
    pm.createNode('blendTwoAttr',n="SpineSquashBlend3")
    pm.createNode('blendTwoAttr',n="SpineSquashBlend4")
    pm.connectAttr('SpineDistanceDivide1.outputY','SpineSquashBlend1.input[1]',f=1)
    pm.connectAttr('SpineDistanceDivide2.outputY','SpineSquashBlend2.input[1]',f=1)
    pm.connectAttr('SpineDistanceDivide3.outputY','SpineSquashBlend3.input[1]',f=1)
    pm.connectAttr('SpineDistanceDivide4.outputY','SpineSquashBlend4.input[1]',f=1)
    pm.setAttr("SpineSquashBlend1.input[0]",1)
    pm.setAttr("SpineSquashBlend2.input[0]",1)
    pm.setAttr("SpineSquashBlend3.input[0]",1)
    pm.setAttr("SpineSquashBlend4.input[0]",1)
    pm.createNode('multDoubleLinear',n="SpineSquashMulti")
    pm.setAttr("SpineSquashMulti.input2",0.1)
    pm.connectAttr('BodyIKCtrl.Squash','SpineSquashMulti.input1',f=1)
    pm.connectAttr('SpineSquashMulti.output','SpineSquashBlend1.attributesBlender',f=1)
    pm.connectAttr('SpineSquashMulti.output','SpineSquashBlend2.attributesBlender',f=1)
    pm.connectAttr('SpineSquashMulti.output','SpineSquashBlend3.attributesBlender',f=1)
    pm.connectAttr('SpineSquashMulti.output','SpineSquashBlend4.attributesBlender',f=1)
    
    #/////////////////////////
    #Spine Squash Scale
    #/////////////////////////
    pm.createNode('multDoubleLinear',n="SpineSquashScaleYMulti2")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleYMulti3")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleYMulti4")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleYMulti5")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleZMulti2")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleZMulti3")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleZMulti4")
    pm.createNode('multDoubleLinear',n="SpineSquashScaleZMulti5")
    pm.connectAttr('SpineSquashBlend1.output','SpineSquashScaleYMulti2.input1',f=1)
    pm.connectAttr('SpineSquashBlend2.output','SpineSquashScaleYMulti3.input1',f=1)
    pm.connectAttr('SpineSquashBlend3.output','SpineSquashScaleYMulti4.input1',f=1)
    pm.connectAttr('SpineSquashBlend4.output','SpineSquashScaleYMulti5.input1',f=1)
    pm.connectAttr('SpineSquashBlend1.output','SpineSquashScaleZMulti2.input1',f=1)
    pm.connectAttr('SpineSquashBlend2.output','SpineSquashScaleZMulti3.input1',f=1)
    pm.connectAttr('SpineSquashBlend3.output','SpineSquashScaleZMulti4.input1',f=1)
    pm.connectAttr('SpineSquashBlend4.output','SpineSquashScaleZMulti5.input1',f=1)
    pm.setAttr("SpineSquashScaleYMulti2.input2",1)
    pm.setAttr("SpineSquashScaleYMulti3.input2",1)
    pm.setAttr("SpineSquashScaleYMulti4.input2",1)
    pm.setAttr("SpineSquashScaleYMulti5.input2",1)
    pm.setAttr("SpineSquashScaleZMulti2.input2",1)
    pm.setAttr("SpineSquashScaleZMulti3.input2",1)
    pm.setAttr("SpineSquashScaleZMulti4.input2",1)
    pm.setAttr("SpineSquashScaleZMulti5.input2",1)
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendY2")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendY3")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendY4")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendY5")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendZ2")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendZ3")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendZ4")
    pm.createNode('blendTwoAttr',n="SpineSquashBalanceBlendZ5")
    pm.connectAttr('SpineSquashScaleYMulti2.output','SpineSquashBalanceBlendY2.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleYMulti3.output','SpineSquashBalanceBlendY3.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleYMulti4.output','SpineSquashBalanceBlendY4.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleYMulti5.output','SpineSquashBalanceBlendY5.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleZMulti2.output','SpineSquashBalanceBlendZ2.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleZMulti3.output','SpineSquashBalanceBlendZ3.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleZMulti4.output','SpineSquashBalanceBlendZ4.input[1]',f=1)
    pm.connectAttr('SpineSquashScaleZMulti5.output','SpineSquashBalanceBlendZ5.input[1]',f=1)
    pm.setAttr("SpineSquashBalanceBlendY2.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendY3.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendY4.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendY5.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendZ2.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendZ3.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendZ4.input[0]",1)
    pm.setAttr("SpineSquashBalanceBlendZ5.input[0]",1)
    pm.connectAttr('SpineSquashBalanceBlendY2.output','Spine1Jnt.scaleY',f=1)
    pm.connectAttr('SpineSquashBalanceBlendY3.output','Spine2Jnt.scaleY',f=1)
    pm.connectAttr('SpineSquashBalanceBlendY4.output','Spine3Jnt.scaleY',f=1)
    pm.connectAttr('SpineSquashBalanceBlendY5.output','Spine4Jnt.scaleY',f=1)
    pm.connectAttr('SpineSquashBalanceBlendZ2.output','Spine1Jnt.scaleZ',f=1)
    pm.connectAttr('SpineSquashBalanceBlendZ3.output','Spine2Jnt.scaleZ',f=1)
    pm.connectAttr('SpineSquashBalanceBlendZ4.output','Spine3Jnt.scaleZ',f=1)
    pm.connectAttr('SpineSquashBalanceBlendZ5.output','Spine4Jnt.scaleZ',f=1)
    
    #/////////////////////////
    #Spine Squash Scale setDriven key
    #/////////////////////////
    pm.setDrivenKeyframe('SpineSquashScaleYMulti2',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti2',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleYMulti2_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleYMulti2_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti3',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti3',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleYMulti3_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleYMulti3_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti4',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti4',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleYMulti4_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleYMulti4_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti5',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleYMulti5',currentDriver="BodyIKCtrl.Scale_Z",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleYMulti5_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleYMulti5_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti2',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti2',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleZMulti2_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleZMulti2_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti3',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti3',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleZMulti3_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleZMulti3_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti4',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti4',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleZMulti4_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleZMulti4_input2.postInfinity',4)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti5',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=1,
        driverValue=0)
    pm.setDrivenKeyframe('SpineSquashScaleZMulti5',currentDriver="BodyIKCtrl.Scale_X",
        attribute="input2",
        value=2,
        driverValue=10)
    pm.setAttr('SpineSquashScaleZMulti5_input2.preInfinity',4)
    pm.setAttr('SpineSquashScaleZMulti5_input2.postInfinity',4)
    
    #///////////////////////////
    #SpineSquashBalanceBlend set
    #///////////////////////////
    pm.setAttr("SpineSquashBalanceBlendY2.attributesBlender",0.645)
    pm.setAttr("SpineSquashBalanceBlendY3.attributesBlender",0.897)
    pm.setAttr("SpineSquashBalanceBlendY4.attributesBlender",0.995)
    pm.setAttr("SpineSquashBalanceBlendY5.attributesBlender",0.813)
    pm.setAttr("SpineSquashBalanceBlendZ2.attributesBlender",0.645)
    pm.setAttr("SpineSquashBalanceBlendZ3.attributesBlender",0.897)
    pm.setAttr("SpineSquashBalanceBlendZ4.attributesBlender",0.995)
    pm.setAttr("SpineSquashBalanceBlendZ5.attributesBlender",0.813)
    
    #///////////////////////////
    #Jnt -> Ik Jnt Constraint
    #///////////////////////////
    pm.parentConstraint('HipIKCtrl','RootJnt',mo=1,weight=1)
    pm.parentConstraint('SpineIKRig2Jnt','Spine1Jnt',mo=1,weight=1)
    pm.parentConstraint('SpineIKRig3Jnt','Spine2Jnt',mo=1,weight=1)
    pm.parentConstraint('SpineIKRig4Jnt','Spine3Jnt',mo=1,weight=1)
    pm.parentConstraint('SpineIKRig5Jnt','Spine4Jnt',mo=1,weight=1)
    
    #///////////////////////////
    #outline
    #///////////////////////////
    # RigCtrlGrp
    pm.group(em=1,n="RigCtrlGrp")
    pm.group(em=1,n="BodyCtrlGrp")
    pm.group(em=1,n="SpineRigSysGrp")
    pm.parent('RootCtrlGrp','BodyCtrlGrp')
    pm.parent('HipIKCtrlGrp','BodyCtrlGrp')
    pm.parent('BodyIKCtrlGrp','BodyCtrlGrp')
    pm.parent('SpineFK1CtrlGrp','BodyCtrlGrp')
    pm.parent('SpineFK2CtrlGrp','BodyCtrlGrp')
    pm.parent('BodyCtrlGrp','RigCtrlGrp')
    pm.parent('MoveCtrlGrp','WorldCtrl')
    pm.parent('FlyCtrlGrp','MoveCtrl')
    pm.parent('RigCtrlGrp','FlyCtrl')
    pm.parent('SpineIKRig1Jnt','SpineRigSysGrp')
    pm.parent('SpineIKHandle','SpineRigSysGrp')
    pm.parent('SpineIKChkCurve','SpineRigSysGrp')
    pm.parent('SpineRigSysGrp','BodyCtrlGrp')
    pm.parent('WorldCtrlGrp','RigGrp')
    
    #Bug Fix
    pm.parent('ChestPoint','SpineRigSysGrp')
    pm.pointConstraint('SpineIKRig6Jnt','ChestPoint',mo=1,weight=1,n="ChestPointPointCon")
    pm.orientConstraint('BodyIKCtrl','ChestPoint',mo=1,weight=1,n="ChestPointOrientCon")
    
    # RigSysGrp
    pm.group(em=1,n="RigSysGrp")
    pm.group(em=1,n="SpineSysGrp")
    pm.group(em=1,n="BodyCtrlBaseGrp")
    pm.parent('MoveCtrlBaseGrp','WorldCtrlBaseGrp')
    pm.parent('WorldCtrlBase','MoveCtrlBaseGrp')
    pm.parent('FlyCtrlBaseGrp','WorldCtrlBaseGrp')
    pm.parent('RootCtrlBase','BodyCtrlBaseGrp')
    pm.parent('HipIKCtrlBase','BodyCtrlBaseGrp')
    pm.parent('BodyIKCtrlBase','BodyCtrlBaseGrp')
    pm.parent('SpineFK1CtrlBase','BodyCtrlBaseGrp')
    pm.parent('SpineFK2CtrlBase','BodyCtrlBaseGrp')
    pm.parent('SpineIKCurve','BodyCtrlBaseGrp')
    pm.parent('BodyCtrlBaseGrp','SpineSysGrp')
    pm.parent('WorldCtrlBaseGrp','RigSysGrp')
    pm.parent('SpineSysGrp','RigSysGrp')
    pm.delete('RootCtrlBaseGrp')
    pm.delete('HipIKCtrlBaseGrp')
    pm.delete('BodyIKCtrlBaseGrp')
    pm.delete('SpineFK1CtrlBaseGrp')
    pm.delete('SpineFK2CtrlBaseGrp')
    
    #RigGrp
    pm.parent('RigSysGrp','RigGrp')
    
    #BindJntGrp
    pm.group(em=1,n="BindJntGrp")
    pm.parent('RootJnt','BindJntGrp')
    pm.parent('BindJntGrp','FlyCtrl')
    
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('WorldCtrlBaseGrp',ln="WorldAndMoveCtrlRadius",at='double')
    pm.setAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius',e=1,channelBox=True)
    pm.addAttr('WorldCtrlBaseGrp',ln="FlyCtrlRadius",at='double')
    pm.setAttr('WorldCtrlBaseGrp.FlyCtrlRadius',e=1,channelBox=True)
    pm.addAttr('WorldCtrlBaseGrp',ln="FlyCtrlPostion",at='double')
    pm.setAttr('WorldCtrlBaseGrp.FlyCtrlPostion',e=1,channelBox=True)
    pm.connectAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius','WorldCtrlBase.scaleX',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius','WorldCtrlBase.scaleY',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius','WorldCtrlBase.scaleZ',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius','MoveCtrlBase.scaleX',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius','MoveCtrlBase.scaleY',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.WorldAndMoveCtrlRadius','MoveCtrlBase.scaleZ',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.FlyCtrlRadius','FlyCtrlBase.scaleX',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.FlyCtrlRadius','FlyCtrlBase.scaleY',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.FlyCtrlRadius','FlyCtrlBase.scaleZ',f=1)
    pm.connectAttr('WorldCtrlBaseGrp.FlyCtrlPostion','FlyCtrlBase.translateZ',f=1)
    pm.addAttr('SpineSysGrp',ln="HipIKCtrlRadius",at='double')
    pm.setAttr('SpineSysGrp.HipIKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('SpineSysGrp',ln="RootCtrlRadius",at='double')
    pm.setAttr('SpineSysGrp.RootCtrlRadius',e=1,channelBox=True)
    pm.addAttr('SpineSysGrp',ln="SpineFK1CtrlRadius",at='double')
    pm.setAttr('SpineSysGrp.SpineFK1CtrlRadius',e=1,channelBox=True)
    pm.addAttr('SpineSysGrp',ln="SpineFK2CtrlRadius",at='double')
    pm.setAttr('SpineSysGrp.SpineFK2CtrlRadius',e=1,channelBox=True)
    pm.addAttr('SpineSysGrp',ln="BodyIKCtrlRadius",at='double')
    pm.setAttr('SpineSysGrp.BodyIKCtrlRadius',e=1,channelBox=True)
    pm.addAttr('SpineSysGrp',ln="HipIKCtrlPostion",at='double')
    pm.setAttr('SpineSysGrp.HipIKCtrlPostion',e=1,channelBox=True)
    pm.addAttr('SpineSysGrp',ln="BodyIKCtrlPostion",at='double')
    pm.setAttr('SpineSysGrp.BodyIKCtrlPostion',e=1,channelBox=True)
    pm.connectAttr('SpineSysGrp.HipIKCtrlRadius','HipIKCtrlBase.scaleX',f=1)
    pm.connectAttr('SpineSysGrp.HipIKCtrlRadius','HipIKCtrlBase.scaleY',f=1)
    pm.connectAttr('SpineSysGrp.HipIKCtrlRadius','HipIKCtrlBase.scaleZ',f=1)
    pm.connectAttr('SpineSysGrp.RootCtrlRadius','RootCtrlBase.scaleX',f=1)
    pm.connectAttr('SpineSysGrp.RootCtrlRadius','RootCtrlBase.scaleY',f=1)
    pm.connectAttr('SpineSysGrp.RootCtrlRadius','RootCtrlBase.scaleZ',f=1)
    pm.connectAttr('SpineSysGrp.SpineFK1CtrlRadius','SpineFK1CtrlBase.scaleX',f=1)
    pm.connectAttr('SpineSysGrp.SpineFK1CtrlRadius','SpineFK1CtrlBase.scaleY',f=1)
    pm.connectAttr('SpineSysGrp.SpineFK1CtrlRadius','SpineFK1CtrlBase.scaleZ',f=1)
    pm.connectAttr('SpineSysGrp.SpineFK2CtrlRadius','SpineFK2CtrlBase.scaleX',f=1)
    pm.connectAttr('SpineSysGrp.SpineFK2CtrlRadius','SpineFK2CtrlBase.scaleY',f=1)
    pm.connectAttr('SpineSysGrp.SpineFK2CtrlRadius','SpineFK2CtrlBase.scaleZ',f=1)
    pm.connectAttr('SpineSysGrp.BodyIKCtrlRadius','BodyIKCtrlBase.scaleX',f=1)
    pm.connectAttr('SpineSysGrp.BodyIKCtrlRadius','BodyIKCtrlBase.scaleY',f=1)
    pm.connectAttr('SpineSysGrp.BodyIKCtrlRadius','BodyIKCtrlBase.scaleZ',f=1)
    pm.connectAttr('SpineSysGrp.HipIKCtrlPostion','HipIKCtrlBase.translateY',f=1)
    pm.connectAttr('SpineSysGrp.BodyIKCtrlPostion','BodyIKCtrlBase.translateY',f=1)
    pm.setAttr("SpineIKRig1Jnt.visibility",0)
    pm.setAttr("SpineIKRig1Jnt.v",lock=True,channelBox=False,keyable=False)
    pm.setAttr("HipIKCtrlJnt.visibility",0)
    pm.setAttr("HipIKCtrlJnt.v",lock=True,channelBox=False,keyable=False)
    pm.setAttr("BodyIKCtrlJnt2.visibility",0)
    pm.setAttr("BodyIKCtrlJnt1.visibility",0)
    pm.setAttr("BodyIKCtrlJnt2.v",lock=True,channelBox=False,keyable=False)
    pm.setAttr("BodyIKCtrlJnt1.v",lock=True,channelBox=False,keyable=False)
    
    #///////////////////////////
    #defalt set
    #///////////////////////////
    pm.setAttr("WorldCtrlBaseGrp.WorldAndMoveCtrlRadius",1)
    pm.setAttr("WorldCtrlBaseGrp.FlyCtrlRadius",0.7)
    pm.setAttr("WorldCtrlBaseGrp.FlyCtrlPostion",-1)
    pm.setAttr("SpineSysGrp.HipIKCtrlRadius",0.5)
    pm.setAttr("SpineSysGrp.RootCtrlRadius",1)
    pm.setAttr("SpineSysGrp.SpineFK1CtrlRadius",0.5)
    pm.setAttr("SpineSysGrp.SpineFK2CtrlRadius",0.5)
    pm.setAttr("SpineSysGrp.BodyIKCtrlRadius",0.5)
    pm.setAttr("SpineSysGrp.HipIKCtrlPostion",-0.45)
