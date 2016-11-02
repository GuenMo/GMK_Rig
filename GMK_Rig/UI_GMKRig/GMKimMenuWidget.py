# -*- coding: utf-8 -*-

from PySide import QtGui, QtCore
import pymel.core as pm

import Core_GMKRig.Menu.MenuTool as MenuTool
reload(MenuTool)


class GMKimMenuWidget(QtGui.QWidget):
    def __init__(self, parent=None):
        super(GMKimMenuWidget, self).__init__(parent)
        self.menuTool = MenuTool.GMKimMenuTool()
        self.initUI()
        self.connectSignals()
        
    def initUI(self):
        # Create Widget
        self.main_Layout = QtGui.QGridLayout()
        
        ## Ctrl info
        self.ctrl_Group = QtGui.QGroupBox("Ctrl Info")
        self.ctrl_Layout = QtGui.QGridLayout()
        self.radio_Layout = QtGui.QHBoxLayout()
        self.ctrl_RadioGroup = QtGui.QButtonGroup()
        self.allCtrl_Radio = QtGui.QRadioButton("All")
        self.bodyCtrl_Radio = QtGui.QRadioButton("Body")
        self.faceCtrl_Radio = QtGui.QRadioButton("Face")
        self.extraCtrl_Radio = QtGui.QRadioButton("Extra")
        self.ctrl_RadioGroup.addButton(self.allCtrl_Radio,0)
        self.ctrl_RadioGroup.addButton(self.bodyCtrl_Radio,1)
        self.ctrl_RadioGroup.addButton(self.faceCtrl_Radio,2)
        self.ctrl_RadioGroup.addButton(self.extraCtrl_Radio,3)
        self.ctrl_List = QtGui.QListWidget()
        self.ctrl_TextEdit = QtGui.QTextEdit()
        
        ## mirror attr
        self.edit_GroupBox = QtGui.QGroupBox("Eidt Attribute")
        self.edit_Layout = QtGui.QGridLayout()
        
        self.editDisc_Layout = QtGui.QHBoxLayout()
        self.editDisc_Label = QtGui.QLabel("Direction")
        self.editDiscCheck_CheckBox = QtGui.QCheckBox("+")
        self.editDiscUnCheck_CheckBox = QtGui.QCheckBox("-")
        
        self.editAttry_Layout = QtGui.QGridLayout()
        self.blank_Label = QtGui.QLabel("")
        self.x_Label = QtGui.QLabel("X")
        self.y_Label = QtGui.QLabel("Y")
        self.z_Label = QtGui.QLabel("Z")
        self.t_Label = QtGui.QLabel("Translate")
        self.r_Label = QtGui.QLabel("Rotate   ")
        self.tx_CheckBox = QtGui.QCheckBox()
        self.ty_CheckBox = QtGui.QCheckBox()
        self.tz_CheckBox = QtGui.QCheckBox()
        self.rx_CheckBox = QtGui.QCheckBox()
        self.ry_CheckBox = QtGui.QCheckBox()
        self.rz_CheckBox = QtGui.QCheckBox()
        
        self.editTarget_Layout = QtGui.QHBoxLayout()
        self.editTarget_Label = QtGui.QLabel("Target   ")
        self.editTarget_LineEdit =QtGui.QLineEdit()
        self.editTarget_Button = QtGui.QPushButton(">>")
        
        self.editButton_Layout = QtGui.QHBoxLayout()
        self.editLoad_Button = QtGui.QPushButton("Load")
        self.edit_Button = QtGui.QPushButton("Edit")
        
        
        self.spacerItem = QtGui.QSpacerItem(20, 40, QtGui.QSizePolicy.Minimum, QtGui.QSizePolicy.Expanding)
        # Set Layout
        self.setLayout(self.main_Layout)
        self.main_Layout.addWidget(self.ctrl_Group, 0,0)
        self.main_Layout.addWidget(self.edit_GroupBox, 1,0)
        self.main_Layout.addItem(self.spacerItem, 2,0)
        
        self.ctrl_Group.setLayout(self.ctrl_Layout)
        self.ctrl_Layout.addLayout(self.radio_Layout, 0,0, 1,2)
        self.radio_Layout.addWidget(self.allCtrl_Radio)
        self.radio_Layout.addWidget(self.bodyCtrl_Radio)
        self.radio_Layout.addWidget(self.faceCtrl_Radio)
        self.radio_Layout.addWidget(self.extraCtrl_Radio)
        self.ctrl_Layout.addWidget(self.ctrl_List, 1,0)
        self.ctrl_Layout.addWidget(self.ctrl_TextEdit, 1,1)
        
        self.edit_GroupBox.setLayout(self.edit_Layout)
        self.edit_Layout.addLayout(self.editDisc_Layout, 0,0)
        self.editDisc_Layout.addWidget(self.editDisc_Label)
        self.editDisc_Layout.addWidget(self.editDiscCheck_CheckBox)
        self.editDisc_Layout.addWidget(self.editDiscUnCheck_CheckBox)
        
        self.edit_Layout.addLayout(self.editAttry_Layout, 1,0)
        self.editAttry_Layout.addWidget(self.blank_Label, 0,0)
        self.editAttry_Layout.addWidget(self.x_Label, 0,1)
        self.editAttry_Layout.addWidget(self.y_Label, 0,2)
        self.editAttry_Layout.addWidget(self.z_Label, 0,3)
        self.editAttry_Layout.addWidget(self.t_Label, 1,0)
        self.editAttry_Layout.addWidget(self.tx_CheckBox, 1,1)
        self.editAttry_Layout.addWidget(self.ty_CheckBox, 1,2)
        self.editAttry_Layout.addWidget(self.tz_CheckBox, 1,3)
        self.editAttry_Layout.addWidget(self.r_Label, 2,0)
        self.editAttry_Layout.addWidget(self.rx_CheckBox, 2,1)
        self.editAttry_Layout.addWidget(self.ry_CheckBox, 2,2)
        self.editAttry_Layout.addWidget(self.rz_CheckBox, 2,3)
        
        self.edit_Layout.addLayout(self.editTarget_Layout, 2,0)
        self.editTarget_Layout.addWidget(self.editTarget_Label)
        self.editTarget_Layout.addWidget(self.editTarget_LineEdit)
        self.editTarget_Layout.addWidget(self.editTarget_Button)
        
        self.edit_Layout.addLayout(self.editButton_Layout, 3,0)
        self.editButton_Layout.addWidget(self.editLoad_Button)
        self.editButton_Layout.addWidget(self.edit_Button)

        # Set Widget
        self.setWindowTitle("Custom Widget")
        self.editDiscCheck_CheckBox.setEnabled(False)
        self.editDiscCheck_CheckBox.setChecked(True)
        self.editDiscUnCheck_CheckBox.setEnabled(False)
        self.editTarget_Label.setMinimumSize(QtCore.QSize(69, 0))
        self.editTarget_Button.setMaximumSize(QtCore.QSize(30, 16777215))
        
        
    def connectSignals(self):
        self.connect( self.editTarget_Button, QtCore.SIGNAL("clicked()"), self.setMirrorTarget)
        self.connect( self.editLoad_Button, QtCore.SIGNAL("clicked()")   , self.loadCtrlAttr)
        self.connect( self.edit_Button, QtCore.SIGNAL("clicked()")   , self.editCtrlAttr)
        self.ctrl_RadioGroup.buttonClicked.connect(self.showCtrlInof)
        #self.connect( self.ctrl_RadioGroup, QtCore.SIGNAL("buttonClicked()") , self.checkdRadid)
        #self.connect( self.bodyCtrl_Radio, QtCore.SIGNAL("clicked()")        , self.showBodyCtrl)
    
    
    def showCtrlInof(self):
        id = self.ctrl_RadioGroup.checkedId()
        self.ctrl_List.clear()
        if id == 0:
            self.showAllCtrlInfo()
        elif id == 1:
            self.showBodyCtrlInfo()
        elif id == 2:
            self.showFaceCtrlInfo()
        elif id == 3:
            self.showExtraCtrlInfo()
    
    def showAllCtrlInfo(self):
        print "All Ctrl Info"
        crvs = pm.ls(type ="curveShape")
        ctrls = []
        
        if len(crvs)> 0 :
            for crv in crvs:
                if "Ctrl" in crv.name():
                    ctrls.append(crv.getParent())
        """
        allCtrl = self.menuTool.getAllCtrls()
        print allCtrl
        if allCtrl != None:
            for ctrl in allCtrl:
                item = QtGui.QListWidgetItem(self.ctrl_List)
                item.setText(ctrl.name())
                item.setForeground(QtGui.QBrush(QtGui.QColor(255,0,0)))
                self.ctrl_List.addItem(item)
        """
    def showBodyCtrlInfo(self):
        print "Body Ctrl Info"
        """
        allCtrl = self.menuTool.getBasicCtrls()[1]
        print allCtrl
        if allCtrl != None:
            for ctrl in allCtrl:
                self.ctrl_List.addItem(ctrl.name())
        """
    def showFaceCtrlInfo(self):
        print "Face Ctrl Info"
        
    def showExtraCtrlInfo(self):
        print "Extra Ctrl Info"
    
    def checkCtrl(self, ctrl):
        state = True
        checkList = ["KGMRigMenuItem", "Mirror", "MirrorTarget", "MirrorTranslate", "MirrorRotate"]
        attrList = pm.listAttr(ctrl, ud=True)
        for check in checkList:
                if not check in attrList:
                    state=False
        else:
            state = False
        return state
        
    def resetMirroAttr(self):
        self.tx_CheckBox.setChecked(False)
        self.ty_CheckBox.setChecked(False)
        self.tz_CheckBox.setChecked(False)
        self.rx_CheckBox.setChecked(False)
        self.ry_CheckBox.setChecked(False)
        self.rz_CheckBox.setChecked(False)
        self.editTarget_LineEdit.setText("")
    
    def intToCheckState(self, i):
        if i == 1:
            return True
        else:
            return False
    
    def bootToInt(self, state):
        if state:
            return 1.0
        else:
            return -1.0
    
    def loadCtrlAttr(self):
        ctrl = pm.ls(sl=True)
        if len(ctrl) > 0 :
            if self.checkCtrl(ctrl[0]):
                tx = ctrl[0].getAttr("MirrorTranslateX")
                ty = ctrl[0].getAttr("MirrorTranslateY")
                tz = ctrl[0].getAttr("MirrorTranslateZ")
                rx = ctrl[0].getAttr("MirrorRotateX")
                ry = ctrl[0].getAttr("MirrorRotateY")
                rz = ctrl[0].getAttr("MirrorRotateZ")
                target = ctrl[0].getAttr("MirrorTarget")
                
                self.tx_CheckBox.setChecked(self.intToCheckState(tx))
                self.ty_CheckBox.setChecked(self.intToCheckState(ty))
                self.tz_CheckBox.setChecked(self.intToCheckState(tz))
                self.rx_CheckBox.setChecked(self.intToCheckState(rx))
                self.ry_CheckBox.setChecked(self.intToCheckState(ry))
                self.rz_CheckBox.setChecked(self.intToCheckState(rz))
                if target != None:
                    self.editTarget_LineEdit.setText(target.name())
                else: 
                    self.editTarget_LineEdit.setText("")
            else:
                print "Not exist attribute for Menu setting"
                self.resetMirroAttr()
        else:
            print "Nothing Selected"
    
    def setMirrorTarget(self):
        ctrl = pm.ls(sl=True)
        if len(ctrl) > 0 :
            if self.checkCtrl(ctrl[0]):
                self.editTarget_LineEdit.setText(ctrl[0].name())
            else:
                print "Not exist attribute for Menu setting"
                self.resetMirroAttr()
        else:
            print "Nothing Selected"
    
    def editCtrlAttr(self):
        ctrl = pm.ls(sl=True)
        if len(ctrl) > 0 :
            if self.checkCtrl(ctrl[0]): 
                if not self.editTarget_LineEdit.text() == "":
                    ctrl[0].setAttr( "MirrorTranslateX" , self.bootToInt(self.tx_CheckBox.isChecked()) )
                    ctrl[0].setAttr( "MirrorTranslateY" , self.bootToInt(self.ty_CheckBox.isChecked()) )
                    ctrl[0].setAttr( "MirrorTranslateZ" , self.bootToInt(self.tz_CheckBox.isChecked()) )
                    ctrl[0].setAttr( "MirrorRotateX"    , self.bootToInt(self.rx_CheckBox.isChecked()) )
                    ctrl[0].setAttr( "MirrorRotateY"    , self.bootToInt(self.ry_CheckBox.isChecked()) )
                    ctrl[0].setAttr( "MirrorRotateZ"    , self.bootToInt(self.rz_CheckBox.isChecked()) )
                    target = ctrl[0].getAttr("MirrorTarget")
                    
                    if target != None:
                        pm.connectAttr(str(self.editTarget_LineEdit.text())+".msg" , ctrl[0]+".MirrorTarget", f=True)
                    else: 
                        pm.connectAttr(str(self.editTarget_LineEdit.text())+".msg" , ctrl[0]+".MirrorTarget", f=True)
                else:
                    self.resetMirroAttr() 
            else:
                print "Not exist attribute for Menu setting"
        else:
            print "Nothing Selected"    
            
if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    ui = GMKimMenuWidget()
    ui.show()
    sys.exit(app.exec_())      
        
        
        
        