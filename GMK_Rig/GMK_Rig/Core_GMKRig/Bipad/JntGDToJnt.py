import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils) 

def KGM_JntGDToJnt():
    #spine jnt   
    pm.select(cl=True)  
    Utils.KGM_DuplicateJnt("JntGuide_RootJntGD","RootJnt")
    Utils.KGM_DuplicateJnt("JntGuide_Spine1JntGD","Spine1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Spine2JntGD","Spine2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Spine3JntGD","Spine3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Spine4JntGD","Spine4Jnt")
    
    pm.parent('Spine4Jnt','Spine3Jnt')
    pm.parent('Spine3Jnt','Spine2Jnt')
    pm.parent('Spine2Jnt','Spine1Jnt')
    pm.parent('Spine1Jnt','RootJnt')
    
    pm.select('RootJnt',r=1)
    pm.joint(zso=1,ch=1,e=1,oj='xzy',secondaryAxisOrient='zdown')
    pm.select('Spine4Jnt',r=1)
    pm.joint(zso=1,ch=1,e=1,oj='none',secondaryAxisOrient='zdown')
    
    #neck jnt 
    Utils.KGM_DuplicateJnt("JntGuide_Neck1JntGD", "Neck1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_HeadJntGD", "HeadJnt")
    
    pm.aimConstraint('HeadJnt','Neck1Jnt',weight=1,upVector=(0, 1, 0),worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('Neck1Jnt_aimConstraint1')
    
    pm.makeIdentity('Neck1Jnt',apply=True,s=0,r=1,t=0,n=0)
    pm.parent('HeadJnt','Neck1Jnt')
    pm.joint('Neck1Jnt',zso=1,ch=1,e=1,oj='xzy',secondaryAxisOrient='zdown')
    pm.joint('HeadJnt',zso=1,ch=1,e=1,oj='none',secondaryAxisOrient='zdown')
    
    Utils.KGM_DuplicateJnt("JntGuide_HeadEndJntGD", "HeadEndJnt")
    pm.parent('HeadEndJnt','HeadJnt')
    
    pm.select('Neck1Jnt',r=1)
    pm.mel.js_splitSelJoint(3)
    #Utils.GMK_SplitSelJoint(3)
    pm.rename("Neck1Jnt_seg_1_joint","Neck2Jnt")
    pm.rename("Neck1Jnt_seg_2_joint","Neck3Jnt")
    
    pm.aimConstraint('Neck1Jnt','Spine4Jnt',weight=1,upVector=(0, 1, 0),worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('Spine4Jnt_aimConstraint1')
    pm.parent('Neck1Jnt','Spine4Jnt')
    pm.makeIdentity('Spine4Jnt',apply=True,s=0,r=1,t=0,n=0)
    pm.joint('Spine4Jnt',zso=1,e=1,oj='xzy',secondaryAxisOrient='zdown')
    
    #LeftEye jnt 
    Utils.KGM_DuplicateJnt("JntGuide_LeftEyeJntGD", "LeftEyeJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftEyeEndJntGD", "LeftEyeEndJnt")
    pm.parent('LeftEyeJnt','HeadJnt')
    pm.parent('LeftEyeEndJnt','LeftEyeJnt')
    pm.joint('LeftEyeJnt',zso=1,ch=1,e=1,oj='xyz',secondaryAxisOrient='zup')
    pm.joint('LeftEyeEndJnt',zso=1,ch=1,e=1,oj='none',secondaryAxisOrient='zup')
    
    #Left Leg Jnt   
    Utils.KGM_DuplicateJnt("JntGuide_LeftHipJntGD", "LeftHipJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftKneeJntGD", "LeftKneeJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftAnkleScaleFixJntGD", "LeftAnkleJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftBallJntGD", "LeftBallJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftToeJntGD", "LeftToeJnt")
    
    pm.parent('LeftToeJnt','LeftBallJnt')
    pm.parent('LeftBallJnt','LeftAnkleJnt')
    pm.parent('LeftAnkleJnt','LeftKneeJnt')
    pm.parent('LeftKneeJnt','LeftHipJnt')
    
    pm.joint('LeftBallJnt',zso=1,ch=1,e=1,oj='xzy',secondaryAxisOrient='zdown')
    pm.joint('LeftToeJnt',zso=1,ch=1,e=1,oj='none',secondaryAxisOrient='zdown')
    
    pm.select('LeftHipJnt',r=1)
    pm.mel.js_splitSelJoint(4)
    #Utils.GMK_SplitSelJoint(4)
    
    pm.rename("LeftHipJnt_seg_1_joint","LeftLegUpArc1Jnt")
    pm.rename("LeftHipJnt_seg_2_joint","LeftLegUpArc2Jnt")
    pm.rename("LeftHipJnt_seg_3_joint","LeftLegUpArc3Jnt")
    
    pm.select('LeftKneeJnt',r=1)
    pm.mel.js_splitSelJoint(4)
    #Utils.GMK_SplitSelJoint(4)
    
    pm.rename("LeftKneeJnt_seg_1_joint","LeftLegDwArc1Jnt")
    pm.rename("LeftKneeJnt_seg_2_joint","LeftLegDwArc2Jnt")
    pm.rename("LeftKneeJnt_seg_3_joint","LeftLegDwArc3Jnt")
    pm.parent('LeftHipJnt','RootJnt')
    

    #Left Arm Jnt   
    Utils.KGM_DuplicateJnt("JntGuide_LeftClavicleJntGD", "LeftClavicleJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftShoulderJntGD", "LeftShoulderJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftElbowJntGD", "LeftElbowJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftWristJntGD", "LeftWristJnt")
    
    pm.aimConstraint('LeftShoulderJnt','LeftClavicleJnt',weight=1,upVector=(0, 1, 0),worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('LeftClavicleJnt_aimConstraint1')
    pm.makeIdentity('LeftClavicleJnt',apply=True,s=0,r=1,t=0,n=0)
    
    pm.parent('LeftWristJnt','LeftElbowJnt')
    pm.parent('LeftElbowJnt','LeftShoulderJnt')
    pm.parent('LeftShoulderJnt','LeftClavicleJnt')
    
    pm.joint('LeftClavicleJnt',zso=1,e=1,oj='xzy',secondaryAxisOrient='zdown')
    
    pm.select('LeftShoulderJnt',r=1)
    pm.mel.js_splitSelJoint(4)
    #Utils.GMK_SplitSelJoint(4)
    
    pm.rename("LeftShoulderJnt_seg_1_joint","LeftArmUpArc1Jnt")
    pm.rename("LeftShoulderJnt_seg_2_joint","LeftArmUpArc2Jnt")
    pm.rename("LeftShoulderJnt_seg_3_joint","LeftArmUpArc3Jnt")
    
    pm.select('LeftElbowJnt',r=1)
    pm.mel.js_splitSelJoint(4)
    #Utils.GMK_SplitSelJoint(4)
    
    pm.rename("LeftElbowJnt_seg_1_joint","LeftArmDwArc1Jnt")
    pm.rename("LeftElbowJnt_seg_2_joint","LeftArmDwArc2Jnt")
    pm.rename("LeftElbowJnt_seg_3_joint","LeftArmDwArc3Jnt")
    
    pm.parent('LeftClavicleJnt','Spine4Jnt')
    
    # Left Hand Jnt   
    # Left Pinky
    pm.select(cl=1)
    Utils.KGM_DuplicateJnt("JntGuide_LeftPinky1JntGD", "LeftPinky1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftPinky2JntGD", "LeftPinky2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftPinky3JntGD", "LeftPinky3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftPinky4JntGD", "LeftPinky4Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftPinky5JntGD", "LeftPinky5Jnt")
    
    pm.aimConstraint('LeftPinky2Jnt','LeftPinky1Jnt',weight=1,upVector=(0, 1, 0),skip='x',worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('LeftPinky1Jnt_aimConstraint1')
    pm.makeIdentity('LeftPinky1Jnt',apply=True,s=0,r=1,t=0,n=0)
    
    pm.parent('LeftPinky5Jnt','LeftPinky4Jnt')
    pm.parent('LeftPinky4Jnt','LeftPinky3Jnt')
    pm.parent('LeftPinky3Jnt','LeftPinky2Jnt')
    pm.parent('LeftPinky2Jnt','LeftPinky1Jnt')
    pm.parent('LeftPinky1Jnt','LeftWristJnt')
    
    # Left Ring
    Utils.KGM_DuplicateJnt("JntGuide_LeftRing1JntGD", "LeftRing1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftRing2JntGD", "LeftRing2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftRing3JntGD", "LeftRing3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftRing4JntGD", "LeftRing4Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftRing5JntGD", "LeftRing5Jnt")
    
    pm.aimConstraint('LeftRing2Jnt','LeftRing1Jnt',weight=1,upVector=(0, 1, 0),skip='x',worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('LeftRing1Jnt_aimConstraint1')
    pm.makeIdentity('LeftRing1Jnt',apply=True,s=0,r=1,t=0,n=0)
    
    pm.parent('LeftRing5Jnt','LeftRing4Jnt')
    pm.parent('LeftRing4Jnt','LeftRing3Jnt')
    pm.parent('LeftRing3Jnt','LeftRing2Jnt')
    pm.parent('LeftRing2Jnt','LeftRing1Jnt')
    pm.parent('LeftRing1Jnt','LeftWristJnt')
    
    # Left Middle
    Utils.KGM_DuplicateJnt("JntGuide_LeftMiddle1JntGD", "LeftMiddle1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftMiddle2JntGD", "LeftMiddle2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftMiddle3JntGD", "LeftMiddle3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftMiddle4JntGD", "LeftMiddle4Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftMiddle5JntGD", "LeftMiddle5Jnt")
    
    pm.aimConstraint('LeftMiddle2Jnt','LeftMiddle1Jnt',weight=1,upVector=(0, 1, 0),skip='x',worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('LeftMiddle1Jnt_aimConstraint1')
    pm.makeIdentity('LeftMiddle1Jnt',apply=True,s=0,r=1,t=0,n=0)
    
    pm.parent('LeftMiddle5Jnt','LeftMiddle4Jnt')
    pm.parent('LeftMiddle4Jnt','LeftMiddle3Jnt')
    pm.parent('LeftMiddle3Jnt','LeftMiddle2Jnt')
    pm.parent('LeftMiddle2Jnt','LeftMiddle1Jnt')
    pm.parent('LeftMiddle1Jnt','LeftWristJnt')
    
    # Left_Index
    Utils.KGM_DuplicateJnt("JntGuide_LeftIndex1JntGD", "LeftIndex1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftIndex2JntGD", "LeftIndex2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftIndex3JntGD", "LeftIndex3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftIndex4JntGD", "LeftIndex4Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftIndex5JntGD", "LeftIndex5Jnt")
    
    pm.aimConstraint('LeftIndex2Jnt','LeftIndex1Jnt',weight=1,upVector=(0, 1, 0),skip='x',worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('LeftIndex1Jnt_aimConstraint1')
    pm.makeIdentity('LeftIndex1Jnt',apply=True,s=0,r=1,t=0,n=0)
    
    pm.parent('LeftIndex5Jnt','LeftIndex4Jnt')
    pm.parent('LeftIndex4Jnt','LeftIndex3Jnt')
    pm.parent('LeftIndex3Jnt','LeftIndex2Jnt')
    pm.parent('LeftIndex2Jnt','LeftIndex1Jnt')
    pm.parent('LeftIndex1Jnt','LeftWristJnt')
    
    # Left Thumb
    Utils.KGM_DuplicateJnt("JntGuide_LeftThumb1JntGD", "LeftThumb1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftThumb2JntGD", "LeftThumb2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftThumb3JntGD", "LeftThumb3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftThumb4JntGD", "LeftThumb4Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftThumb5JntGD", "LeftThumb5Jnt")
    
    pm.aimConstraint('LeftThumb2Jnt','LeftThumb1Jnt',weight=1,upVector=(0, 1, 0),skip='x',worldUpType="vector",offset=(0, 0, 0),aimVector=(1, 0, 0),worldUpVector=(0, 1, 0))
    pm.delete('LeftThumb1Jnt_aimConstraint1')
    pm.makeIdentity('LeftThumb1Jnt',apply=True,s=0,r=1,t=0,n=0)
    
    pm.parent('LeftThumb5Jnt','LeftThumb4Jnt')
    pm.parent('LeftThumb4Jnt','LeftThumb3Jnt')
    pm.parent('LeftThumb3Jnt','LeftThumb2Jnt')
    pm.parent('LeftThumb2Jnt','LeftThumb1Jnt')
    pm.parent('LeftThumb1Jnt','LeftWristJnt')


    #Right Arm
    pm.select('LeftClavicleJnt',r=1)
    pm.mirrorJoint(mirrorBehavior=1,mirrorYZ=1,searchReplace=("Left", "Right"))
    
    #Right Leg
    pm.select('LeftHipJnt',r=1)
    pm.mirrorJoint(mirrorBehavior=1,mirrorYZ=1,searchReplace=("Left", "Right"))
    
    #Right eye
    pm.select('LeftEyeJnt',r=1)
    pm.mirrorJoint(mirrorBehavior=1,mirrorYZ=1,searchReplace=("Left", "Right"))
    
    #Oral
    Utils.KGM_DuplicateJnt("JntGuide_JawJntGD", "JawJnt")
    Utils.KGM_DuplicateJnt("JntGuide_JawEndJntGD", "JawEndJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LowerTeethJntGD", "LowerTeethJnt")
    Utils.KGM_DuplicateJnt("JntGuide_UpperTeethJntGD", "UpperTeethJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LowerTeethEndJntGD", "LowerTeethEndJnt")
    Utils.KGM_DuplicateJnt("JntGuide_UpperTeethEndJntGD", "UpperTeethEndJnt")
    
    pm.parent('JawEndJnt','JawJnt')
    pm.parent('UpperTeethEndJnt','UpperTeethJnt')
    pm.parent('LowerTeethEndJnt','LowerTeethJnt')
    
    pm.joint('JawJnt',zso=1,ch=1,e=1,oj='xyz',secondaryAxisOrient='yup')
    
    pm.parent('JawJnt','HeadJnt')
    pm.parent('LowerTeethJnt','JawJnt')
    pm.parent('UpperTeethJnt','HeadJnt')
    
    pm.delete('UpperTeethEndJnt')
    pm.delete('LowerTeethEndJnt')
    
    pm.setAttr("UpperTeethJnt.radius",0.3)
    pm.setAttr("JawJnt.radius",0.3)
    pm.setAttr("JawEndJnt.radius",0.3)
    pm.setAttr("LowerTeethJnt.radius",0.3)
    
    #Tongue
    Utils.KGM_DuplicateJnt("JntGuide_Tongue1JntGD", "Tongue1Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Tongue2JntGD", "Tongue2Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Tongue3JntGD", "Tongue3Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Tongue4JntGD", "Tongue4Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Tongue5JntGD", "Tongue5Jnt")
    Utils.KGM_DuplicateJnt("JntGuide_Tongue6JntGD", "Tongue6Jnt")
    
    pm.setAttr("Tongue6Jnt.radius",0.3)
    pm.setAttr("Tongue1Jnt.radius",0.3)
    pm.setAttr("Tongue2Jnt.radius",0.3)
    pm.setAttr("Tongue3Jnt.radius",0.3)
    pm.setAttr("Tongue4Jnt.radius",0.3)
    pm.setAttr("Tongue5Jnt.radius",0.3)
    
    pm.parent('Tongue6Jnt','Tongue5Jnt')
    pm.parent('Tongue5Jnt','Tongue4Jnt')
    pm.parent('Tongue4Jnt','Tongue3Jnt')
    pm.parent('Tongue3Jnt','Tongue2Jnt')
    pm.parent('Tongue2Jnt','Tongue1Jnt')
    
    pm.joint('Tongue1Jnt',zso=1,ch=1,e=1,oj='xyz',secondaryAxisOrient='yup')
    pm.joint('Tongue6Jnt',zso=1,ch=1,e=1,oj='none',secondaryAxisOrient='yup')
    
    pm.parent('Tongue1Jnt','JawJnt')
    
    #nose
    Utils.KGM_DuplicateJnt("JntGuide_NoseRootJntGD", "NoseRootJnt")
    Utils.KGM_DuplicateJnt("JntGuide_NoseJntGD", "NoseJnt")
    Utils.KGM_DuplicateJnt("JntGuide_LeftNoseJntGD", "LeftNoseJnt")
    Utils.KGM_DuplicateJnt("JntGuide_RightNoseJntGD", "RightNoseJnt")
    
    pm.setAttr("NoseRootJnt.radius",0.3)
    pm.setAttr("NoseJnt.radius",0.3)
    pm.setAttr("LeftNoseJnt.radius",0.3)
    pm.setAttr("RightNoseJnt.radius",0.3)
    
    pm.parent('NoseJnt','NoseRootJnt')
    pm.parent('LeftNoseJnt','NoseRootJnt')
    pm.parent('RightNoseJnt','NoseRootJnt')
    pm.parent('NoseRootJnt','HeadJnt')
    
    #
    pm.setAttr("JntGuide_AllJntGDGrp.visibility",0)
    pm.select(cl=True)