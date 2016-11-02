import pymel.core as pm
import Core_GMKRig.Utils as Utils
reload(Utils)

def KGM_RightFootSet():
    #/////////////////////////
    #Foot Joint 
    #/////////////////////////
    Utils.KGM_DuplicateJnt("RightAnkleJnt", "RightLegFootSystemJnt")
    Utils.KGM_DuplicateJnt("RightBallJnt", "RightLegFootBallSystemJnt")
    Utils.KGM_DuplicateJnt("RightToeJnt", "RightLegFootEndSystemJnt")
    Utils.KGM_DuplicateJnt("RightBallJnt", "RightToeLittle1RigJnt")
    Utils.KGM_DuplicateJnt("RightToeJnt", "RightToeLittle2RigJnt")
    pm.parent('RightLegFootEndSystemJnt','RightLegFootBallSystemJnt')
    pm.parent('RightLegFootBallSystemJnt','RightLegFootSystemJnt')
    #joint -e -oj none -secondaryAxisOrient yup -zso RightLegFootSystemJnt;
    pm.joint('RightLegFootSystemJnt',zso=1,e=1,oj='xyz',secondaryAxisOrient='yup')
    pm.parent('RightLegFootBallSystemJnt',w=1)
    pm.setAttr("RightLegFootSystemJnt.rotateY",180)
    pm.setAttr("RightLegFootSystemJnt.rotateX",90)
    pm.makeIdentity('RightLegFootSystemJnt',apply=True,s=0,r=1,t=0,n=0)
    pm.parent('RightLegFootBallSystemJnt','RightLegFootSystemJnt')
    pm.parent('RightToeLittle2RigJnt','RightToeLittle1RigJnt')
    #/////////////////////////////////
    #RightLegIKGrp foot systemset
    #/////////////////////////////////
    #/////////////////////////////////
    #Atrrbute add
    #/////////////////////////////////
    pm.addAttr('RightLegIKCtrl',ln="Foot",at='bool')
    pm.setAttr('RightLegIKCtrl.Foot',e=1,channelBox=True)
    pm.addAttr('RightLegIKCtrl',ln="FootRoll",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.FootRoll',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="BallRoll",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.BallRoll',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="ToeRoll",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.ToeRoll',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="InOut",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.InOut',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="HeelPivot",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.HeelPivot',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="BallPivot",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.BallPivot',e=1,keyable=True)
    pm.addAttr('RightLegIKCtrl',ln="ToePivot",max=10,at='double',min=-10)
    pm.setAttr('RightLegIKCtrl.ToePivot',e=1,keyable=True)
    #////////////////////////////
    #make Pivot
    #////////////////////////////
    pm.group(em=1,n="RightLegFootSystemInRotate")
    Utils.KGM_Aline("JntGuide_RightFootInJntGD", "RightLegFootSystemInRotate", "p")
    pm.setAttr("RightLegFootSystemInRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemInRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemInRotate.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemOutRotate")
    Utils.KGM_Aline("JntGuide_RightFootOutJntGD", "RightLegFootSystemOutRotate", "p")
    pm.setAttr("RightLegFootSystemOutRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemOutRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemOutRotate.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemToeEndRotate")
    Utils.KGM_Aline("JntGuide_RightToeJntGD", "RightLegFootSystemToeEndRotate", "p")
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemHeelRotate")
    Utils.KGM_Aline("JntGuide_RightHeelJntGD", "RightLegFootSystemHeelRotate", "p")
    pm.setAttr("RightLegFootSystemHeelRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemHeelRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemHeelRotate.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemBallRotate")
    Utils.KGM_Aline("JntGuide_RightBallJntGD", "RightLegFootSystemBallRotate", "p")
    pm.setAttr("RightLegFootSystemBallRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemBallRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemBallRotate.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemFootRotate")
    Utils.KGM_Aline("JntGuide_RightBallJntGD", "RightLegFootSystemFootRotate", "p")
    pm.setAttr("RightLegFootSystemFootRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemFootRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemFootRotate.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemIKPoint")
    Utils.KGM_Aline("RightAnkleJnt", "RightLegFootSystemIKPoint", "p")
    pm.setAttr("RightLegFootSystemIKPoint.rotateX",-90)
    pm.setAttr("RightLegFootSystemIKPoint.rotateY",90)
    pm.setAttr("RightLegFootSystemIKPoint.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemToeRotate")
    Utils.KGM_Aline("JntGuide_RightBallJntGD", "RightLegFootSystemToeRotate", "p")
    pm.setAttr("RightLegFootSystemToeRotate.rotateX",-90)
    pm.setAttr("RightLegFootSystemToeRotate.rotateY",90)
    pm.setAttr("RightLegFootSystemToeRotate.rotateZ",90)
    pm.parent('RightLegFootSystemIKPoint','RightLegFootSystemFootRotate')
    pm.parent('RightLegFootSystemFootRotate','RightLegFootSystemBallRotate')
    pm.parent('RightLegFootSystemToeRotate','RightLegFootSystemBallRotate')
    pm.parent('RightLegFootSystemBallRotate','RightLegFootSystemHeelRotate')
    pm.parent('RightLegFootSystemHeelRotate','RightLegFootSystemToeEndRotate')
    pm.parent('RightLegFootSystemToeEndRotate','RightLegFootSystemOutRotate')
    pm.parent('RightLegFootSystemOutRotate','RightLegFootSystemInRotate')
    pm.parent('RightLegFootSystemInRotate','RightLegFootSystemGrp')
    pm.makeIdentity('RightLegFootSystemInRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemOutRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemToeEndRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemHeelRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemBallRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemFootRotate',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemIKPoint',apply=True,s=0,r=0,t=1,n=0)
    pm.makeIdentity('RightLegFootSystemToeRotate',apply=True,s=0,r=0,t=1,n=0)
    #////////////////////////////
    #make ctrl Pivot
    #////////////////////////////
    pm.group(em=1,n="RightLegFootSystemInPivot")
    Utils.KGM_Aline("JntGuide_RightFootInJntGD", "RightLegFootSystemInPivot", "p")
    pm.setAttr("RightLegFootSystemInPivot.rotateX",-90)
    pm.setAttr("RightLegFootSystemInPivot.rotateY",90)
    pm.setAttr("RightLegFootSystemInPivot.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemOutPivot")
    Utils.KGM_Aline("JntGuide_RightFootOutJntGD", "RightLegFootSystemOutPivot", "p")
    pm.setAttr("RightLegFootSystemOutPivot.rotateX",-90)
    pm.setAttr("RightLegFootSystemOutPivot.rotateY",90)
    pm.setAttr("RightLegFootSystemOutPivot.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemToeEndPivot")
    Utils.KGM_Aline("JntGuide_RightToeJntGD", "RightLegFootSystemToeEndPivot", "p")
    pm.setAttr("RightLegFootSystemToeEndPivot.rotateX",-90)
    pm.setAttr("RightLegFootSystemToeEndPivot.rotateY",90)
    pm.setAttr("RightLegFootSystemToeEndPivot.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemHeelPivot")
    Utils.KGM_Aline("JntGuide_RightHeelJntGD", "RightLegFootSystemHeelPivot", "p")
    pm.setAttr("RightLegFootSystemHeelPivot.rotateX",-90)
    pm.setAttr("RightLegFootSystemHeelPivot.rotateY",90)
    pm.setAttr("RightLegFootSystemHeelPivot.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemBallPivot")
    Utils.KGM_Aline("JntGuide_RightBallJntGD", "RightLegFootSystemBallPivot", "p")
    pm.setAttr("RightLegFootSystemBallPivot.rotateX",-90)
    pm.setAttr("RightLegFootSystemBallPivot.rotateY",90)
    pm.setAttr("RightLegFootSystemBallPivot.rotateZ",90)
    pm.group(em=1,n="RightLegFootSystemPivotGrp")
    Utils.KGM_Aline("JntGuide_RightAnkleJntGD", "RightLegFootSystemPivotGrp", "p")
    pm.setAttr("RightLegFootSystemPivotGrp.rotateX",-90)
    pm.setAttr("RightLegFootSystemPivotGrp.rotateY",90)
    pm.setAttr("RightLegFootSystemPivotGrp.rotateZ",90)
    pm.parent('RightLegFootSystemInPivot','RightLegFootSystemPivotGrp')
    pm.parent('RightLegFootSystemOutPivot','RightLegFootSystemPivotGrp')
    pm.parent('RightLegFootSystemToeEndPivot','RightLegFootSystemPivotGrp')
    pm.parent('RightLegFootSystemHeelPivot','RightLegFootSystemPivotGrp')
    pm.parent('RightLegFootSystemBallPivot','RightLegFootSystemPivotGrp')
    pm.parent('RightLegFootSystemPivotGrp','RightLegFootSystemGrp')
    pm.setAttr("RightLegFootSystemInPivot.displayHandle",1)
    pm.setAttr("RightLegFootSystemInPivot.dh",
        lock=True)
    pm.setAttr("RightLegFootSystemOutPivot.displayHandle",1)
    pm.setAttr("RightLegFootSystemOutPivot.dh",
        lock=True)
    pm.setAttr("RightLegFootSystemToeEndPivot.displayHandle",1)
    pm.setAttr("RightLegFootSystemToeEndPivot.dh",
        lock=True)
    pm.setAttr("RightLegFootSystemHeelPivot.displayHandle",1)
    pm.setAttr("RightLegFootSystemHeelPivot.dh",
        lock=True)
    pm.setAttr("RightLegFootSystemBallPivot.displayHandle",1)
    pm.setAttr("RightLegFootSystemBallPivot.dh",
        lock=True)
    pm.connectAttr('RightLegFootSystemInPivot.center','RightLegFootSystemInRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemInPivot.center','RightLegFootSystemInRotate.scalePivot',f=1)
    pm.connectAttr('RightLegFootSystemOutPivot.center','RightLegFootSystemOutRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemOutPivot.center','RightLegFootSystemOutRotate.scalePivot',f=1)
    pm.connectAttr('RightLegFootSystemToeEndPivot.center','RightLegFootSystemToeEndRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemToeEndPivot.center','RightLegFootSystemToeEndRotate.scalePivot',f=1)
    pm.connectAttr('RightLegFootSystemHeelPivot.center','RightLegFootSystemHeelRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemHeelPivot.center','RightLegFootSystemHeelRotate.scalePivot',f=1)
    pm.connectAttr('RightLegFootSystemBallPivot.center','RightLegFootSystemFootRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemBallPivot.center','RightLegFootSystemFootRotate.scalePivot',f=1)
    pm.connectAttr('RightLegFootSystemBallPivot.center','RightLegFootSystemToeRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemBallPivot.center','RightLegFootSystemToeRotate.scalePivot',f=1)
    pm.connectAttr('RightLegFootSystemBallPivot.center','RightLegFootSystemBallRotate.rotatePivot',f=1)
    pm.connectAttr('RightLegFootSystemBallPivot.center','RightLegFootSystemBallRotate.scalePivot',f=1)
    pm.connectAttr('RightLegIKCtrl.Foot','RightLegFootSystemPivotGrp.visibility',f=1)
    #///////////////////////////
    #IK set
    #///////////////////////////
    pm.ikHandle(ee="RightToeLittle2RigJnt",sj="RightToeLittle1RigJnt",sol='ikRPsolver')
    pm.rename("ikHandle1","RightToeIKHandle")
    pm.rename("effector1","RightToeIKHandleEffector")
    pm.ikHandle(ee="RightLegFootBallSystemJnt",sj="RightLegFootSystemJnt",sol='ikRPsolver')
    pm.rename("ikHandle1","RightLegFootIKHandle")
    pm.rename("effector1","RightLegFootIKHandleEffector")
    pm.ikHandle(ee="RightLegFootEndSystemJnt",sj="RightLegFootBallSystemJnt",sol='ikRPsolver')
    pm.rename("ikHandle1","RightLegToeIKHandle")
    pm.rename("effector1","RightLegToeIKHandleEffector")
    pm.parent('RightLegFootIKHandle','RightLegFootSystemFootRotate')
    pm.parent('RightLegToeIKHandle','RightLegFootSystemToeRotate')
    #/////////////////////////////////
    #RightToeCtrlGrp foot systemset
    #/////////////////////////////////
    pm.group(em=1,n="RightToeCtrlGrp")
    Utils.KGM_Aline("RightAnkleFKConnectGrp", "RightToeCtrlGrp", "a")
    pm.group(em=1,n="RightToeCtrlIKScaleGrp")
    Utils.KGM_Aline("RightAnkleIKConnectGrp", "RightToeCtrlIKScaleGrp", "a")
    pm.group(em=1,n="RightToeCtrlIKGrp")
    Utils.KGM_Aline("RightAnkleJnt", "RightToeCtrlIKGrp", "p")
    pm.group(em=1,n="RightToeCtrlFKGrp")
    Utils.KGM_Aline("RightAnkleJnt", "RightToeCtrlFKGrp", "p")
    pm.group(em=1,n="RightToeCtrlJntGrp")
    Utils.KGM_Aline("RightAnkleJnt", "RightToeCtrlJntGrp", "p")
    pm.group(em=1,n="RightLegFootSystemJntGrp")
    Utils.KGM_Aline("RightAnkleIKConnectGrp", "RightLegFootSystemJntGrp", "a")
    pm.parent('RightToeCtrlIKGrp','RightToeCtrlIKScaleGrp')
    pm.parent('RightToeCtrlFKGrp','RightToeCtrlIKScaleGrp')
    pm.parent('RightToeCtrlJntGrp','RightToeCtrlIKScaleGrp')
    pm.parent('RightLegFootSystemJntGrp','RightToeCtrlIKScaleGrp')
    pm.parent('RightToeCtrlIKScaleGrp','RightToeCtrlGrp')
    #/////////////////////////////////
    #RightToeCtrlIKGrp
    #/////////////////////////////////
    pm.group(em=1,n="RightToeMidIKCtrlOffsetGrp")
    Utils.KGM_Aline("RightBallJnt", "RightToeMidIKCtrlOffsetGrp", "a")
    pm.group(em=1,n="RightToeMidIKCtrlConnectGrp")
    Utils.KGM_Aline("RightBallJnt", "RightToeMidIKCtrlConnectGrp", "a")
    pm.group(em=1,n="RightToeMidIKCtrl")
    Utils.KGM_Aline("RightBallJnt", "RightToeMidIKCtrl", "a")
    pm.group(em=1,n="RightToeMidIKCtrlPoint")
    Utils.KGM_Aline("RightBallJnt", "RightToeMidIKCtrlPoint", "a")
    pm.parent('RightToeMidIKCtrl','RightToeMidIKCtrlConnectGrp')
    pm.parent('RightToeMidIKCtrlPoint','RightToeMidIKCtrlConnectGrp')
    pm.parent('RightToeMidIKCtrlConnectGrp','RightToeMidIKCtrlOffsetGrp')
    pm.parent('RightToeMidIKCtrlOffsetGrp','RightToeCtrlIKGrp')
    pm.group(em=1,n="RightToeIKCtrlGrp")
    Utils.KGM_Aline("RightToeJnt", "RightToeIKCtrlGrp", "a")
    pm.group(em=1,n="RightToeIKCtrlParentGrp")
    Utils.KGM_Aline("RightToeJnt", "RightToeIKCtrlParentGrp", "a")
    pm.group(em=1,n="RightToeIKCtrl")
    Utils.KGM_Aline("RightToeJnt", "RightToeIKCtrl", "a")
    pm.parent('RightToeIKHandle','RightToeIKCtrl')
    pm.parent('RightToeIKCtrl','RightToeIKCtrlParentGrp')
    pm.parent('RightToeIKCtrlGrp','RightToeCtrlIKGrp')
    pm.parent('RightToeIKCtrlParentGrp','RightToeIKCtrlGrp')
    #/////////////////////////////////
    #RightToeCtrlFKGrp
    #/////////////////////////////////
    pm.group(em=1,n="RightToeCtrlOffsetGrp")
    Utils.KGM_Aline("RightBallJnt", "RightToeCtrlOffsetGrp", "a")
    pm.curve(p=[(0, 1, 0), (0, 0, 1), (0, -1, 0), (0, 0, -1), (0, 1, 0)],k=[0, 1, 2, 3, 4],d=1)
    pm.rename("curve1","RightToeCtrl")
    Utils.KGM_MakeCtrlShape("RightToeCtrl")
    pm.rename("RightToeCtrlGrp1","RightToeCtrlIKConnectGrp")
    Utils.KGM_Aline("RightBallJnt", "RightToeCtrlIKConnectGrp", "a")
    pm.parent('RightToeCtrlIKConnectGrp','RightToeCtrlOffsetGrp')
    pm.parent('RightToeCtrlOffsetGrp','RightToeCtrlFKGrp')
    #/////////////////////////////////
    #RightToeCtrlJntGrp
    #/////////////////////////////////
    pm.group(em=1,n="RightToeIKHandlePoleVecGrp")
    Utils.KGM_Aline("RightBallJnt", "RightToeIKHandlePoleVecGrp", "p")
    pm.setAttr("RightToeIKHandlePoleVecGrp.rotateX",-90)
    pm.setAttr("RightToeIKHandlePoleVecGrp.rotateY",-90)
    pm.group(em=1,n="RightToeIKHandlePoleVec")
    Utils.KGM_Aline("RightBallJnt", "RightToeIKHandlePoleVec", "p")
    pm.parent('RightToeIKHandlePoleVec','RightToeIKHandlePoleVecGrp')
    pm.parent('RightToeIKHandlePoleVecGrp','RightToeCtrlJntGrp')
    pm.parent('RightToeLittle1RigJnt','RightToeCtrlJntGrp')
    pm.setAttr("RightToeIKHandlePoleVec.translateY",0.2)
    #///////////////////////////
    #RightLegFootSystemJntGrp
    #///////////////////////////
    pm.group(em=1,n="RightToeCtrlTarget")
    Utils.KGM_Aline("RightBallJnt", "RightToeCtrlTarget", "a")
    pm.group(em=1,n="RightLegFootSystemJntOrientPoint")
    Utils.KGM_Aline("RightLegFootSystemJnt", "RightLegFootSystemJntOrientPoint", "a")
    pm.group(em=1,n="RightAnkleFKCtrlTarget")
    Utils.KGM_Aline("RightAnkleJnt", "RightAnkleFKCtrlTarget", "a")
    pm.group(em=1,n="RightLegFootSystemJntGrpOrientPoint")
    Utils.KGM_Aline("RightAnkleIKConnectGrp", "RightLegFootSystemJntGrpOrientPoint", "a")
    pm.parent('RightToeCtrlTarget','RightLegFootBallSystemJnt')
    pm.parent('RightLegFootSystemJntOrientPoint','RightLegFootSystemJnt')
    pm.parent('RightAnkleFKCtrlTarget','RightLegFootSystemJnt')
    pm.parent('RightLegFootSystemJnt','RightLegFootSystemJntGrp')
    pm.parent('RightLegFootSystemJntGrpOrientPoint','RightLegFootSystemJntGrp')
    pm.parent('RightToeCtrlGrp','RightLegRigCtrlGrp')
    #///////////////////////////
    #outline 
    #///////////////////////////
    pm.parent('RightToeCtrlBaseGrp','RightLegRigSysGrp')
    #///////////////////////////
    #RightToeCtrlGrp set
    #///////////////////////////
    #RightToeCtrlGrp
    pm.parentConstraint('RightLegRig3Jnt','RightToeCtrlGrp',mo=1,weight=1,n="RightToeCtrlGrpParCon")
    #RightToeCtrlIKGrp
    pm.parentConstraint('RightLegFootSystemJnt','RightToeCtrlIKGrp',mo=1,weight=1,n="RightAnkleJntParCon")
    #RightToeMidIKCtrlPoint
    pm.parentConstraint('RightToeMidIKCtrl','RightLegFootBallSystemJnt','RightToeMidIKCtrlPoint',mo=1,weight=1,n="RightToeMidIKCtrlPointParCon")
    pm.setAttr("RightLegIKFKCtrl.IKFK",1)
    pm.setAttr("RightToeMidIKCtrlPointParCon.RightToeMidIKCtrlW0",1)
    pm.setAttr("RightToeMidIKCtrlPointParCon.RightLegFootBallSystemJntW1",0)
    pm.setDrivenKeyframe('RightToeMidIKCtrlPointParCon.RightToeMidIKCtrlW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightToeMidIKCtrlPointParCon.RightLegFootBallSystemJntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setAttr("RightLegIKFKCtrl.IKFK",0)
    pm.setAttr("RightToeMidIKCtrlPointParCon.RightToeMidIKCtrlW0",0)
    pm.setAttr("RightToeMidIKCtrlPointParCon.RightLegFootBallSystemJntW1",1)
    pm.setDrivenKeyframe('RightToeMidIKCtrlPointParCon.RightToeMidIKCtrlW0',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightToeMidIKCtrlPointParCon.RightLegFootBallSystemJntW1',currentDriver='RightLegIKFKCtrl.IKFK')
    #RightToeIKCtrlParentGrp
    pm.parentConstraint('RightToeMidIKCtrlPoint','RightToeIKCtrlParentGrp',mo=1,weight=1,n="RightToeIKCtrlParentGrpParCon")
    #RightToeIKHandle
    pm.poleVectorConstraint('RightToeIKHandlePoleVec','RightToeIKHandle',weight=1,n="RightAnkleJntParCon")
    #RightToeCtrlFKGrp
    pm.parentConstraint('RightLegFootSystemJnt','RightToeCtrlFKGrp',mo=1,weight=1,n="RightToeIKCtrlParentGrpParCon")
    #RightToeCtrlIKConnectGrp
    pm.connectAttr('RightLegFKCtrlsVisBlend.output','RightToeCtrlIKConnectGrp.visibility',f=1)
    pm.connectAttr('RightToeLittle1RigJnt.rotate','RightToeCtrlIKConnectGrp.rotate',f=1)
    #RightToeCtrlJntGrp
    pm.parentConstraint('RightLegFootSystemJnt','RightToeCtrlJntGrp',mo=1,weight=1,n="RightAnkleJntParCon")
    #RightToeIKHandlePoleVecGrp
    pm.aimConstraint('RightToeIKCtrl','RightToeIKHandlePoleVecGrp',weight=1,upVector=(0, 1, 0),
        n="RightToeIKHandlePoleVecGrpAimCon",
        worldUpType="objectrotation",
        worldUpObject='RightToeIKCtrl',
        offset=(0, 0, 0),aimVector=(1, 0, 0),
        worldUpVector=(0, 1, 0))
    pm.reorder('RightToeIKHandlePoleVecGrpAimCon',relative=-1)
    #RightLegFootSystemJnt
    pm.orientConstraint('RightLegFootSystemJntGrpOrientPoint','RightLegFootSystemJnt',mo=1,weight=1,n="RightLegFootSystemJntOriCon")
    pm.reorder('RightLegFootSystemJntOriCon',relative=-3)
    #RightLegFootBallSystemJnt
    pm.orientConstraint('RightLegFootSystemJntOrientPoint','RightLegFootBallSystemJnt',mo=1,weight=1,n="RightLegFootBallSystemJntOriCon")
    pm.reorder('RightLegFootBallSystemJntOriCon',relative=-2)
    pm.reorder('RightLegFootSystemJntOrientPoint',relative=-1)
    #////////////////////////////
    #RightLegFootSystemGrp
    #////////////////////////////
    #RightLegFootSystemInRotate
    pm.setAttr("RightLegIKCtrl.InOut",-10)
    pm.setAttr("RightLegFootSystemInRotate.rotateX",90)
    pm.setDrivenKeyframe('RightLegFootSystemInRotate.rotateX',currentDriver='RightLegIKCtrl.InOut')
    pm.setAttr("RightLegIKCtrl.InOut",0)
    pm.setAttr("RightLegFootSystemInRotate.rotateX",0)
    pm.setDrivenKeyframe('RightLegFootSystemInRotate.rotateX',currentDriver='RightLegIKCtrl.InOut')
    #RightLegFootSystemOutRotate
    pm.setAttr("RightLegIKCtrl.InOut",10)
    pm.setAttr("RightLegFootSystemOutRotate.rotateX",-90)
    pm.setDrivenKeyframe('RightLegFootSystemOutRotate.rotateX',currentDriver='RightLegIKCtrl.InOut')
    pm.setAttr("RightLegIKCtrl.InOut",0)
    pm.setAttr("RightLegFootSystemOutRotate.rotateX",0)
    pm.setDrivenKeyframe('RightLegFootSystemOutRotate.rotateX',currentDriver='RightLegIKCtrl.InOut')
    #RightLegFootSystemToeEndRotate
    pm.setAttr("RightLegIKCtrl.ToeRoll",-10)
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateZ",90)
    pm.setDrivenKeyframe('RightLegFootSystemToeEndRotate.rotateZ',currentDriver='RightLegIKCtrl.ToeRoll')
    pm.setAttr("RightLegIKCtrl.ToeRoll",10)
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateZ",-90)
    pm.setDrivenKeyframe('RightLegFootSystemToeEndRotate.rotateZ',currentDriver='RightLegIKCtrl.ToeRoll')
    pm.setAttr("RightLegIKCtrl.ToeRoll",0)
    pm.setAttr("RightLegIKCtrl.ToePivot",-10)
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateY",90)
    pm.setDrivenKeyframe('RightLegFootSystemToeEndRotate.rotateY',currentDriver='RightLegIKCtrl.ToePivot')
    pm.setAttr("RightLegIKCtrl.ToePivot",10)
    pm.setAttr("RightLegFootSystemToeEndRotate.rotateY",-90)
    pm.setDrivenKeyframe('RightLegFootSystemToeEndRotate.rotateY',currentDriver='RightLegIKCtrl.ToePivot')
    pm.setAttr("RightLegIKCtrl.ToePivot",0)
    #RightLegFootSystemHeelRotate
    pm.setAttr("RightLegIKCtrl.FootRoll",-10)
    pm.setAttr("RightLegFootSystemHeelRotate.rotateZ",90)
    pm.setDrivenKeyframe('RightLegFootSystemHeelRotate.rotateZ',currentDriver='RightLegIKCtrl.FootRoll')
    pm.setAttr("RightLegIKCtrl.FootRoll",0)
    pm.setAttr("RightLegFootSystemHeelRotate.rotateZ",0)
    pm.setDrivenKeyframe('RightLegFootSystemHeelRotate.rotateZ',currentDriver='RightLegIKCtrl.FootRoll')
    pm.setAttr("RightLegIKCtrl.FootRoll",0)
    pm.setAttr("RightLegIKCtrl.HeelPivot",-10)
    pm.setAttr("RightLegFootSystemHeelRotate.rotateY",90)
    pm.setDrivenKeyframe('RightLegFootSystemHeelRotate.rotateY',currentDriver='RightLegIKCtrl.HeelPivot')
    pm.setAttr("RightLegIKCtrl.HeelPivot",10)
    pm.setAttr("RightLegFootSystemHeelRotate.rotateY",-90)
    pm.setDrivenKeyframe('RightLegFootSystemHeelRotate.rotateY',currentDriver='RightLegIKCtrl.HeelPivot')
    pm.setAttr("RightLegIKCtrl.HeelPivot",0)
    #RightLegFootSystemBallRotate
    pm.setAttr("RightLegIKCtrl.BallPivot",-10)
    pm.setAttr("RightLegFootSystemBallRotate.rotateY",90)
    pm.setDrivenKeyframe('RightLegFootSystemBallRotate.rotateY',currentDriver='RightLegIKCtrl.BallPivot')
    pm.setAttr("RightLegIKCtrl.BallPivot",10)
    pm.setAttr("RightLegFootSystemBallRotate.rotateY",-90)
    pm.setDrivenKeyframe('RightLegFootSystemBallRotate.rotateY',currentDriver='RightLegIKCtrl.BallPivot')
    pm.setAttr("RightLegIKCtrl.BallPivot",0)
    #RightLegFootSystemFootRotate
    pm.setAttr("RightLegIKCtrl.FootRoll",10)
    pm.setAttr("RightLegFootSystemFootRotate.rotateZ",-90)
    pm.setDrivenKeyframe('RightLegFootSystemFootRotate.rotateZ',currentDriver='RightLegIKCtrl.FootRoll')
    pm.setAttr("RightLegIKCtrl.FootRoll",0)
    pm.setAttr("RightLegFootSystemFootRotate.rotateZ",0)
    pm.setDrivenKeyframe('RightLegFootSystemFootRotate.rotateZ',currentDriver='RightLegIKCtrl.FootRoll')
    #RightLegFootSystemToeRotate
    pm.setAttr("RightLegIKCtrl.BallRoll",-10)
    pm.setAttr("RightLegFootSystemToeRotate.rotateZ",90)
    pm.setDrivenKeyframe('RightLegFootSystemToeRotate.rotateZ',currentDriver='RightLegIKCtrl.BallRoll')
    pm.setAttr("RightLegIKCtrl.BallRoll",10)
    pm.setAttr("RightLegFootSystemToeRotate.rotateZ",-90)
    pm.setDrivenKeyframe('RightLegFootSystemToeRotate.rotateZ',currentDriver='RightLegIKCtrl.BallRoll')
    pm.setAttr("RightLegIKCtrl.BallRoll",0)
    #ikhandl 
    pm.setAttr("RightLegIKFKCtrl.IKFK",1)
    pm.setAttr("RightLegFootIKHandle.ikBlend",0)
    pm.setAttr("RightLegToeIKHandle.ikBlend",0)
    pm.setDrivenKeyframe('RightLegToeIKHandle.ikBlend',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegFootIKHandle.ikBlend',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setAttr("RightLegIKFKCtrl.IKFK",0)
    pm.setAttr("RightLegFootIKHandle.ikBlend",1)
    pm.setAttr("RightLegToeIKHandle.ikBlend",1)
    pm.setDrivenKeyframe('RightLegToeIKHandle.ikBlend',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.setDrivenKeyframe('RightLegFootIKHandle.ikBlend',currentDriver='RightLegIKFKCtrl.IKFK')
    pm.pointConstraint('RightLegFootSystemIKPoint','RightLegIKCtrlPoint',mo=1,weight=1,n="RightLegIKCtrlPointCon")
    #///////////////////////////
    #Ctrls shape set
    #///////////////////////////
    pm.addAttr('RightLegRigSysGrp',ln="ToeFKCtrlRadius",at='double')
    pm.setAttr('RightLegRigSysGrp.ToeFKCtrlRadius',e=1,channelBox=True)
    pm.connectAttr('RightLegRigSysGrp.ToeFKCtrlRadius','RightToeCtrlBase.scaleX',f=1)
    pm.connectAttr('RightLegRigSysGrp.ToeFKCtrlRadius','RightToeCtrlBase.scaleY',f=1)
    pm.connectAttr('RightLegRigSysGrp.ToeFKCtrlRadius','RightToeCtrlBase.scaleZ',f=1)
    #///////////////////////////
    #default 
    #///////////////////////////
    pm.setAttr("RightLegRigSysGrp.ToeFKCtrlRadius",0.2)
    


