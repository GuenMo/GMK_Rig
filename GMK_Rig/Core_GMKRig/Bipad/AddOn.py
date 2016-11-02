# -*- coding: utf-8 -*-
import maya.cmds as cmds
import maya.mel as mel

def KGM_AddOn():
    ##################
    # 기존 리깅 수정 
    ##################
    
    # 손가락 컨트롤 위치
    cmds.addAttr("LeftArmRigSysGrp", ln = "FingerCtrlPosition", at = "double")
    cmds.setAttr("LeftArmRigSysGrp.FingerCtrlPosition", e=True, keyable=True)
    cmds.setAttr("LeftArmRigSysGrp.FingerCtrlPosition", keyable=False, channelBox=True)
    
    cmds.addAttr("RightArmRigSysGrp", ln = "FingerCtrlPosition", at = "double")
    cmds.setAttr("RightArmRigSysGrp.FingerCtrlPosition", e=True, keyable=True)
    cmds.setAttr("RightArmRigSysGrp.FingerCtrlPosition", keyable=False, channelBox=True)
    
    node = cmds.createNode("multDoubleLinear", n="LeftFingerCtrlPosDirMDY") 
    cmds.setAttr(node+".input2", -1) 
    
    cmds.connectAttr("LeftArmRigSysGrp.FingerCtrlPosition", "LeftFingerCtrlPosDirMDY.input1", f=True)
    cmds.connectAttr("LeftFingerCtrlPosDirMDY.output", "LeftFingerCtrlBase.translateY", f=True)
    cmds.connectAttr("RightArmRigSysGrp.FingerCtrlPosition", "RightFingerCtrlBase.translateY", f=True)
    
    # 손가락 스케일
    node = cmds.createNode("multDoubleLinear", n="RightFingerCtrlRadiusMD") 
    cmds.setAttr(node+".input2", -1) 
    
    cmds.connectAttr("RightArmRigSysGrp.FingerCtrlRadius", "RightFingerCtrlRadiusMD.input1", f=True)
    cmds.connectAttr("RightFingerCtrlRadiusMD.output", "RightFingerCtrlBase.scaleX", f=True)
    cmds.connectAttr("RightFingerCtrlRadiusMD.output", "RightFingerCtrlBase.scaleY", f=True)
    cmds.connectAttr("RightFingerCtrlRadiusMD.output", "RightFingerCtrlBase.scaleZ", f=True)
    
    cmds.setAttr("RightArmRigSysGrp.FingerCtrlRadius", 0.08)
    
    # 어깨 컨트롤 스케일
    node = cmds.createNode("multDoubleLinear", n="RightClavicleCtrlRadiusMD") 
    cmds.setAttr(node+".input2", -1)
    
    cmds.connectAttr("RightArmRigSysGrp.ClavicleCtrlRadius", "RightClavicleCtrlRadiusMD.input1", f=True)
    cmds.connectAttr("RightClavicleCtrlRadiusMD.output", "RightClavicleCtrlBase.scaleX", f=True)
    cmds.connectAttr("RightClavicleCtrlRadiusMD.output", "RightClavicleCtrlBase.scaleY", f=True)
    cmds.connectAttr("RightClavicleCtrlRadiusMD.output", "RightClavicleCtrlBase.scaleZ", f=True)
    
    cmds.setAttr("RightArmRigSysGrp.ClavicleCtrlRadius", 0.15)
    
    # 어깨 컨트롤 위치
    node = cmds.createNode("multDoubleLinear", n="RightClavicleCtrlPositionXMD") 
    cmds.setAttr(node+".input2", -1)
    
    cmds.connectAttr("RightArmRigSysGrp.ClavicleCtrlPositionX", "RightClavicleCtrlPositionXMD.input1", f=True)
    cmds.connectAttr("RightClavicleCtrlPositionXMD.output", "RightClavicleCtrlBase.translateX", f=True)
    cmds.setAttr("RightArmRigSysGrp.ClavicleCtrlPositionX", 0.4)
    
    node = cmds.createNode("multDoubleLinear", n="RightClavicleCtrlPositionYMD") 
    cmds.setAttr(node+".input2", -1)
    
    cmds.connectAttr("RightArmRigSysGrp.ClavicleCtrlPositionY", "RightClavicleCtrlPositionYMD.input1", f=True)
    cmds.connectAttr("RightClavicleCtrlPositionYMD.output", "RightClavicleCtrlBase.translateY", f=True)
    cmds.setAttr("RightArmRigSysGrp.ClavicleCtrlPositionY", -0.2)
    
    # 손가락 컨트롤러를 회전한다
    cmds.setAttr("LeftFingerCtrlBase.rotateY", 270)
    cmds.setAttr("RightFingerCtrlBase.rotateY", 270)
    
    
    # 다리 옵션 컨트롤 위치
    node = cmds.createNode("multDoubleLinear", n="RightIKFKCtrlPostionXMD") 
    cmds.setAttr(node+".input2", -1)
    
    cmds.connectAttr("RightLegRigSysGrp.IKFKCtrlPostionX", "RightIKFKCtrlPostionXMD.input1", f=True)
    cmds.connectAttr("RightIKFKCtrlPostionXMD.output", "RightLegIKFKCtrlBase.translateX", f=True)
    cmds.setAttr("RightLegRigSysGrp.IKFKCtrlPostionX", 0.4)
    
    # 다리 IK FK 전환시 오류 수정
    cmds.delete("LeftAnkleFKCtrlGrpParentCon")
    cmds.setAttr("LeftAnkleFKCtrlGrp.rotateY", 0) 
    cmds.parentConstraint("LeftKneeFKCtrl", "LeftAnkleFKCtrlGrp", n="LeftAnkleFKCtrlGrpParentCon", maintainOffset = True, weight=1)
    
    cmds.delete("RightAnkleFKCtrlGrpParentCon")
    cmds.setAttr("RightAnkleFKCtrlGrp.rotateY", -180) 
    cmds.parentConstraint("RightKneeFKCtrl", "RightAnkleFKCtrlGrp", n="RightAnkleFKCtrlGrpParentCon", maintainOffset = True, weight=1)
    
    # 사용 안하는 어트리 뷰트를 숨긴다
    cmds.setAttr("LeftFingerCtrl.IkCtrlVis", lock = True, keyable = False, channelBox= False)
    cmds.setAttr("RightFingerCtrl.IkCtrlVis", lock = True, keyable = False, channelBox= False)
    
    # 사용 안하는 손가락 컨트롤 쉐입 하이드
    shapeNode = ["LeftFingerThumb1CtrlShape", "LeftFingerIndex1CtrlShape", "LeftFingerMiddle1CtrlShape", "LeftFingerRing1CtrlShape", "LeftFingerPinky1CtrlShape", \
             "RightFingerThumb1CtrlShape", "RightFingerIndex1CtrlShape", "RightFingerMiddle1CtrlShape", "RightFingerRing1CtrlShape", "RightFingerPinky1CtrlShape"]
    for shape in shapeNode:
        cmds.setAttr(shape+".visibility",0)
    
    # 팔 팔로우 가슴으로 디폴트
    cmds.setAttr("RightArmIKCtrl.Follow", 1)
    cmds.setAttr("LeftArmIKCtrl.Follow", 1)
    
    ##################
    # 기존 리깅 수정 끝 
    ##################
    
    
    ##################
    # 추가 리깅
    ####################
    
    
    # 눈컨트롤 위치
    cmds.addAttr("EyeCtrlBaseGrp", ln = "EyeCtrlPosition", at = "double",  min = 0, dv = 0)
    cmds.setAttr("EyeCtrlBaseGrp.EyeCtrlPosition", e=True, keyable=True)
    cmds.setAttr("EyeCtrlBaseGrp.EyeCtrlPosition", keyable=False, channelBox=True)
    
    cmds.connectAttr("EyeCtrlBaseGrp.EyeCtrlPosition", "EyeCtrlGrpParentCon.target[0].targetOffsetTranslateZ", f=True) 
    cmds.connectAttr("EyeCtrlBaseGrp.EyeCtrlPosition", "EyeCtrlGrpParentCon.target[1].targetOffsetTranslateZ", f=True) 
    cmds.connectAttr("EyeCtrlBaseGrp.EyeCtrlPosition", "EyeCtrlGrpParentCon.target[2].targetOffsetTranslateZ", f=True) 
    
    #주먹 어트리뷰트를 추가 한다
    cmds.addAttr("LeftFingerCtrl", ln = "Fist", at = "double",  min = 0, max = 10, dv = 0)
    cmds.setAttr("LeftFingerCtrl.Fist", e=True, keyable=True)
    cmds.addAttr("RightFingerCtrl", ln = "Fist", at = "double",  min = 0, max = 10, dv = 0)
    cmds.setAttr("RightFingerCtrl.Fist", e=True, keyable=True)
    
    #손가락 마디 컨트롤 회전
    cmds.setAttr("LeftFingerFKCtrlBase.rotateY", 90)
    cmds.setAttr("RightFingerFKCtrlBase.rotateY", -90)
    
    # 혀 컨트롤 vis set
    cmds.addAttr("JawCtrl", ln = "TongueCtrl", at = "bool")
    cmds.setAttr("JawCtrl.TongueCtrl", e=True, keyable=True)
    cmds.setAttr("JawCtrl.TongueCtrl", keyable=False, channelBox=True)
    cmds.connectAttr("JawCtrl.TongueCtrl", "TongueCtrl.visibility", f=True)
    
    # 눈
    cmds.setAttr("LeftEyeCtrl.rotateZ", k = True, l=False)
    cmds.setAttr("RightEyeCtrl.rotateZ", k = True, l=False)
    cmds.connectAttr("LeftEyeCtrl.rotateZ", "LeftEyeIKHandle.twist", f=True)
    cmds.connectAttr("RightEyeCtrl.rotateZ", "RightEyeIKHandle.twist", f=True)
    cmds.setAttr("EyeCtrl.EyeScaleCtrlVis", lock=True, keyable=False, channelBox=False) 
    
    cmds.setAttr("RightEyeCtrl.ComeaScale", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("LeftEyeCtrl.ComeaScale", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("RightEyeCtrl.ComeaSize", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("LeftEyeCtrl.ComeaSize", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("RightEyeCtrl.IrisDepth", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("LeftEyeCtrl.IrisDepth", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("RightEyeCtrl.PupilSize", lock=True, keyable=False, channelBox=False)
    cmds.setAttr("LeftEyeCtrl.PupilSize", lock=True, keyable=False, channelBox=False)
    
    # 스트레치 옵션
    cmds.setAttr("RightArmIKCtrl.Stretch", 10)
    cmds.setAttr("LeftArmIKCtrl.Stretch", 10)
    cmds.setAttr("LeftLegIKCtrl.Stretch", 10)
    cmds.setAttr("RightLegIKCtrl.Stretch", 10)
    cmds.setAttr("BodyIKCtrl.Stretch", 10)
    
    # 손가락 스프레드
    """
    cmds.setAttr("LeftFingerMiddle2SpreadMulti.input2", 1)
    cmds.setAttr("LeftFingerPinky2SpreadMulti.input2", 1)
    cmds.setAttr("LeftFingerThumb2SpreadMulti.input2", 1)
    cmds.setAttr("LeftFingerIndex2SpreadMulti.input2", 1)
    cmds.setAttr("LeftFingerRing2SpreadMulti.input2", 1)
    """
    
    # 허리 컨트롤
    
    dupliacted = cmds.duplicate("SpineFK1CtrlGrp", n="SpineFKCtrlGrp", rc=True)
    cmds.rename(dupliacted[1], 'SpineFKCtrl')
    cmds.delete(dupliacted[2])
    cmds.pointConstraint("Spine2Jnt", dupliacted[0], n="TempCon")
    cmds.delete("TempCon")
    #cmds.delete(["SpineFK1CtrlGrp", "SpineFK2CtrlGrp"])
    
    cmds.parentConstraint("RootCtrl", "SpineFKCtrlGrp", mo=True, weight=1)
    cmds.parentConstraint("SpineFKCtrl", "BodyIKCtrlGrp", mo=True, weight=1)
    
    # 허리 IK 컨트롤
    spineIKCtrl = cmds.circle(n="SpineIKCtrl", r=0.35, nr=[0, 1, 0], ch=0)[0]
    spineIKCtrlGrp = cmds.group(spineIKCtrl, n=spineIKCtrl+"Grp")

    cmds.pointConstraint("Spine2Jnt", spineIKCtrlGrp, n="TempCon")
    cmds.delete("TempCon")
    cmds.parent("SpineIKCtrlGrp", "SpineFKCtrl")
    
    cmds.setAttr("SpineIKCtrlShape.overrideEnabled", 1)
    cmds.setAttr("SpineIKCtrlShape.overrideColor", 20)
    
    spineIKJnt = cmds.duplicate("BodyIKCtrlJnt1", n="BodyIKCtrlJnt")[0]
    cmds.parent(spineIKJnt, "SpineIKCtrl")
    
    cmds.setAttr(spineIKJnt+".translateX", 0)
    cmds.setAttr(spineIKJnt+".translateY", 0)
    cmds.setAttr(spineIKJnt+".translateZ", 0)
    
    cmds.rename("BodyIKCtrlJnt1", "BodyIKCtl2Jnt")
    cmds.rename("BodyIKCtrlJnt2", "BodyIKCtl1Jnt")
    cmds.rename("BodyIKCtrlJnt", "SipneIKCtrlJnt")
    
    copyed = cmds.duplicate("SpineIKCtrl", n="SpineIK1Ctrl", rc=True)
    cmds.rename(copyed[1],"SipneIKCtrl1Jnt")
    cmds.parent(copyed[0],"SpineFK1Ctrl")
    cmds.setAttr(copyed[0]+".tx", 0 )
    cmds.setAttr(copyed[0]+".ty", 0 )
    cmds.setAttr(copyed[0]+".tz", 0 )
    
    copyed = cmds.duplicate("SpineIKCtrl", n="SpineIK2Ctrl", rc=True)
    cmds.rename(copyed[1],"SipneIKCtrl2Jnt")
    cmds.parent(copyed[0],"SpineFK2Ctrl")
    cmds.setAttr(copyed[0]+".tx", 0 )
    cmds.setAttr(copyed[0]+".ty", 0 )
    cmds.setAttr(copyed[0]+".tz", 0 )
    
    cmds.reorder("BodyIKCtl1Jnt", relative=1)
    cmds.reorder("SpineFKCtrlGrp", relative=3)
    cmds.reorder("SpineFKCtrlGrp", relative=2)
    
    cmds.delete("SpineFK1CtrlGrp_parentConstraint1", "SpineFKCtrlGrp_parentConstraint1", "SpineFK2CtrlGrp_parentConstraint1", "BodyIKCtrlGrp_parentConstraint1")
    cmds.parentConstraint("RootCtrl", "SpineFK1CtrlGrp", mo = True)
    cmds.parentConstraint("SpineFK1Ctrl", "SpineFKCtrlGrp", mo = True)
    cmds.parentConstraint("SpineFKCtrl", "SpineFK2CtrlGrp", mo = True)
    cmds.parentConstraint("SpineFK2Ctrl", "BodyIKCtrlGrp", mo = True)
    
    ctrls = ["SpineIK1Ctrl", "SpineIKCtrl", "SpineIK2Ctrl"]
    attrs = ["rx", "ry", "rz", "sx", "sy", "sz"]
    for ctrl in ctrls:
        for attr in attrs:
            cmds.setAttr(ctrl+"." + attr, lock=True, keyable=False, channelBox=False)
        cmds.setAttr(ctrl+".v", keyable=False, channelBox=True)
    
    #Up, Dw 커스 에디트
    cmds.keyTangent("RightArmUpSlideMulti_input2", itt="linear", ott="linear")
    cmds.keyTangent("RightArmDwSlideMulti_input2", itt="linear", ott="linear")
    cmds.keyTangent("LeftArmUpSlideMulti_input2", itt="linear", ott="linear")
    cmds.keyTangent("LeftArmDwSlideMulti_input2", itt="linear", ott="linear")

    cmds.keyTangent("RightLegDwSlideMulti_input2", itt="linear", ott="linear")
    cmds.keyTangent("RightLegUpSlideMulti_input2", itt="linear", ott="linear")
    cmds.keyTangent("LeftLegDwSlideMulti_input2", itt="linear", ott="linear")
    cmds.keyTangent("LeftLegUpSlideMulti_input2", itt="linear", ott="linear")
    # Arc 에러 에디트
    cmds.setAttr ("LeftKneeArcPointParentCon.target[0].targetOffsetTranslateZ", 0.001)
    cmds.setAttr ("RightKneeArcPointParentCon.target[0].targetOffsetTranslateZ", 0.001)
    cmds.setAttr ("LeftElbowArcPointParentCon.target[0].targetOffsetTranslateZ", 0.001)
    cmds.setAttr ("RightElbowArcPointParentCon.target[0].targetOffsetTranslateZ", 0.001)
    # IK <=> FK 필요한 발가락 어트리뷰트
    cmds.addAttr("LeftLegIKCtrl", sn="BallRollMulti", ln="BallRollMulti", at="double")
    cmds.addAttr("RightLegIKCtrl", sn="BallRollMulti", ln="BallRollMulti", at="double")
    cmds.setAttr("LeftLegIKCtrl.BallRollMulti", 0.111)
    cmds.setAttr("RightLegIKCtrl.BallRollMulti", 0.111)
    # 팔 폴 벡터
    #setArmPolvector("Left")
    #setArmPolvector("Right")
    # 다리 폴 벡터
    #setLegPolvector("Left")
    #setLegPolvector("Right")
    cmds.rename('WorldCtrlBaseGrp', 'WorldSysGrp')
    cmds.rename('LeftLegRigSysGrp', 'LeftLegSysGrp')
    cmds.rename('RightLegRigSysGrp', 'RightLegSysGrp')
    cmds.rename('LeftArmRigSysGrp', 'LeftArmSysGrp')
    cmds.rename('RightArmRigSysGrp', 'RightArmSysGrp')
    cmds.rename('EyeCtrlBaseGrp', 'EyeSysGrp')


def setArmPolvector(side):
    sPoint = "ShoulderJnt"
    mPoint = "ElbowJnt"
    ePoint = "WristJnt"
    poleVectorGrp = side + "ArmPoleVectorGrp"
    color = 0
    if side == "Left":
        color = 13
    else:
        color = 6
    
    startPos = cmds.xform(side+sPoint, q=True, ws=True, t=True)
    endPos = cmds.xform(side+ePoint, q=True, ws=True, t=True)
    midPos = cmds.xform(side+mPoint, q=True, ws=True, t=True)
    distance = (startPos[0] - endPos[0]) * 1.5
    newPos = [midPos[0], midPos[1], -abs(distance)]
    cmds.xform(poleVectorGrp, ws=True, t=newPos)
    
    ctrl = mel.eval('curve -d 1 -p -2 0 2 -p 2 0 2 -p 2 0 -2 -p -2 0 -2 -p -2 0 2 -p 0 8 0 -p 2 0 2 -p 0 8 0 -p 2 0 -2 -p 0 8 0 -p -2 0 -2 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 ;')
    
    ctrl = cmds.rename(ctrl, side + "ArmPolCtrl")
    cmds.setAttr(ctrl + "Shape.overrideEnabled", 1)
    cmds.setAttr(ctrl + "Shape.overrideColor", color)
    ctrlGrp = cmds.group(ctrl, n=ctrl+"Grp")
    cmds.xform(ctrlGrp, os=True, piv=[0, 0, 0])
    
    PolXYZ = cmds.xform(poleVectorGrp, q=True, ws=True, t=True)
    elbowXYX = cmds.xform(side + mPoint, q=True, ws=True, t=True)
    cmds.xform(ctrlGrp, ws=True, t=[ elbowXYX[0], PolXYZ[1], PolXYZ[2] ])
    cmds.setAttr(ctrlGrp+".rotateX", 90)
    
    cmds.parentConstraint(ctrl, poleVectorGrp, mo=True, weight=1)
    
    attrs = ["rx", "ry", "rz", "sx", "sy", "sz"]
    
    for attr in attrs:
        cmds.setAttr(ctrl+"." + attr, lock=True, keyable=False, channelBox=False)
    cmds.setAttr(ctrl+".v", keyable=False, channelBox=True)
    
    cmds.parent(ctrlGrp,"BodyIKCtrl")
    
    cmds.select(ctrl+".cv[0:10]", r=True)
    cmds.scale(0.05, 0.05, 0.05, xyz=True)
    cmds.select(cl=True)

def setLegPolvector(side):
    sPoint = "HipJnt"
    mPoint = "KneeJnt"
    ePoint = "AnkleJnt"
    poleVectorGrp = side + "LegPoleVectorGrp"
    color = 0
    if side == "Left":
        color = 13
    else:
        color = 6
    
    startPos = cmds.xform(side+sPoint, q=True, ws=True, t=True)
    endPos = cmds.xform(side+ePoint, q=True, ws=True, t=True)
    midPos = cmds.xform(side+mPoint, q=True, ws=True, t=True)
    distance = (startPos[1] - endPos[1]) *1.5
    newPos = [startPos[0], startPos[1], abs(distance)]
    
    cmds.xform(poleVectorGrp, ws=True, t=newPos)
    
    
    ctrl = mel.eval('curve -d 1 -p -2 0 2 -p 2 0 2 -p 2 0 -2 -p -2 0 -2 -p -2 0 2 -p 0 8 0 -p 2 0 2 -p 0 8 0 -p 2 0 -2 -p 0 8 0 -p -2 0 -2 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 ;')
    
    ctrl = cmds.rename(ctrl, side + "LegPolCtrl")
    cmds.setAttr(ctrl + "Shape.overrideEnabled", 1)
    cmds.setAttr(ctrl + "Shape.overrideColor", color)
    ctrlGrp = cmds.group(ctrl, n=ctrl+"Grp")
    cmds.xform(ctrlGrp, os=True, piv=[0, 0, 0])
    
    PolXYZ = cmds.xform(poleVectorGrp, q=True, ws=True, t=True)
    elbowXYX = cmds.xform(side + mPoint, q=True, ws=True, t=True)
    cmds.xform(ctrlGrp, ws=True, t=[ elbowXYX[0], elbowXYX[1], PolXYZ[2] ])
    cmds.setAttr(ctrlGrp+".rotateX", -90)
    
    cmds.parentConstraint(ctrl, poleVectorGrp, mo=True, weight=1)
    
    attrs = ["rx", "ry", "rz", "sx", "sy", "sz"]
    
    for attr in attrs:
        cmds.setAttr(ctrl+"." + attr, lock=True, keyable=False, channelBox=False)
    cmds.setAttr(ctrl+".v", keyable=False, channelBox=True)
    
    cmds.pointConstraint(side+"LegIKCtrl", ctrlGrp, mo=True, weight=1)
    cmds.parent(ctrlGrp, "HipIKCtrl")
    cmds.delete(ctrlGrp+"_pointConstraint1")
    
    cmds.xform(ctrlGrp, ws=True, rp= startPos)
    cmds.select(side+"LegIKCtrl", r=True)
    cmds.select(ctrlGrp, add=True)
    mel.eval('doCreateAimConstraintArgList 1 { "1","0","0","0","0","-1","0","0","1","0","0","1","0","1","vector","TempIKPolPoint","0","0","0","","1" };')
    mel.eval('aimConstraint -mo -weight 1 -aimVector 0 -1 0 -upVector 0 1 0 -worldUpType "vector" -worldUpVector 0 1 0;')
    
    cmds.select(ctrl+".cv[0:10]", r=True)
    cmds.scale(0.05, 0.05, 0.05, xyz=True)
    cmds.select(cl=True)
    
    