# -*- coding: utf-8 -*-

try:
    from PySide.QtGui import *
    from PySide.QtCore import *
except:
    from PySide2.QtGui import *
    from PySide2.QtCore import *
    from PySide2.QtWidgets import *

import os
import pymel.core as pm
import maya.cmds as cmds

import Core_GMKRig.Face.Lip as Lip
import Core_GMKRig.Face.Eyebrow as Eyebrow
import Core_GMKRig.Face.Eyelid as Eyelid
import Core_GMKRig.Utils as Utils

reload(Lip)
reload(Eyebrow)
reload(Eyelid)
reload(Utils)

class GMKimFaceWidget(QWidget):
    def __init__(self, parent=None):
        super(GMKimFaceWidget, self).__init__(parent)
        self.initUI()
        self.connectSignals()
        
    def initUI(self):
        # Create Widget
        self.iconPath = Utils.get_IconPath()
        self.eyebrow_icon = QPixmap(self.iconPath + "eyebrow.png")
        self.eyelid_icon = QPixmap(self.iconPath + "eyelid.png")
        self.lip_icon = QPixmap(self.iconPath + "lip.png")
        self.up_icon = QPixmap(self.iconPath + "up.png")
        self.dw_icon = QPixmap(self.iconPath + "dw.png")
        self.eyebrowLoc_icon = QPixmap(self.iconPath + "eyebrowLoc.png")
        self.eyelidLoc_icon = QPixmap(self.iconPath + "eyelidLoc.png")
        self.lipLoc_icon = QPixmap(self.iconPath + "lipLoc.png")
        
        self.main_Layout = QGridLayout()
        
        self.curve_GroupBox = QGroupBox("Curve")
        self.curve_Layout = QGridLayout()
        self.curveLabel = QLabel("Select edge and check option")
        self.side_GroupBox = QGroupBox()
        self.side_Layout = QGridLayout()
        self.up_RadioButton = QRadioButton("Up")
        self.dw_RadioButton = QRadioButton("Down")
        self.curvePart_GroupBox = QGroupBox()
        self.curvePart_Layout = QGridLayout()
        self.eyebrowCurve_RadioButton = QRadioButton("Eyebrow")
        self.eyelidCurve_RadioButton = QRadioButton("Eyelid")
        self.lipCurve_RadioButton = QRadioButton("Lip")
        self.curveBtn_Layout = QGridLayout()
        self.curve_Button = QPushButton("Create")
        self.curveMirror_Button = QPushButton("Mirror")
        self.curveDir_Button = QPushButton("Reverse Direction")
        
        
        self.loc_GroupBox = QGroupBox("Center Locator")
        self.loc_Layout = QGridLayout()
        self.locPart_GroupBox = QGroupBox()
        self.locPart_Layout = QGridLayout()
        self.eyebrowLoc_RadioButton = QRadioButton("Eyebrow")
        self.eyelidLoc_RadioButton = QRadioButton("Eyelid")
        self.lipLoc_RadioButton = QRadioButton("Lip")
        self.loc_Button = QPushButton("Create")
        self.locMirror_Button = QPushButton("Mirror")
        
        self.guide_GroupBox = QGroupBox("Guide Object")
        self.guide_Layout = QGridLayout() 
        self.eyebrowLeftGudie_Label = QLabel("Left Eyebrow")
        self.eyebrowLeftGudie_LineEdit = QLineEdit()
        self.eyebrowLeftGudie_Button = QPushButton("set")
        self.eyebrowRightGudie_Label = QLabel("Right Eyebrow")
        self.eyebrowRightGudie_LineEdit = QLineEdit()
        self.eyebrowRightGudie_Button = QPushButton("set")
        self.eyelidLeftGudie_Label = QLabel("Left Eyelid")
        self.eyelidLeftGudie_LineEdit = QLineEdit()
        self.eyelidLeftGudie_Button = QPushButton("set")
        self.eyelidRightGudie_Label = QLabel("Right Eyelid")
        self.eyelidRightGudie_LineEdit = QLineEdit()
        self.eyelidRightGudie_Button = QPushButton("set")
        self.lipGudie_Label = QLabel("Lip")
        self.lipGudie_LineEdit = QLineEdit()
        self.lipGudie_Button = QPushButton("set")
        
        self.setup_Button = QPushButton("Face Rigging")
        
        # Set Layout
        # set Guide
        self.setLayout(self.main_Layout)
        
        self.main_Layout.addWidget(self.curve_GroupBox, 0,0)
        self.main_Layout.addWidget(self.loc_GroupBox, 1,0)
        self.main_Layout.addWidget(self.guide_GroupBox, 2,0)
        self.main_Layout.addWidget(self.setup_Button, 3,0)
        
        self.curve_GroupBox.setLayout(self.curve_Layout)
        self.curve_Layout.addWidget(self.curveLabel, 0,0)
        self.curve_Layout.addWidget(self.curvePart_GroupBox, 1,0)
        self.curvePart_GroupBox.setLayout(self.curvePart_Layout)
        self.curvePart_Layout.addWidget(self.eyebrowCurve_RadioButton, 0,0)
        self.curvePart_Layout.addWidget(self.eyelidCurve_RadioButton, 0,1)
        self.curvePart_Layout.addWidget(self.lipCurve_RadioButton, 0,2)
        self.curve_Layout.addWidget(self.side_GroupBox, 2,0)
        self.side_GroupBox.setLayout(self.side_Layout)
        self.side_Layout.addWidget(self.up_RadioButton, 0,0)
        self.side_Layout.addWidget(self.dw_RadioButton, 0,1)
        self.curve_Layout.addLayout(self.curveBtn_Layout, 3,0)
        self.curveBtn_Layout.addWidget(self.curve_Button, 0,0, 1,2)
        self.curveBtn_Layout.addWidget(self.curveMirror_Button, 1,0)
        self.curveBtn_Layout.addWidget(self.curveDir_Button, 1,1)
 
        self.loc_GroupBox.setLayout(self.loc_Layout)
        self.loc_Layout.addWidget(self.locPart_GroupBox, 0,0, 1,2)
        self.loc_Layout.addWidget(self.loc_Button, 1,0)
        self.loc_Layout.addWidget(self.locMirror_Button, 1,1)
        self.locPart_GroupBox.setLayout(self.locPart_Layout)
        self.locPart_Layout.addWidget(self.eyebrowLoc_RadioButton, 0,0)
        self.locPart_Layout.addWidget(self.eyelidLoc_RadioButton, 0,1)
        self.locPart_Layout.addWidget(self.lipLoc_RadioButton, 0,2)
        
        self.guide_GroupBox.setLayout(self.guide_Layout)
        self.guide_Layout.addWidget(self.eyebrowLeftGudie_Label, 0,0)
        self.guide_Layout.addWidget(self.eyebrowLeftGudie_LineEdit, 0,1)
        self.guide_Layout.addWidget(self.eyebrowLeftGudie_Button, 0,2)
        self.guide_Layout.addWidget(self.eyebrowRightGudie_Label, 1,0)
        self.guide_Layout.addWidget(self.eyebrowRightGudie_LineEdit, 1,1)
        self.guide_Layout.addWidget(self.eyebrowRightGudie_Button, 1,2)
        self.guide_Layout.addWidget(self.eyelidLeftGudie_Label, 2,0)
        self.guide_Layout.addWidget(self.eyelidLeftGudie_LineEdit, 2,1)
        self.guide_Layout.addWidget(self.eyelidLeftGudie_Button, 2,2)
        self.guide_Layout.addWidget(self.eyelidRightGudie_Label, 3,0)
        self.guide_Layout.addWidget(self.eyelidRightGudie_LineEdit, 3,1)
        self.guide_Layout.addWidget(self.eyelidRightGudie_Button, 3,2)
        self.guide_Layout.addWidget(self.lipGudie_Label, 4,0)
        self.guide_Layout.addWidget(self.lipGudie_LineEdit, 4,1)
        self.guide_Layout.addWidget(self.lipGudie_Button, 4,2)

        # Set Widget
        self.setWindowTitle("Custom Widget")
        self.eyebrowCurve_RadioButton.setIcon(self.eyebrow_icon)
        self.eyebrowCurve_RadioButton.setIconSize(QSize(35,20))
        self.eyelidCurve_RadioButton.setIcon(self.eyelid_icon)
        self.eyelidCurve_RadioButton.setIconSize(QSize(35,20))
        self.lipCurve_RadioButton.setIcon(self.lip_icon)
        self.lipCurve_RadioButton.setIconSize(QSize(35,20))
        
        self.up_RadioButton.setIcon(self.up_icon)
        self.dw_RadioButton.setIcon(self.dw_icon)
        
        self.eyebrowLoc_RadioButton.setIcon(self.eyebrowLoc_icon)
        self.eyebrowLoc_RadioButton.setIconSize(QSize(35,20))
        self.eyelidLoc_RadioButton.setIcon(self.eyelidLoc_icon)
        self.eyelidLoc_RadioButton.setIconSize(QSize(35,20))
        self.lipLoc_RadioButton.setIcon(self.lipLoc_icon)
        self.lipLoc_RadioButton.setIconSize(QSize(35,20))
        
        self.eyebrowCurve_RadioButton.setChecked(True)
        self.up_RadioButton.setChecked(True)
        self.eyebrowLoc_RadioButton.setChecked(True)
        self.side_GroupBox.setDisabled(True)
        
    def connectSignals(self):
        self.connect( self.eyebrowCurve_RadioButton, SIGNAL("clicked()")   , self.checkCurvePart)
        self.connect( self.eyelidCurve_RadioButton, SIGNAL("clicked()")    , self.checkCurvePart)
        self.connect( self.lipCurve_RadioButton, SIGNAL("clicked()")       , self.checkCurvePart)
        self.connect( self.up_RadioButton, SIGNAL("clicked()")             , self.checkCurveSide)
        self.connect( self.dw_RadioButton, SIGNAL("clicked()")             , self.checkCurveSide)
        self.connect( self.curve_Button, SIGNAL("released()")              , self.createJntCurve)
        self.connect( self.curveMirror_Button, SIGNAL("released()")        , self.mirrorJntCurve)
        self.connect( self.curveDir_Button,    SIGNAL("released()")        , self.dirJntCurve   )
        
        self.connect( self.eyebrowLoc_RadioButton, SIGNAL("clicked()")     , self.checkLocPart  )
        self.connect( self.eyelidLoc_RadioButton, SIGNAL("clicked()")      , self.checkLocPart  )
        self.connect( self.lipLoc_RadioButton, SIGNAL("clicked()")         , self.checkLocPart  )
        self.connect( self.loc_Button, SIGNAL("clicked()")                 , self.createLoc     )
        self.connect( self.locMirror_Button, SIGNAL("clicked()")           , self.mirrorLoc     )
        
        self.connect( self.eyebrowLeftGudie_Button, SIGNAL("clicked()")    , self.setLeftEyebrowGuide )
        self.connect( self.eyebrowRightGudie_Button, SIGNAL("clicked()")   , self.setRightEyebrowGuide)
        self.connect( self.eyelidLeftGudie_Button, SIGNAL("clicked()")     , self.setLeftEyelidGuide  )
        self.connect( self.eyelidRightGudie_Button, SIGNAL("clicked()")    , self.setRightEyelidGuide )
        self.connect( self.lipGudie_Button, SIGNAL("clicked()")            , self.setLipGuide         )
        
        self.connect( self.setup_Button, SIGNAL("clicked()")               , self.setup         )
        
    # Custom Function
    ## UI Fuctions
    def checkCurvePart(self):
        if self.eyebrowCurve_RadioButton.isChecked():
            self.side_GroupBox.setDisabled(True)
            part = "Eyebrow"
        if self.eyelidCurve_RadioButton.isChecked():
            self.side_GroupBox.setDisabled(False)
            part = "Eyelid"
        if self.lipCurve_RadioButton.isChecked():
            self.side_GroupBox.setDisabled(False)
            part = "Lip"
        return part
    
    def checkCurveSide(self):
        if self.eyebrowCurve_RadioButton.isChecked():
            side = "Left"
        else:
            if self.up_RadioButton.isChecked():
                side = "LeftUp"
            if self.dw_RadioButton.isChecked():
                side = "LeftDw"
        return side

    def createJntCurve(self):
        part = self.checkCurvePart()
        side = self.checkCurveSide()
        curveName = side + part + "JntCrv"
        
        if curveName.find("Lip") != -1:
            curveName = curveName.partition("Left")[2]
        
        if len(pm.ls(sl=True)) != 0 and type(pm.ls(sl=True)[0]) == pm.general.MeshEdge:
            if pm.objExists(curveName):
                pm.delete(curveName)

            jntCrv = pm.polyToCurve(degree=1,form=2)
            pm.delete(jntCrv, ch=1)
            jntCrv = pm.PyNode(jntCrv[0])
            jntCrv.rename(curveName)
            pm.toggle(jntCrv, cv=True)
            jntCrv.setScalePivot(jntCrv.c.get())
            jntCrv.setRotatePivot(jntCrv.c.get())
            
        else:    
            pm.error("Please select edge!!!")
    
    def mirrorJntCurve(self):
        selCrv = pm.ls(sl=True)
        if len(selCrv) != 0 and selCrv[0].getShape().nodeType() == "nurbsCurve" and selCrv[0].name().find("Left") == 0:
            selCrv[0].setPivots((0,0,0))
            mirrorCrv = pm.duplicate(selCrv[0])[0]
            mirrorCrv.setScale((-1,1,1))
            pm.makeIdentity(mirrorCrv, n=0,s=1,r=0,t=0,apply=True,pn=1)
            
            if pm.objExists(selCrv[0].name().replace("Left","Right")):
                pm.delete( selCrv[0].name().replace("Left","Right") )
            
            mirrorCrv.rename(selCrv[0].name().replace("Left","Right"))
            selCrv[0].setScalePivot(selCrv[0].c.get())
            selCrv[0].setRotatePivot(selCrv[0].c.get())
            mirrorCrv.setScalePivot(mirrorCrv.c.get())
            mirrorCrv.setRotatePivot(mirrorCrv.c.get())
            
    def dirJntCurve(self):
        selCrv = pm.ls(sl=True)
        if len(selCrv) != 0 and selCrv[0].getShape().nodeType() == "nurbsCurve":
            pm.reverseCurve(selCrv[0],ch=False,rpo=1)
            pm.select(selCrv[0])
            
    def checkLocPart(self):
        if self.eyebrowLoc_RadioButton.isChecked():
            part = "Eyebrow"
        if self.eyelidLoc_RadioButton.isChecked():
            part = "Eyelid"
        if self.lipLoc_RadioButton.isChecked():
            part = "Lip"
        return part
    
    def createLoc(self):
        part = self.checkLocPart()
        side = ""
        if part == "Lip":
            side = ""
        else:
            side = "Left"
        locName = side + part + "CenterLoc"
        
        if pm.objExists(locName):
            pm.delete(locName)
        
        pm.spaceLocator(n=locName)
        
    def mirrorLoc(self):
        selLoc = pm.ls(sl=True)
        if len(selLoc) != 0 and selLoc[0].getShape().nodeType() == "locator" and selLoc[0].name().find("Left") == 0:
            cmds.move(0,0,0, selLoc[0]+".scalePivot", selLoc[0]+".rotatePivot")
            mirrorLoc = pm.duplicate(selLoc[0])[0]
            mirrorLoc.setScale((-1,1,1))
            pm.makeIdentity(mirrorLoc, n=0,s=1,r=0,t=0,apply=True,pn=1)
            
            if pm.objExists(selLoc[0].name().replace("Left","Right")):
                pm.delete( selLoc[0].name().replace("Left","Right") )
            
            mirrorLoc.rename(selLoc[0].name().replace("Left","Right"))
            selLoc[0].setScalePivot(selLoc[0].c.get())
            selLoc[0].setRotatePivot(selLoc[0].c.get())
            mirrorLoc.setScalePivot(mirrorLoc.c.get())
            mirrorLoc.setRotatePivot(mirrorLoc.c.get())
       
    def setLeftEyebrowGuide(self):     
        sel = pm.ls(sl=True)
        if len(sel) != 0 and sel[0].getShape().nodeType() == "mesh" or sel[0].getShape().nodeType() == "nurbsSurface":
            self.eyebrowLeftGudie_LineEdit.setText(sel[0].name())
        else:
            print "Select mesh or nurbsSurface."
            
    def setRightEyebrowGuide(self):     
        sel = pm.ls(sl=True)
        if len(sel) != 0 and sel[0].getShape().nodeType() == "mesh" or sel[0].getShape().nodeType() == "nurbsSurface":
            self.eyebrowRightGudie_LineEdit.setText(sel[0].name())
        else:
            print "Select mesh or nurbsSurface."
            
    def setLeftEyelidGuide(self):     
        sel = pm.ls(sl=True)
        if len(sel) != 0 and sel[0].getShape().nodeType() == "mesh" or sel[0].getShape().nodeType() == "nurbsSurface":
            self.eyelidLeftGudie_LineEdit.setText(sel[0].name())
        else:
            print "Select mesh or nurbsSurface."
            
    def setRightEyelidGuide(self):     
        sel = pm.ls(sl=True)
        if len(sel) != 0 and sel[0].getShape().nodeType() == "mesh" or sel[0].getShape().nodeType() == "nurbsSurface":
            self.eyelidRightGudie_LineEdit.setText(sel[0].name())
        else:
            print "Select mesh or nurbsSurface."    
            
    def setLipGuide(self):     
        sel = pm.ls(sl=True)
        if len(sel) != 0 and sel[0].getShape().nodeType() == "mesh" or sel[0].getShape().nodeType() == "nurbsSurface":
            self.lipGudie_LineEdit.setText(sel[0].name())
        else:
            print "Select mesh or nurbsSurface."
    
    # Rig Functions
    
    def checkRigItem(self):
        check = True
        curveItem = ["LeftEyebrowJntCrv", "RightEyebrowJntCrv", "LeftUpEyelidJntCrv", "RightUpEyelidJntCrv", "LeftDwEyelidJntCrv", "RightDwEyelidJntCrv", "UpLipJntCrv", "DwLipJntCrv"]
        locItem = ["LeftEyebrowCenterLoc", "RightEyebrowCenterLoc", "LeftEyelidCenterLoc", "RightEyelidCenterLoc", "LipCenterLoc"]
        guideItem = [self.eyebrowLeftGudie_LineEdit, \
                     self.eyebrowRightGudie_LineEdit, \
                     self.eyelidLeftGudie_LineEdit, \
                     self.eyelidRightGudie_LineEdit, \
                     self.lipGudie_LineEdit]
        
        for crv in curveItem:
            if not cmds.objExists(crv):
                check = False
        
        for loc in locItem:
            if not cmds.objExists(loc):
                check = False
                
        for guide in guideItem:
            if guide.text() == "" or not cmds.objExists(guide.text()):
                check = False
        
        return check
    
    def faceRigDefaltSet(self):
        cmds.setAttr ("LipSysGrp.Lip", 0.02)
        cmds.setAttr ("LipJntGrp.visibility", 1)
        
        cmds.setAttr ("LeftEyelidSysGrp.Eyelid", 0.02)
        cmds.setAttr ("LeftEyelidJntGrp.visibility", 1)
        cmds.setAttr ("RightEyelidSysGrp.Eyelid", 0.02)
        cmds.setAttr ("RightEyelidJntGrp.visibility", 1)
        
        cmds.setAttr ("LeftEyebrowSysGrp.Eyebrow", 0.02)
        cmds.setAttr ("LeftEyebrowJntGrp.visibility", 1)
        
        cmds.setAttr ("RightEyebrowSysGrp.Eyebrow", 0.02)
        cmds.setAttr ("RightEyebrowJntGrp.visibility", 1)
        
    def SetTeethCtrl(self):
        cmds.connectAttr("UpTeethCtrl.translate",    "UpperTeethCtrl.translate")
        cmds.connectAttr("UpTeethCtrl.rotate",       "UpperTeethCtrl.rotate")
        cmds.connectAttr("UpTeethCtrl.scale",        "UpperTeethCtrl.scale")
        
        cmds.connectAttr("DwTeethCtrl.translate",    "LowerTeethCtrl.translate")
        cmds.connectAttr("DwTeethCtrl.rotate",       "LowerTeethCtrl.rotate")
        cmds.connectAttr("DwTeethCtrl.scale",        "LowerTeethCtrl.scale")

    def SetNoseCtrl(self):
        cmds.connectAttr("NoseCtrl.translate", "NoseRootLoc.translate")
        cmds.connectAttr("NoseCtrl.rotate", "NoseRootLoc.rotate")
        cmds.connectAttr("NoseCtrl.scale", "NoseRootLoc.scale")
        
        cmds.connectAttr("LeftNoseCtrl.translate", "LeftNoseLoc.translate")
        cmds.connectAttr("LeftNoseCtrl.rotate", "LeftNoseLoc.rotate")
        cmds.connectAttr("LeftNoseCtrl.scale", "LeftNoseLoc.scale")
        
        cmds.connectAttr("RightNoseCtrl.translate", "RightNoseLoc.translate")
        cmds.connectAttr("RightNoseCtrl.rotate", "RightNoseLoc.rotate")
        cmds.connectAttr("RightNoseCtrl.scale", "RightNoseLoc.scale")

    def SetLipCtrl(self, ctrls):
        lipCtrls = ctrls
        mouseCtrl = "MouseCtrl"
        
        for ctrl in lipCtrls:
            target = ctrl.replace("FPCtrl","Handle")
            Utils.CtrlArrange(ctrl, target)
            
            ctrlParent = cmds.listRelatives(ctrl, p=True)[0]
            cmds.parent(ctrlParent, mouseCtrl)
        
        cmds.addAttr(mouseCtrl, ln="UpOffset",  at="double",  min=0, max=10, dv=0 )
        cmds.setAttr(mouseCtrl+".UpOffset", e=True, keyable=True)
        cmds.addAttr(mouseCtrl, ln="DwOffset",  at="double",  min=0, max=10, dv=0 )
        cmds.setAttr(mouseCtrl+".DwOffset", e=True, keyable=True)
        
        cmds.connectAttr(mouseCtrl+".UpOffset", "LipCtrlLocGrp.UpLipOffset")
        cmds.connectAttr(mouseCtrl+".DwOffset", "LipCtrlLocGrp.DwLipOffset")
        
        for ctrl in lipCtrls:
            Utils.AddCtrlOffset(ctrl,2)
            
        Utils.CombinCtrlTranslate(lipCtrls, mouseCtrl, 0.5)
            
        cmds.connectAttr(mouseCtrl+".rotate", "LipLocGrp.rotate")
        cmds.connectAttr(mouseCtrl+".scale", "LipLocGrp.scale")    
        
        nodeList = ["LipCenterLoc", "UpLipJntCrv", "DwLipJntCrv", self.lipGudie_LineEdit.text(), "LipLocGrp", "LipCrvGrp", "LipCtrlJntGrp", "LipCtrlLocGrp"]
        
        for node in nodeList:
                cmds.setAttr(node+".tx", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".ty", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".tz", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".rx", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".ry", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".rz", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".sx", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".sy", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".sz", lock=True, keyable=False, channelBox=False)
                cmds.setAttr(node+".visibility", 0)
                cmds.setAttr(node+".visibility", keyable=False, channelBox=True)
        
        cmds.parent("LipCtrlGrp", mouseCtrl)
        
    def SetEyelidCtrl(self, side, EyelidCtrls):
    
        UpperEyelidCtrl = side + "UpperEyelidCtrl"
        LowerEyelidCtrl = side + "LowerEyelidCtrl" 
        
        for ctrl in EyelidCtrls:
            target = ctrl.replace("Ctrl","Handle")
            Utils.CtrlArrange(ctrl, target)
            
            ctrlParent = cmds.listRelatives(ctrl, p=True)[0]
            
            if ctrlParent.find("Up") != -1:
                cmds.parent(ctrlParent, UpperEyelidCtrl)
            elif ctrlParent.find("Dw") != -1:
                cmds.parent(ctrlParent, LowerEyelidCtrl)
            else:
                cmds.parent(ctrlParent, "EyelidCtrlsGrp")
        
        cmds.addAttr(UpperEyelidCtrl, ln="Offset",  at="double",  min=0, max=10, dv=10 )
        cmds.setAttr(UpperEyelidCtrl+".Offset", e=True, keyable=True)
        cmds.addAttr(LowerEyelidCtrl, ln="Offset",  at="double",  min=0, max=10, dv=10 )
        cmds.setAttr(LowerEyelidCtrl+".Offset", e=True, keyable=True)
        
        cmds.connectAttr(UpperEyelidCtrl+".Offset", side + "EyelidCtrlLocGrp.UpEyelidOffset")
        cmds.connectAttr(LowerEyelidCtrl+".Offset", side + "EyelidCtrlLocGrp.DwEyelidOffset")
        
        for ctrl in EyelidCtrls:
            Utils.AddCtrlOffset(ctrl, 2)
        
        UpTargetCtrl = [side + "RUpEyelidCtrl", side + "UpEyelidCtrl", side + "LUpEyelidCtrl"]
        DwTargetCtrl = [side + "RDwEyelidCtrl", side + "DwEyelidCtrl", side + "LDwEyelidCtrl"]
     
        Utils.CombinCtrlTranslate(UpTargetCtrl, UpperEyelidCtrl, 2)
        Utils.CombinCtrlTranslate(DwTargetCtrl, LowerEyelidCtrl, 2)
        
        
        LUpMultiply = cmds.createNode("multiplyDivide", n=side+"LUpEyelidCtrlOffsetMultiplyDived")
        RUpMultiply = cmds.createNode("multiplyDivide", n=side+"RUpEyelidCtrlOffsetMultiplyDived")
        LDwMultiply = cmds.createNode("multiplyDivide", n=side+"LDwEyelidCtrlOffsetMultiplyDived")
        RDwMultiply = cmds.createNode("multiplyDivide", n=side+"RDwEyelidCtrlOffsetMultiplyDived")
        
        
        cmds.connectAttr(side + "UpperEyelidCtrlOffsetMultiplyDived.output", LUpMultiply+".input1", f=True)
        cmds.connectAttr(LUpMultiply+".output", side+"LUpEyelidCtrlOffsetPlusMinusAverage.input3D[1]", f=True)
        cmds.connectAttr(side + "UpperEyelidCtrlOffsetMultiplyDived.output", RUpMultiply+".input1", f=True)
        cmds.connectAttr(RUpMultiply+".output", side+"RUpEyelidCtrlOffsetPlusMinusAverage.input3D[1]", f=True)
        
        cmds.connectAttr(side + "LowerEyelidCtrlOffsetMultiplyDived.output", LDwMultiply+".input1", f=True)
        cmds.connectAttr(LDwMultiply+".output", side+"LDwEyelidCtrlOffsetPlusMinusAverage.input3D[1]", f=True)
        cmds.connectAttr(side + "LowerEyelidCtrlOffsetMultiplyDived.output", RDwMultiply+".input1", f=True)
        cmds.connectAttr(RDwMultiply+".output", side+"RDwEyelidCtrlOffsetPlusMinusAverage.input3D[1]", f=True)
        
        for node in [LUpMultiply, RUpMultiply, LDwMultiply, RDwMultiply]:
            cmds.setAttr(node+".input2X", 0.6)
            cmds.setAttr(node+".input2Y", 0.6)
            cmds.setAttr(node+".input2Z", 0.6)
        cmds.delete(side + "EyelidCtrlGrp")

    def SetEyebrowCtrl(self, side, EyebrowCtrls):
        
        EyebrowCtrl = side + "EyebrowCtrl"
        
        for ctrl in EyebrowCtrls:
            target = ctrl.replace("Ctrl","Handle")
            Utils.CtrlArrange(ctrl, target)
            ctrlParent = cmds.listRelatives(ctrl, p=True)[0]
            cmds.parent(ctrlParent, EyebrowCtrl)
    
        cmds.addAttr(EyebrowCtrl, ln="Offset",  at="double",  min=0, max=10, dv=0 )
        cmds.setAttr(EyebrowCtrl+".Offset", e=True, keyable=True)
        
        
        cmds.connectAttr(EyebrowCtrl+".Offset", side + "EyebrowCtrlLocGrp.EyebrowOffset")
        
        
        for ctrl in EyebrowCtrls:
            Utils.AddCtrlOffset(ctrl, 1)
     
        Utils.CombinCtrlTranslate(EyebrowCtrls, EyebrowCtrl, 1)
    
        cmds.delete("|"+side + "EyebrowCtrlGrp")

    def SetCtrlAttr(self):
        ctrls = ["LeftEyebrowCtrl", "LeftREyebrowCtrl", "LeftRMEyebrowCtrl", "LeftMidEyebrowCtrl", "LeftLMEyebrowCtrl", "LeftLEyebrowCtrl", \
                 "RightEyebrowCtrl", "RightREyebrowCtrl", "RightRMEyebrowCtrl", "RightMidEyebrowCtrl", "RightLMEyebrowCtrl", "RightLEyebrowCtrl", \
                 "LeftUpperEyelidCtrl", "LeftLowerEyelidCtrl", "LeftREyelidCtrl", "LeftLEyelidCtrl", "LeftRUpEyelidCtrl", "LeftUpEyelidCtrl", "LeftLUpEyelidCtrl", "LeftRDwEyelidCtrl", "LeftDwEyelidCtrl", "LeftLDwEyelidCtrl", "LeftPupilCtrl", \
                 "RightUpperEyelidCtrl", "RightLowerEyelidCtrl", "RightREyelidCtrl", "RightLEyelidCtrl", "RightRUpEyelidCtrl", "RightUpEyelidCtrl", "RightLUpEyelidCtrl", "RightRDwEyelidCtrl", "RightDwEyelidCtrl", "RightLDwEyelidCtrl", "RightPupilCtrl", \
                 "LeftNoseCtrl", "RightNoseCtrl", "NoseCtrl", \
                 "MouseCtrl", "RightLipFPCtrl", "RightUpLipFPCtrl", "UpLipFPCtrl", "LeftUpLipFPCtrl", "LeftLipFPCtrl", "LeftDwLipFPCtrl", "DwLipFPCtrl", "RightDwLipFPCtrl", \
                 "UpTeethCtrl", "DwTeethCtrl"] 
        """
        eyebrowCtrls    = ["LeftEyebrowCtrl", "LeftREyebrowCtrl", "LeftRMEyebrowCtrl", "LeftMidEyebrowCtrl", "LeftLMEyebrowCtrl", "LeftLEyebrowCtrl", \
                           "RightEyebrowCtrl", "RightREyebrowCtrl", "RightRMEyebrowCtrl", "RightMidEyebrowCtrl", "RightLMEyebrowCtrl", "RightLEyebrowCtrl"]
        eyelidCtrls     = ["LeftUpperEyelidCtrl", "LeftLowerEyelidCtrl", "LeftREyelidCtrl", "LeftLEyelidCtrl", "LeftRUpEyelidCtrl", "LeftUpEyelidCtrl", "LeftLUpEyelidCtrl", "LeftRDwEyelidCtrl", "LeftDwEyelidCtrl", "LeftLDwEyelidCtrl", "LeftPupilCtrl", \
                           "RightUpperEyelidCtrl", "RightLowerEyelidCtrl", "RightREyelidCtrl", "RightLEyelidCtrl", "RightRUpEyelidCtrl", "RightUpEyelidCtrl", "RightLUpEyelidCtrl", "RightRDwEyelidCtrl", "RightDwEyelidCtrl", "RightLDwEyelidCtrl", "RightPupilCtrl"]
        noseCtrls       = ["LeftNoseCtrl", "RightNoseCtrl", "NoseCtrl"]
        mouseCtrls      = ["MouseCtrl", "RightLipFPCtrl", "RightUpLipFPCtrl", "UpLipFPCtrl", "LeftUpLipFPCtrl", "LeftLipFPCtrl", "LeftDwLipFPCtrl", "DwLipFPCtrl", "RightDwLipFPCtrl"]
        teethCtrls      = ["UpTeethCtrl", "DwTeethCtrl"]
        """
        for ctrl in ctrls:
            cmds.setAttr(ctrl+".v", keyable=False, cb=True)
        
        cmds.parent("FaceCtrlUIGrp", "HeadRigSysGrp")
        cmds.setAttr("LineClusterGrp.inheritsTransform", 0)
        cmds.setAttr("LineClusterGrp.it", l=True)
        
    def setup(self):
        if self.checkRigItem():
            pd = QProgressDialog("Rigging in progress.",None, 0, 20)
            pd.show()
            
            LipRig = Lip.GMKimLip("LipCenterLoc", "UpLipJntCrv", "DwLipJntCrv", self.lipGudie_LineEdit.text(), 10)
            pd.setValue(1)
            LipRig.LipRig()
            pd.setValue(2)
            LeftEyelidRig = Eyelid.GMKimEyelid("Left","LeftEyelidCenterLoc", "LeftUpEyelidJntCrv", "LeftDwEyelidJntCrv", self.eyelidLeftGudie_LineEdit.text(), 10)
            pd.setValue(3)
            LeftEyelidRig.EyelidRig()
            pd.setValue(4)
            RightEyelidRig = Eyelid.GMKimEyelid("Right","RightEyelidCenterLoc",  "RightUpEyelidJntCrv", "RightDwEyelidJntCrv", self.eyelidRightGudie_LineEdit.text(), 0)
            pd.setValue(5)
            RightEyelidRig.EyelidRig()
            pd.setValue(6)
            LeftEyebrowRig = Eyebrow.GMKimEyebrow("Left","LeftEyebrowCenterLoc", "LeftEyebrowJntCrv", self.eyebrowLeftGudie_LineEdit.text(), 10)
            pd.setValue(7)
            LeftEyebrowRig.EyebrowRig()
            pd.setValue(8)
            RightEyebrowRig = Eyebrow.GMKimEyebrow("Right","RightEyebrowCenterLoc", "RightEyebrowJntCrv", self.eyebrowRightGudie_LineEdit.text(), 10)
            pd.setValue(9)
            RightEyebrowRig.EyebrowRig()
            pd.setValue(10)
            self.faceRigDefaltSet()
            pd.setValue(11)
            Utils.ImportFaceCtrlUI()
            pd.setValue(12)
            self.SetTeethCtrl()
            pd.setValue(13)
            self.SetNoseCtrl()
            pd.setValue(14)
            self.SetLipCtrl(LipRig.GetFivePtrCtrl())       
            pd.setValue(15)
            self.SetEyelidCtrl("Left",LeftEyelidRig.GetCtrl())
            pd.setValue(16)
            self.SetEyelidCtrl("Right",RightEyelidRig.GetCtrl())
            pd.setValue(17)
            self.SetEyebrowCtrl("Left",LeftEyebrowRig.GetCtrl())
            pd.setValue(18)
            self.SetEyebrowCtrl("Right",RightEyebrowRig.GetCtrl())
            pd.setValue(19)
            self.SetCtrlAttr()
            pd.setValue(20)
        else:
            pm.error("Rig item not exist!!!")
                
if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    ui = GMKimFaceWidget()
    ui.show()
    sys.exit(app.exec_())