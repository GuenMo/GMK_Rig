import maya.OpenMaya as OM
import maya.cmds as cmds
import pymel.core as pm

def get_GMKRigPath():
    filePath = __file__
    GMKim_Rigging = filePath.rpartition('\\')[0]
    GMKim_Rigging = GMKim_Rigging.replace('\\', '/')
    return GMKim_Rigging


def get_IconPath():
    GMKim_Rigging = get_GMKRigPath()
    iconPath = GMKim_Rigging.rpartition('/')[0] + '/Icon_GMKRig/'
    return iconPath


def get_JointGD():
    GMKim_Rigging = get_GMKRigPath()
    jointGDPath = GMKim_Rigging.rpartition('/')[0] + '/JointGuide/'
    return jointGDPath


def KGM_DuplicateJnt(oldJnt, newJnt):
    pm.select(cl=1)
    pm.joint(n=newJnt)
    KGM_Aline(oldJnt, newJnt, 'a')
    pm.makeIdentity(newJnt, apply=True, s=0, r=1, t=0, n=0)
    pm.select(cl=1)


def KGM_Aline(target, souce, op):
    if op == 'a':
        pm.parentConstraint(target, souce, mo=False, n='tempCon')
    elif op == 'p':
        pm.parentConstraint(target, souce, mo=False, skipRotate=['x', 'y', 'z'], n='tempCon')
    elif op == 'o':
        pm.parentConstraint(target, souce, mo=False, skipTranslate=['x', 'y', 'z'], n='tempCon')
    pm.delete('tempCon')


def KGM_MakeCtrlShape(ctrlName):
    ctrlBase = ctrlName + 'Base'
    BaseCrvInfo = ctrlName + 'BaseCurveInfo'
    ctrlSnaps = pm.getAttr(ctrlName + '.spans')
    ctrlDegree = pm.getAttr(ctrlName + '.degree')
    countControllPoints = ctrlSnaps + ctrlDegree
    pm.duplicate(ctrlName, rr=1, n=ctrlBase)
    pm.createNode('curveInfo', n=BaseCrvInfo)
    pm.connectAttr(ctrlBase + '.worldSpace[0]', BaseCrvInfo + '.inputCurve', f=1)
    for i in range(0, countControllPoints):
        pm.connectAttr(BaseCrvInfo + '.controlPoints[%s]' % i, ctrlName + 'Shape.controlPoints[%s]' % i, f=1)

    pm.setAttr(ctrlBase + '.visibility', 0)
    pm.setAttr(ctrlBase + '.lodVisibility', 0)
    pm.setAttr(ctrlBase + '.overrideEnabled', 1)
    pm.setAttr(ctrlBase + '.overrideShading', 0)
    pm.setAttr(ctrlBase + '.overrideTexturing', 0)
    pm.setAttr(ctrlBase + '.overridePlayback', 0)
    pm.setAttr(ctrlBase + '.overrideVisibility', 0)
    pm.setAttr(ctrlBase + '.scaleX', 1)
    pm.setAttr(ctrlBase + '.scaleY', 1)
    pm.setAttr(ctrlBase + '.scaleZ', 1)
    pm.setAttr(ctrlBase + '.v', lock=True, channelBox=False, keyable=False)
    pm.group(ctrlName, n=ctrlName + 'Grp')
    pm.xform(os=1, piv=(0, 0, 0))
    pm.group(ctrlBase, n=ctrlBase + 'Grp')
    pm.xform(os=1, piv=(0, 0, 0))


def KGM_HidenInOut(op):
    list_dag = pm.ls(dag=1)
    size_dag = len(list_dag)
    for i in range(0, size_dag):
        pm.setAttr(list_dag[i] + '.ihi', op)

    list_dep = pm.ls(dep=1)
    size_dep = len(list_dep)
    for i in range(0, size_dep):
        pm.setAttr(list_dep[i] + '.ihi', op)

    list_leaf = pm.ls(leaf=1)
    size_leaf = len(list_leaf)
    for i in range(0, size_leaf):
        pm.setAttr(list_leaf[i] + '.ihi', op)

    list_ap = pm.ls(ap=1)
    size_ap = len(list_ap)
    for i in range(0, size_ap):
        pm.setAttr(list_ap[i] + '.ihi', op)


def KGM_ImportMel():
    melPath = get_GMKRigPath() + '/Mel/'
    pm.mel.source(melPath + 'js_splitSelJoint.mel')


def GetDagPath(objectName):
    if isinstance(objectName, list) == True:
        oNodeList = []
        for o in objectName:
            selectionList = OM.MSelectionList()
            selectionList.add(o)
            oNode = OM.MObject()
            selectionList.getDependNode(0, oNode)
            oNodeList.append(oNode)

        return oNodeList
    else:
        selectionList = OM.MSelectionList()
        selectionList.add(objectName)
        oNode = OM.MObject()
        selectionList.getDependNode(0, oNode)
        return oNode


def GetParameterOnCurve(curveShapeName, posObj):
    curveM = GetDagPath(curveShapeName)
    curveFn = OM.MFnNurbsCurve(curveM)
    pos = cmds.xform(posObj, q=True, t=True)
    mPos = OM.MPoint(pos[0], pos[1], pos[2])
    scriptUtil = OM.MScriptUtil()
    paramPt = scriptUtil.asDoublePtr()
    curveFn.getParamAtPoint(mPos, paramPt, OM.MSpace.kObject)
    return scriptUtil.getDouble(paramPt)


def GetUParam(pnt = [], crv = None):
    point = OM.MPoint(pnt[0], pnt[1], pnt[2])
    curveFn = OM.MFnNurbsCurve(GetDagPath(crv))
    paramUtil = OM.MScriptUtil()
    paramPtr = paramUtil.asDoublePtr()
    isOnCurve = curveFn.isPointOnCurve(point)
    if not isOnCurve:
        curveFn.getParamAtPoint(point, paramPtr, 0.001, OM.MSpace.kObject)
    else:
        point = curveFn.closestPoint(point, paramPtr, 0.001, OM.MSpace.kObject)
        curveFn.getParamAtPoint(point, paramPtr, 0.001, OM.MSpace.kObject)
    param = paramUtil.getDouble(paramPtr)
    return param


def CtrlArrange(ctrl, target):
    ctrlGrp = cmds.listRelatives(ctrl, parent=True)[0]
    targetPos = cmds.xform(target, q=True, ws=True, rp=True)
    cmds.xform(ctrlGrp, ws=True, t=targetPos)
    cmds.parentConstraint(ctrl, target, mo=True)


def AddCtrlOffset(ctrl, mult):
    connetions = cmds.listConnections(ctrl + '.t', d=True)
    count = 0
    for obj in connetions:
        if obj.find('Loc') != -1:
            multiply = cmds.createNode('multiplyDivide', n=obj + 'OffsetMultiplyDived')
            for inputAttr in ['.input2X', '.input2Y', '.input2Z']:
                cmds.setAttr(multiply + inputAttr, mult)

            cmds.connectAttr(ctrl + '.t', multiply + '.input1', f=True)
            cmds.connectAttr(multiply + '.output', connetions[count] + '.t', f=True)
        count += 1


def CombinCtrlTranslate(targetCtrls, baseCtrl, mult):
    multiply = cmds.createNode('multiplyDivide', n=baseCtrl + 'OffsetMultiplyDived')
    cmds.connectAttr(baseCtrl + '.t', multiply + '.input1', f=True)
    for inputAttr in ['.input2X', '.input2Y', '.input2Z']:
        cmds.setAttr(multiply + inputAttr, mult)

    for ctrl in targetCtrls:
        connetions = cmds.listConnections(ctrl + '.t', d=True)
        count = 0
        for obj in connetions:
            if obj.find('MultiplyDived') != -1:
                pluseNode = cmds.createNode('plusMinusAverage', n=ctrl + 'OffsetPlusMinusAverage')
                cmds.connectAttr(ctrl + '.t', pluseNode + '.input3D[0]', f=True)
                cmds.connectAttr(multiply + '.output', pluseNode + '.input3D[1]', f=True)
                cmds.connectAttr(pluseNode + '.output3D', connetions[count] + '.input1', f=True)
            count += 1


def ImportFaceCtrlUI():
    path = get_JointGD()
    fileName = 'FaceCtrlUI.ma'
    cmds.file(path + fileName, i=True, type='mayaAscii', ra=True, mergeNamespacesOnClash=True, namespace=':', options='v=0;', pr=True)