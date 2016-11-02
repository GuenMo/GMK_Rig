import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_LeftFootSet():
    #/////////////////////////
    #Foot Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("LeftAnkleJnt", "LeftLegFootSystemJnt")
    Utils.KGM_DuplicateJnt("LeftBallJnt", "LeftLegFootBallSystemJnt")
    Utils.KGM_DuplicateJnt("LeftToeJnt", "LeftLegFootEndSystemJnt")
    Utils.KGM_DuplicateJnt("LeftBallJnt", "LeftToeLittle1RigJnt")
    Utils.KGM_DuplicateJnt("LeftToeJnt", "LeftToeLittle2RigJnt")
    pm.parent('LeftLegFootEndSystemJnt','LeftLegFootBallSystemJnt')
    pm.parent('LeftLegFootBallSystemJnt','LeftLegFootSystemJnt')
    pm.joint('LeftLegFootSystemJnt',zso=1,ch=1,e=1,oj='xzy',secondaryAxisOrient='yup')
    pm.parent('LeftToeLittle2RigJnt','LeftToeLittle1RigJnt')
    #/////////////////////////////////
    #LeftLegIKGrp foot systemset
    #/////////////////////////////////
    #/////////////////////////////////
    #Atrrbute add
    #/////////////////////////////////
    pm.addAttr('LeftLegIKCtrl',ln="Foot",at='bool')
    pm.setAttr('LeftLegIKCtrl.Foot',e=1,channelBox=True)
    pm.addAttr('LeftLegIKCtrl',ln="FootRoll",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.FootRoll',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="BallRoll",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.BallRoll',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="ToeRoll",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.ToeRoll',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="InOut",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.InOut',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="HeelPivot",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.HeelPivot',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="BallPivot",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.BallPivot',e=1,keyable=True)
    pm.addAttr('LeftLegIKCtrl',ln="ToePivot",max=10,at='double',min=-10)
    pm.setAttr('LeftLegIKCtrl.ToePivot',e=1,keyable=True)
    #////////////////////////////
    #make Pivot
    #////////////////////////////
    pm.group(em=1,n="LeftLegFootSystemInRotate")
    Utils.KGM_Aline("JntGuide_LeftFootInJntGD", "LeftLegFootSystemInRotate", "p")
    pm.setAttr("LeftLegFootSystemInRotate.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemOutRotate")
    Utils.KGM_Aline("JntGuide_LeftFootOutJntGD", "LeftLegFootSystemOutRotate", "p")
    pm.setAttr("LeftLegFootSystemOutRotate.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemToeEndRotate")
    Utils.KGM_Aline("JntGuide_LeftToeJntGD", "LeftLegFootSystemToeEndRotate", "p")
    pm.setAttr("LeftLegFootSystemToeEndRotate.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemHeelRotate")
    Utils.KGM_Aline("JntGuide_LeftHeelJntGD", "LeftLegFootSystemHeelRotate", "p")
    pm.setAttr("LeftLegFootSystemHeelRotate.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemBallRotate")
    Utils.KGM_Aline("JntGuide_LeftBallJntGD", "LeftLegFootSystemBallRotate", "p")
    pm.setAttr("LeftLegFootSystemBallRotate.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemFootRotate")
    Utils.KGM_Aline("JntGuide_LeftBallJntGD", "LeftLegFootSystemFootRotate", "p")
    pm.setAttr("LeftLegFootSystemFootRotate.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemIKPoint")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftLegFootSystemIKPoint", "p")
    pm.setAttr("LeftLegFootSystemIKPoint.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemToeRotate")
    Utils.KGM_Aline("JntGuide_LeftBallJntGD", "LeftLegFootSystemToeRotate", "p")
    pm.setAttr("LeftLegFootSystemToeRotate.rotateY",-90)
    pm.parent('LeftLegFootSystemIKPoint','LeftLegFootSystemFootRotate')
    pm.parent('LeftLegFootSystemFootRotate','LeftLegFootSystemBallRotate')
    pm.parent('LeftLegFootSystemToeRotate','LeftLegFootSystemBallRotate')
    pm.parent('LeftLegFootSystemBallRotate','LeftLegFootSystemHeelRotate')
    pm.parent('LeftLegFootSystemHeelRotate','LeftLegFootSystemToeEndRotate')
    pm.parent('LeftLegFootSystemToeEndRotate','LeftLegFootSystemOutRotate')
    pm.parent('LeftLegFootSystemOutRotate','LeftLegFootSystemInRotate')
    pm.parent('LeftLegFootSystemInRotate','LeftLegFootSystemGrp')
    pm.makeIdentity('LeftLegFootSystemInRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemOutRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemToeEndRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemHeelRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemBallRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemFootRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemIKPoint',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('LeftLegFootSystemToeRotate',apply=True,s=0,r=0,t=1,n=0)
    #////////////////////////////
    #make ctrl Pivot
    #////////////////////////////
    pm.group(em=1,n="LeftLegFootSystemInPivot")
    Utils.KGM_Aline("JntGuide_LeftFootInJntGD", "LeftLegFootSystemInPivot", "p")
    pm.setAttr("LeftLegFootSystemInPivot.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemOutPivot")
    Utils.KGM_Aline("JntGuide_LeftFootOutJntGD", "LeftLegFootSystemOutPivot", "p")
    pm.setAttr("LeftLegFootSystemOutPivot.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemToeEndPivot")
    Utils.KGM_Aline("JntGuide_LeftToeJntGD", "LeftLegFootSystemToeEndPivot", "p")
    pm.setAttr("LeftLegFootSystemToeEndPivot.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemHeelPivot")
    Utils.KGM_Aline("JntGuide_LeftHeelJntGD", "LeftLegFootSystemHeelPivot", "p")
    pm.setAttr("LeftLegFootSystemHeelPivot.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemBallPivot")
    Utils.KGM_Aline("JntGuide_LeftBallJntGD", "LeftLegFootSystemBallPivot", "p")
    pm.setAttr("LeftLegFootSystemBallPivot.rotateY",-90)
    pm.group(em=1,n="LeftLegFootSystemPivotGrp")
    Utils.KGM_Aline("JntGuide_LeftAnkleJntGD", "LeftLegFootSystemPivotGrp", "p")
    pm.setAttr("LeftLegFootSystemPivotGrp.rotateY",-90)
    pm.parent('LeftLegFootSystemInPivot','LeftLegFootSystemPivotGrp')
    pm.parent('LeftLegFootSystemOutPivot','LeftLegFootSystemPivotGrp')
    pm.parent('LeftLegFootSystemToeEndPivot','LeftLegFootSystemPivotGrp')
    pm.parent('LeftLegFootSystemHeelPivot','LeftLegFootSystemPivotGrp')
    pm.parent('LeftLegFootSystemBallPivot','LeftLegFootSystemPivotGrp')
    pm.parent('LeftLegFootSystemPivotGrp','LeftLegFootSystemGrp')
    pm.setAttr("LeftLegFootSystemInPivot.displayHandle",1)
    pm.setAttr("LeftLegFootSystemInPivot.dh",
        lock=True)
    pm.setAttr("LeftLegFootSystemOutPivot.displayHandle",1)
    pm.setAttr("LeftLegFootSystemOutPivot.dh",
        lock=True)
    pm.setAttr("LeftLegFootSystemToeEndPivot.displayHandle",1)
    pm.setAttr("LeftLegFootSystemToeEndPivot.dh",
        lock=True)
    pm.setAttr("LeftLegFootSystemHeelPivot.displayHandle",1)
    pm.setAttr("LeftLegFootSystemHeelPivot.dh",
        lock=True)
    pm.setAttr("LeftLegFootSystemBallPivot.displayHandle",1)
    pm.setAttr("LeftLegFootSystemBallPivot.dh",
        lock=True)
    pm.connectAttr('LeftLegFootSystemInPivot.center','LeftLegFootSystemInRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemInPivot.center','LeftLegFootSystemInRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegFootSystemOutPivot.center','LeftLegFootSystemOutRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemOutPivot.center','LeftLegFootSystemOutRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegFootSystemToeEndPivot.center','LeftLegFootSystemToeEndRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemToeEndPivot.center','LeftLegFootSystemToeEndRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegFootSystemHeelPivot.center','LeftLegFootSystemHeelRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemHeelPivot.center','LeftLegFootSystemHeelRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegFootSystemBallPivot.center','LeftLegFootSystemFootRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemBallPivot.center','LeftLegFootSystemFootRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegFootSystemBallPivot.center','LeftLegFootSystemToeRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemBallPivot.center','LeftLegFootSystemToeRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegFootSystemBallPivot.center','LeftLegFootSystemBallRotate.rotatePivot',f=1)
    pm.connectAttr('LeftLegFootSystemBallPivot.center','LeftLegFootSystemBallRotate.scalePivot',f=1)
    pm.connectAttr('LeftLegIKCtrl.Foot','LeftLegFootSystemPivotGrp.visibility',f=1)
    #///////////////////////////
    #IK set
    #///////////////////////////
    pm.ikHandle(ee="LeftToeLittle2RigJnt",sj="LeftToeLittle1RigJnt",sol='ikRPsolver')
    pm.rename("ikHandle1","LeftToeIKHandle")
    pm.rename("effector1","LeftToeIKHandleEffector")
    pm.ikHandle(ee="LeftLegFootBallSystemJnt",sj="LeftLegFootSystemJnt",sol='ikRPsolver')
    pm.rename("ikHandle1","LeftLegFootIKHandle")
    pm.rename("effector1","LeftLegFootIKHandleEffector")
    pm.ikHandle(ee="LeftLegFootEndSystemJnt",sj="LeftLegFootBallSystemJnt",sol='ikRPsolver')
    pm.rename("ikHandle1","LeftLegToeIKHandle")
    pm.rename("effector1","LeftLegToeIKHandleEffector")
    pm.parent('LeftLegFootIKHandle','LeftLegFootSystemFootRotate')
    pm.parent('LeftLegToeIKHandle','LeftLegFootSystemToeRotate')
    #/////////////////////////////////
    #LeftToeCtrlGrp foot systemset
    #/////////////////////////////////
    pm.group(em=1,n="LeftToeCtrlGrp")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftToeCtrlGrp", "a")
    pm.group(em=1,n="LeftToeCtrlIKScaleGrp")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftToeCtrlIKScaleGrp", "p")
    pm.group(em=1,n="LeftToeCtrlIKGrp")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftToeCtrlIKGrp", "p")
    pm.group(em=1,n="LeftToeCtrlFKGrp")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftToeCtrlFKGrp", "p")
    pm.group(em=1,n="LeftToeCtrlJntGrp")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftToeCtrlJntGrp", "p")
    pm.group(em=1,n="LeftLegFootSystemJntGrp")
    #KGM_Aline("LeftAnkleJnt","LeftLegFootSystemJntGrp","p");
    Utils.KGM_Aline("LeftAnkleIKConnectGrp", "LeftLegFootSystemJntGrp", "a")
    pm.parent('LeftToeCtrlIKGrp','LeftToeCtrlIKScaleGrp')
    pm.parent('LeftToeCtrlFKGrp','LeftToeCtrlIKScaleGrp')
    pm.parent('LeftToeCtrlJntGrp','LeftToeCtrlIKScaleGrp')
    pm.parent('LeftLegFootSystemJntGrp','LeftToeCtrlIKScaleGrp')
    pm.parent('LeftToeCtrlIKScaleGrp','LeftToeCtrlGrp')
    #/////////////////////////////////
    #LeftToeCtrlIKGrp
    #/////////////////////////////////
    pm.group(em=1,n="LeftToeMidIKCtrlOffsetGrp")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeMidIKCtrlOffsetGrp", "a")
    pm.group(em=1,n="LeftToeMidIKCtrlConnectGrp")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeMidIKCtrlConnectGrp", "a")
    pm.group(em=1,n="LeftToeMidIKCtrl")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeMidIKCtrl", "a")
    pm.group(em=1,n="LeftToeMidIKCtrlPoint")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeMidIKCtrlPoint", "a")
    pm.parent('LeftToeMidIKCtrl','LeftToeMidIKCtrlConnectGrp')
    pm.parent('LeftToeMidIKCtrlPoint','LeftToeMidIKCtrlConnectGrp')
    pm.parent('LeftToeMidIKCtrlConnectGrp','LeftToeMidIKCtrlOffsetGrp')
    pm.parent('LeftToeMidIKCtrlOffsetGrp','LeftToeCtrlIKGrp')
    pm.group(em=1,n="LeftToeIKCtrlGrp")
    Utils.KGM_Aline("LeftToeJnt", "LeftToeIKCtrlGrp", "a")
    pm.group(em=1,n="LeftToeIKCtrlParentGrp")
    Utils.KGM_Aline("LeftToeJnt", "LeftToeIKCtrlParentGrp", "a")
    pm.group(em=1,n="LeftToeIKCtrl")
    Utils.KGM_Aline("LeftToeJnt", "LeftToeIKCtrl", "a")
    pm.parent('LeftToeIKHandle','LeftToeIKCtrl')
    pm.parent('LeftToeIKCtrl','LeftToeIKCtrlParentGrp')
    pm.parent('LeftToeIKCtrlGrp','LeftToeCtrlIKGrp')
    pm.parent('LeftToeIKCtrlParentGrp','LeftToeIKCtrlGrp')
    #/////////////////////////////////
    #LeftToeCtrlFKGrp
    #/////////////////////////////////
    pm.group(em=1,n="LeftToeCtrlOffsetGrp")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeCtrlOffsetGrp", "a")
    pm.curve(p=[(0, 1, 0), (0, 0, 1), (0, -1, 0), (0, 0, -1), (0, 1, 0)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","LeftToeCtrl")
    Utils.KGM_MakeCtrlShape("LeftToeCtrl")
    pm.rename("LeftToeCtrlGrp1","LeftToeCtrlIKConnectGrp")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeCtrlIKConnectGrp", "a")
    pm.parent('LeftToeCtrlIKConnectGrp','LeftToeCtrlOffsetGrp')
    pm.parent('LeftToeCtrlOffsetGrp','LeftToeCtrlFKGrp')
    #/////////////////////////////////
    #LeftToeCtrlJntGrp
    #/////////////////////////////////
    pm.group(em=1,n="LeftToeIKHandlePoleVecGrp")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeIKHandlePoleVecGrp", "a")
    pm.group(em=1,n="LeftToeIKHandlePoleVec")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeIKHandlePoleVec", "p")
    pm.parent('LeftToeIKHandlePoleVec','LeftToeIKHandlePoleVecGrp')
    pm.parent('LeftToeIKHandlePoleVecGrp','LeftToeCtrlJntGrp')
    pm.parent('LeftToeLittle1RigJnt','LeftToeCtrlJntGrp')
    pm.setAttr("LeftToeIKHandlePoleVec.translateY",-0.2)
    #///////////////////////////
    #LeftLegFootSystemJntGrp
    #///////////////////////////
    pm.group(em=1,n="LeftToeCtrlTarget")
    Utils.KGM_Aline("LeftBallJnt", "LeftToeCtrlTarget", "a")
    pm.group(em=1,n="LeftLegFootSystemJntOrientPoint")
    Utils.KGM_Aline("LeftLegFootSystemJnt", "LeftLegFootSystemJntOrientPoint", "a")
    pm.group(em=1,n="LeftAnkleFKCtrlTarget")
    Utils.KGM_Aline("LeftAnkleJnt", "LeftAnkleFKCtrlTarget", "a")
    pm.group(em=1,n="LeftLegFootSystemJntGrpOrientPoint")
    #KGM_Aline("LeftAnkleJnt","LeftLegFootSystemJntGrpOrientPoint","p");
    Utils.KGM_Aline("LeftAnkleIKConnectGrp", "LeftLegFootSystemJntGrpOrientPoint", "a")
    pm.parent('LeftToeCtrlTarget','LeftLegFootBallSystemJnt')
    pm.parent('LeftLegFootSystemJntOrientPoint','LeftLegFootSystemJnt')
    pm.parent('LeftAnkleFKCtrlTarget','LeftLegFootSystemJnt')
    pm.parent('LeftLegFootSystemJnt','LeftLegFootSystemJntGrp')
    pm.parent('LeftLegFootSystemJntGrpOrientPoint','LeftLegFootSystemJntGrp')
    pm.parent('LeftToeCtrlGrp','LeftLegRigCtrlGrp')
    #///////////////////////////
    #outline 
    #///////////////////////////
    pm.parent('LeftToeCtrlBaseGrp','LeftLegRigSysGrp')
    #///////////////////////////
    #LeftToeCtrlGrp set
    #///////////////////////////
    #LeftToeCtrlGrp
    pm.parentConstraint('LeftLegRig3Jnt','LeftToeCtrlGrp',mo=1,weight=1,n="LeftToeCtrlGrpParCon")
    #LeftToeCtrlIKGrp
    pm.parentConstraint('LeftLegFootSystemJnt','LeftToeCtrlIKGrp',mo=1,weight=1,n="LeftAnkleJntParCon")
    #LeftToeMidIKCtrlPoint
    pm.parentConstraint('LeftToeMidIKCtrl','LeftLegFootBallSystemJnt','LeftToeMidIKCtrlPoint',mo=1,weight=1,n="LeftToeMidIKCtrlPointParCon")
    pm.setAttr("LeftLegIKFKCtrl.IKFK",1)
    pm.setAttr("LeftToeMidIKCtrlPointParCon.LeftToeMidIKCtrlW0",1)
    pm.setAttr("LeftToeMidIKCtrlPointParCon.LeftLegFootBallSystemJntW1",0)
    pm.setDrivenKeyframe('LeftToeMidIKCtrlPointParCon.LeftToeMidIKCtrlW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftToeMidIKCtrlPointParCon.LeftLegFootBallSystemJntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setAttr("LeftLegIKFKCtrl.IKFK",0)
    pm.setAttr("LeftToeMidIKCtrlPointParCon.LeftToeMidIKCtrlW0",0)
    pm.setAttr("LeftToeMidIKCtrlPointParCon.LeftLegFootBallSystemJntW1",1)
    pm.setDrivenKeyframe('LeftToeMidIKCtrlPointParCon.LeftToeMidIKCtrlW0',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftToeMidIKCtrlPointParCon.LeftLegFootBallSystemJntW1',currentDriver='LeftLegIKFKCtrl.IKFK')
    #LeftToeIKCtrlParentGrp
    pm.parentConstraint('LeftToeMidIKCtrlPoint','LeftToeIKCtrlParentGrp',mo=1,weight=1,n="LeftToeIKCtrlParentGrpParCon")
    #LeftToeIKHandle
    pm.poleVectorConstraint('LeftToeIKHandlePoleVec','LeftToeIKHandle',weight=1,n="LeftAnkleJntParCon")
    #LeftToeCtrlFKGrp
    pm.parentConstraint('LeftLegFootSystemJnt','LeftToeCtrlFKGrp',mo=1,weight=1,n="LeftToeIKCtrlParentGrpParCon")
    #LeftToeCtrlIKConnectGrp
    pm.connectAttr('LeftLegFKCtrlsVisBlend.output','LeftToeCtrlIKConnectGrp.visibility',f=1)
    pm.connectAttr('LeftToeLittle1RigJnt.rotate','LeftToeCtrlIKConnectGrp.rotate',f=1)
    #LeftToeCtrlJntGrp
    pm.parentConstraint('LeftLegFootSystemJnt','LeftToeCtrlJntGrp',mo=1,weight=1,n="LeftAnkleJntParCon")
    #LeftToeIKHandlePoleVecGrp
    pm.aimConstraint('LeftToeIKCtrl','LeftToeIKHandlePoleVecGrp',weight=1,upVector=(0, 1, 0),
        n="LeftToeIKHandlePoleVecGrpAimCon",
        worldUpType="objectrotation",
        worldUpObject='LeftToeIKCtrl',
        offset=(0, 0, 0),aimVector=(1, 0, 0),
        worldUpVector=(0, 1, 0))
    pm.reorder('LeftToeIKHandlePoleVecGrpAimCon',relative=-1)
    #LeftLegFootSystemJnt
    pm.orientConstraint('LeftLegFootSystemJntGrpOrientPoint','LeftLegFootSystemJnt',mo=1,weight=1,n="LeftLegFootSystemJntOriCon")
    pm.reorder('LeftLegFootSystemJntOriCon',relative=-3)
    #LeftLegFootBallSystemJnt
    pm.orientConstraint('LeftLegFootSystemJntOrientPoint','LeftLegFootBallSystemJnt',mo=1,weight=1,n="LeftLegFootBallSystemJntOriCon")
    pm.reorder('LeftLegFootBallSystemJntOriCon',relative=-2)
    pm.reorder('LeftLegFootSystemJntOrientPoint',relative=-1)
    #////////////////////////////
    #LeftLegFootSystemGrp
    #////////////////////////////
    #LeftLegFootSystemInRotate
    pm.setAttr("LeftLegIKCtrl.InOut",-10)
    pm.setAttr("LeftLegFootSystemInRotate.rotateX",90)
    pm.setDrivenKeyframe('LeftLegFootSystemInRotate.rotateX',currentDriver='LeftLegIKCtrl.InOut')
    pm.setAttr("LeftLegIKCtrl.InOut",0)
    pm.setAttr("LeftLegFootSystemInRotate.rotateX",0)
    pm.setDrivenKeyframe('LeftLegFootSystemInRotate.rotateX',currentDriver='LeftLegIKCtrl.InOut')
    #LeftLegFootSystemOutRotate
    pm.setAttr("LeftLegIKCtrl.InOut",10)
    pm.setAttr("LeftLegFootSystemOutRotate.rotateX",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemOutRotate.rotateX',currentDriver='LeftLegIKCtrl.InOut')
    pm.setAttr("LeftLegIKCtrl.InOut",0)
    pm.setAttr("LeftLegFootSystemOutRotate.rotateX",0)
    pm.setDrivenKeyframe('LeftLegFootSystemOutRotate.rotateX',currentDriver='LeftLegIKCtrl.InOut')
    #LeftLegFootSystemToeEndRotate
    pm.setAttr("LeftLegIKCtrl.ToeRoll",-10)
    pm.setAttr("LeftLegFootSystemToeEndRotate.rotateZ",90)
    pm.setDrivenKeyframe('LeftLegFootSystemToeEndRotate.rotateZ',currentDriver='LeftLegIKCtrl.ToeRoll')
    pm.setAttr("LeftLegIKCtrl.ToeRoll",10)
    pm.setAttr("LeftLegFootSystemToeEndRotate.rotateZ",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemToeEndRotate.rotateZ',currentDriver='LeftLegIKCtrl.ToeRoll')
    pm.setAttr("LeftLegIKCtrl.ToeRoll",0)
    pm.setAttr("LeftLegIKCtrl.ToePivot",-10)
    pm.setAttr("LeftLegFootSystemToeEndRotate.rotateY",90)
    pm.setDrivenKeyframe('LeftLegFootSystemToeEndRotate.rotateY',currentDriver='LeftLegIKCtrl.ToePivot')
    pm.setAttr("LeftLegIKCtrl.ToePivot",10)
    pm.setAttr("LeftLegFootSystemToeEndRotate.rotateY",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemToeEndRotate.rotateY',currentDriver='LeftLegIKCtrl.ToePivot')
    pm.setAttr("LeftLegIKCtrl.ToePivot",0)
    #LeftLegFootSystemHeelRotate
    pm.setAttr("LeftLegIKCtrl.FootRoll",-10)
    pm.setAttr("LeftLegFootSystemHeelRotate.rotateZ",90)
    pm.setDrivenKeyframe('LeftLegFootSystemHeelRotate.rotateZ',currentDriver='LeftLegIKCtrl.FootRoll')
    pm.setAttr("LeftLegIKCtrl.FootRoll",0)
    pm.setAttr("LeftLegFootSystemHeelRotate.rotateZ",0)
    pm.setDrivenKeyframe('LeftLegFootSystemHeelRotate.rotateZ',currentDriver='LeftLegIKCtrl.FootRoll')
    pm.setAttr("LeftLegIKCtrl.FootRoll",0)
    pm.setAttr("LeftLegIKCtrl.HeelPivot",-10)
    pm.setAttr("LeftLegFootSystemHeelRotate.rotateY",90)
    pm.setDrivenKeyframe('LeftLegFootSystemHeelRotate.rotateY',currentDriver='LeftLegIKCtrl.HeelPivot')
    pm.setAttr("LeftLegIKCtrl.HeelPivot",10)
    pm.setAttr("LeftLegFootSystemHeelRotate.rotateY",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemHeelRotate.rotateY',currentDriver='LeftLegIKCtrl.HeelPivot')
    pm.setAttr("LeftLegIKCtrl.HeelPivot",0)
    #LeftLegFootSystemBallRotate
    pm.setAttr("LeftLegIKCtrl.BallPivot",-10)
    pm.setAttr("LeftLegFootSystemBallRotate.rotateY",90)
    pm.setDrivenKeyframe('LeftLegFootSystemBallRotate.rotateY',currentDriver='LeftLegIKCtrl.BallPivot')
    pm.setAttr("LeftLegIKCtrl.BallPivot",10)
    pm.setAttr("LeftLegFootSystemBallRotate.rotateY",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemBallRotate.rotateY',currentDriver='LeftLegIKCtrl.BallPivot')
    pm.setAttr("LeftLegIKCtrl.BallPivot",0)
    #LeftLegFootSystemFootRotate
    pm.setAttr("LeftLegIKCtrl.FootRoll",10)
    pm.setAttr("LeftLegFootSystemFootRotate.rotateZ",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemFootRotate.rotateZ',currentDriver='LeftLegIKCtrl.FootRoll')
    pm.setAttr("LeftLegIKCtrl.FootRoll",0)
    pm.setAttr("LeftLegFootSystemFootRotate.rotateZ",0)
    pm.setDrivenKeyframe('LeftLegFootSystemFootRotate.rotateZ',currentDriver='LeftLegIKCtrl.FootRoll')
    #LeftLegFootSystemToeRotate
    pm.setAttr("LeftLegIKCtrl.BallRoll",-10)
    pm.setAttr("LeftLegFootSystemToeRotate.rotateZ",90)
    pm.setDrivenKeyframe('LeftLegFootSystemToeRotate.rotateZ',currentDriver='LeftLegIKCtrl.BallRoll')
    pm.setAttr("LeftLegIKCtrl.BallRoll",10)
    pm.setAttr("LeftLegFootSystemToeRotate.rotateZ",-90)
    pm.setDrivenKeyframe('LeftLegFootSystemToeRotate.rotateZ',currentDriver='LeftLegIKCtrl.BallRoll')
    pm.setAttr("LeftLegIKCtrl.BallRoll",0)
    #ikhandl 
    pm.setAttr("LeftLegIKFKCtrl.IKFK",1)
    pm.setAttr("LeftLegFootIKHandle.ikBlend",0)
    pm.setAttr("LeftLegToeIKHandle.ikBlend",0)
    pm.setDrivenKeyframe('LeftLegToeIKHandle.ikBlend',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegFootIKHandle.ikBlend',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setAttr("LeftLegIKFKCtrl.IKFK",0)
    pm.setAttr("LeftLegFootIKHandle.ikBlend",1)
    pm.setAttr("LeftLegToeIKHandle.ikBlend",1)
    pm.setDrivenKeyframe('LeftLegToeIKHandle.ikBlend',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('LeftLegFootIKHandle.ikBlend',currentDriver='LeftLegIKFKCtrl.IKFK')
    pm.pointConstraint('LeftLegFootSystemIKPoint','LeftLegIKCtrlPoint',mo=1,weight=1,n="LeftLegIKCtrlPointCon")
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('LeftLegRigSysGrp',ln="ToeFKCtrlRadius",at='double')
    pm.setAttr('LeftLegRigSysGrp.ToeFKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('LeftLegRigSysGrp.ToeFKCtrlRadius','LeftToeCtrlBase.scaleX',f=1)
    pm.connectAttr('LeftLegRigSysGrp.ToeFKCtrlRadius','LeftToeCtrlBase.scaleY',f=1)
    pm.connectAttr('LeftLegRigSysGrp.ToeFKCtrlRadius','LeftToeCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #default
    #///////////////////////////
    pm.setAttr("LeftLegRigSysGrp.ToeFKCtrlRadius",0.2)