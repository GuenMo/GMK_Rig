# -*- coding: utf-8 -*-

try:
    from PySide.QtGui import *
    from PySide.QtCore import *
except:
    from PySide2.QtGui import *
    from PySide2.QtCore import *
    from PySide2.QtWidgets import *

    
import pymel.core as pm
import maya.mel as mel


import Core_GMKRig.Utils               as Utils
import Core_GMKRig.Bipad.SelectSkinJnt as SelectSkinJnt
import Core_GMKRig.Bipad.RebuildJnt as RebuildJnt
import Core_GMKRig.Bipad.JntGDToJnt as JntGDToJnt
import Core_GMKRig.Bipad.SpineSet as SpineSet
import Core_GMKRig.Bipad.NeckSet as NeckSet

import Core_GMKRig.Bipad.LeftLegFKSet as LeftLegFKSet
import Core_GMKRig.Bipad.LeftLegIKSet as LeftLegIKSet
import Core_GMKRig.Bipad.LeftLegRigSet as LeftLegRigSet
import Core_GMKRig.Bipad.LeftLegArcSet as LeftLegArcSet
import Core_GMKRig.Bipad.LeftFootSet as LeftFootSet
import Core_GMKRig.Bipad.LeftLegConnectSet as LeftLegConnectSet

import Core_GMKRig.Bipad.RightLegFKSet as RightLegFKSet
import Core_GMKRig.Bipad.RightLegIKSet as RightLegIKSet
import Core_GMKRig.Bipad.RightLegRigSet as RightLegRigSet
import Core_GMKRig.Bipad.RightLegArcSet as RightLegArcSet
import Core_GMKRig.Bipad.RightFootSet as RightFootSet
import Core_GMKRig.Bipad.RightLegConnectSet as RightLegConnectSet

import Core_GMKRig.Bipad.LeftArmFKSet as LeftArmFKSet
import Core_GMKRig.Bipad.LeftArmIKSet as LeftArmIKSet
import Core_GMKRig.Bipad.LeftArmRigSet as LeftArmRigSet
import Core_GMKRig.Bipad.LeftArmArcSet as LeftArmArcSet
import Core_GMKRig.Bipad.LeftFingerSet as LeftFingerSet
import Core_GMKRig.Bipad.LeftArmConnectSet as LeftArmConnectSet

import Core_GMKRig.Bipad.RightArmFKSet as RightArmFKSet
import Core_GMKRig.Bipad.RightArmIKSet as RightArmIKSet
import Core_GMKRig.Bipad.RightArmRigSet as RightArmRigSet
import Core_GMKRig.Bipad.RightArmArcSet as RightArmArcSet
import Core_GMKRig.Bipad.RightFingerSet as RightFingerSet
import Core_GMKRig.Bipad.RightArmConnectSet as RightArmConnectSet

import Core_GMKRig.Bipad.EyeSet as EyeSet
import Core_GMKRig.Bipad.OralSet as OralSet
import Core_GMKRig.Bipad.TongueSet as TongueSet
import Core_GMKRig.Bipad.NoseSet as NoseSet
import Core_GMKRig.Bipad.CtrlColorSet as CtrlColorSet
import Core_GMKRig.Bipad.CtrlAttrSet as CtrlAttrSet
import Core_GMKRig.Bipad.AddOn as AddOn
import Core_GMKRig.Bipad.OutlineSet as OutlineSet


reload(Utils)
reload(SelectSkinJnt)
reload(RebuildJnt)
reload(JntGDToJnt)
reload(SpineSet)
reload(NeckSet)
reload(LeftLegFKSet)
reload(LeftLegIKSet)
reload(LeftLegRigSet)
reload(LeftLegArcSet)
reload(LeftFootSet)
reload(LeftLegConnectSet)
reload(RightLegFKSet)
reload(RightLegIKSet)
reload(RightLegRigSet)
reload(RightLegArcSet)
reload(RightFootSet)
reload(RightLegConnectSet)
reload(LeftArmFKSet)
reload(LeftArmIKSet)
reload(LeftArmRigSet)
reload(LeftArmArcSet)
reload(LeftFingerSet)
reload(LeftArmConnectSet)
reload(RightArmFKSet)
reload(RightArmIKSet)
reload(RightArmRigSet)
reload(RightArmArcSet)
reload(RightFingerSet)
reload(RightArmConnectSet)
reload(EyeSet)
reload(OralSet)
reload(TongueSet)
reload(NoseSet)
reload(CtrlColorSet)
reload(CtrlAttrSet)
reload(AddOn)
reload(OutlineSet)

import stylesheet

class GMKimBodyWidget(QWidget):
    def __init__(self, parent=None):
        super(GMKimBodyWidget, self).__init__(parent)
        Utils.KGM_ImportMel()
        self.initUI()
        self.connectSignals()
        self.count = 1

    def initUI(self):
        # Create Widget
        
        self.iconPath = Utils.get_IconPath()
        self.main_Layout = QGridLayout()
        
        ## Import joint Guide
        self.jg_GroupBox = QGroupBox("Joint Guide")
        self.jg_Layout  = QGridLayout()
        
        self.bipad_Button = QPushButton()
        self.bipad_Button.setFixedSize(75,75)
        self.bipad_Button.setStyleSheet("QPushButton{ background-image: url(%s); }" % (self.iconPath+"bipad.png"))
        
        self.quadruped_Button = QPushButton()
        self.quadruped_Button.setFixedSize(75,75)
        self.quadruped_Button.setStyleSheet("QPushButton{ background-image: url(%s); }" % (self.iconPath+"quadruped.png"))
        
        self.bird_Button = QPushButton()
        self.bird_Button.setFixedSize(75,75)
        self.bird_Button.setStyleSheet("QPushButton{ background-image: url(%s); }" % (self.iconPath+"bird.png"))
        
        ## Rig
        self.rig_GroupBox = QGroupBox("Rig")
        self.rig_Layout  = QGridLayout()
        
        self.jgToJnt_Button = QPushButton()
        self.jgToJnt_Button.setFixedSize(75,75)
        self.jgToJnt_Button.setStyleSheet("QPushButton{ background-image: url(%s); }" % (self.iconPath+"jgToJnt.png"))
        
        self.selJnt_Button = QPushButton()
        self.selJnt_Button.setFixedSize(75,75)
        self.selJnt_Button.setStyleSheet("QPushButton{ background-image: url(%s); }" % (self.iconPath+"selJnt.png"))
        
        self.setup_Button = QPushButton()
        self.setup_Button.setFixedSize(75,75)
        self.setup_Button.setStyleSheet("QPushButton{ background-image: url(%s); }" % (self.iconPath+"bodySetup.png"))
        
        # skin utils
        self.skin_GroupBox = QGroupBox("Skin Utils")
        self.skin_Layout = QGridLayout()
        
        self.bindSkin_Button = QPushButton()
        self.paintSkin_Button = QPushButton()
        self.addSkin_Button = QPushButton()
        self.mirrorSkin_Button = QPushButton()
        self.copySkin_Button = QPushButton()
        self.oneQuarterSkin_Button = QPushButton()
        self.twoQuarterSkin_Button = QPushButton()
        self.treeQuarterSkin_Button = QPushButton()
        self.fourQuarterSkin_Button = QPushButton()
        self.zeroSkin_Button = QPushButton()
        
        # display joint
        self.jntDisplay_GroupBox = QGroupBox("Joint Display")
        self.jntDisplay_Layout = QGridLayout()
        self.jntDisplay_SpinBox = QSpinBox()
        self.jntDisplay_Slider = QSlider(Qt.Horizontal)
        self.jntDisplay_SpinBox.setRange(1,100)
        self.jntDisplay_Slider.setRange(1,100)
        
        ## setup
        #self.setup_Layout = QGridLayout()
        self.spacerItem = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)
        
        # Set Layout
        self.setLayout(self.main_Layout)
        self.main_Layout.addWidget(self.jg_GroupBox, 0,0)
        self.main_Layout.addWidget(self.rig_GroupBox, 1,0)
        self.main_Layout.addWidget(self.skin_GroupBox, 2,0)
        self.main_Layout.addWidget(self.jntDisplay_GroupBox, 3,0)
        self.main_Layout.addItem(self.spacerItem, 4,0)
        
        self.jg_GroupBox.setLayout(self.jg_Layout)
        self.jg_Layout.addWidget(self.bipad_Button, 0,0)
        self.jg_Layout.addWidget(self.quadruped_Button, 0,1)
        self.jg_Layout.addWidget(self.bird_Button, 0,2)
        
        self.rig_GroupBox.setLayout(self.rig_Layout)
        self.rig_Layout.addWidget(self.jgToJnt_Button, 0,0)
        self.rig_Layout.addWidget(self.selJnt_Button, 0,1)
        self.rig_Layout.addWidget(self.setup_Button, 0,2)
        
        self.skin_GroupBox.setLayout(self.skin_Layout)
        self.skin_Layout.addWidget(self.bindSkin_Button, 0,0)
        self.skin_Layout.addWidget(self.paintSkin_Button, 0,1)
        self.skin_Layout.addWidget(self.addSkin_Button, 0,2)
        self.skin_Layout.addWidget(self.mirrorSkin_Button, 0,3)
        self.skin_Layout.addWidget(self.copySkin_Button, 0,4)
        self.skin_Layout.addWidget(self.oneQuarterSkin_Button, 1,0)
        self.skin_Layout.addWidget(self.twoQuarterSkin_Button, 1,1)
        self.skin_Layout.addWidget(self.treeQuarterSkin_Button, 1,2)
        self.skin_Layout.addWidget(self.fourQuarterSkin_Button, 1,3)
        self.skin_Layout.addWidget(self.zeroSkin_Button, 1,4)
        
        self.jntDisplay_GroupBox.setLayout(self.jntDisplay_Layout)
        self.jntDisplay_Layout.addWidget(self.jntDisplay_SpinBox, 0,0)
        self.jntDisplay_Layout.addWidget(self.jntDisplay_Slider, 0,1)
        
        # Set Widget
        self.setWindowTitle("Custom Widget")
        self.bindSkin_icon = QPixmap(self.iconPath + "bindSkin.png")
        self.paintSkin_icon = QPixmap(self.iconPath + "paintSkin.png")
        self.addSkin_icon = QPixmap(self.iconPath + "addSkin.png")
        self.mirrorSkin_icon = QPixmap(self.iconPath + "mirrorSkin.png")
        self.copySkin_icon = QPixmap(self.iconPath + "copySkin.png")
        self.oneQuarterSkin_icon = QPixmap(self.iconPath + "oneQuarterSkin.png")
        self.twoQuarterSkin_icon = QPixmap(self.iconPath + "twoQuarterSkin.png")
        self.treeQuarterSkin_icon = QPixmap(self.iconPath + "treeQuarterSkin.png")
        self.fourQuarterSkin_icon = QPixmap(self.iconPath + "fourQuarterSkin.png")
        self.zeroSkin_icon = QPixmap(self.iconPath + "zeroSkin.png")
        
        self.bindSkin_Button.setFixedSize(QSize(36,36))
        self.bindSkin_Button.setIconSize(QSize(32,32))
        self.bindSkin_Button.setIcon(self.bindSkin_icon)
        
        self.paintSkin_Button.setFixedSize(QSize(36,36))
        self.paintSkin_Button.setIconSize(QSize(32,32))
        self.paintSkin_Button.setIcon(self.paintSkin_icon)
        
        self.addSkin_Button.setFixedSize(QSize(36,36))
        self.addSkin_Button.setIconSize(QSize(32,32))
        self.addSkin_Button.setIcon(self.addSkin_icon)
        
        self.mirrorSkin_Button.setFixedSize(QSize(36,36))
        self.mirrorSkin_Button.setIconSize(QSize(32,32))
        self.mirrorSkin_Button.setIcon(self.mirrorSkin_icon)
        
        self.copySkin_Button.setFixedSize(QSize(36,36))
        self.copySkin_Button.setIconSize(QSize(32,32))
        self.copySkin_Button.setIcon(self.copySkin_icon)
        
        self.oneQuarterSkin_Button.setFixedSize(QSize(36,36))
        self.oneQuarterSkin_Button.setIconSize(QSize(32,32))
        self.oneQuarterSkin_Button.setIcon(self.oneQuarterSkin_icon)
        
        self.twoQuarterSkin_Button.setFixedSize(QSize(36,36))
        self.twoQuarterSkin_Button.setIconSize(QSize(32,32))
        self.twoQuarterSkin_Button.setIcon(self.twoQuarterSkin_icon)
        
        self.treeQuarterSkin_Button.setFixedSize(QSize(36,36))
        self.treeQuarterSkin_Button.setIconSize(QSize(32,32))
        self.treeQuarterSkin_Button.setIcon(self.treeQuarterSkin_icon)
        
        self.fourQuarterSkin_Button.setFixedSize(QSize(36,36))
        self.fourQuarterSkin_Button.setIconSize(QSize(32,32))
        self.fourQuarterSkin_Button.setIcon(self.fourQuarterSkin_icon)
        
        self.zeroSkin_Button.setFixedSize(QSize(36,36))
        self.zeroSkin_Button.setIconSize(QSize(32,32))
        self.zeroSkin_Button.setIcon(self.zeroSkin_icon)
        
    def connectSignals(self):
        self.connect( self.bipad_Button, SIGNAL("released()")    , self.importBipad      )
        self.connect( self.quadruped_Button, SIGNAL("released()"), self.importQuadruped  )
        self.connect( self.bird_Button, SIGNAL("released()")     , self.importBird       )
        self.connect( self.jgToJnt_Button, SIGNAL("released()")  , self.convertJgToJnt   )
        self.connect( self.selJnt_Button, SIGNAL("released()")   , self.selectSkinJnt    )
        self.connect( self.setup_Button, SIGNAL("released()")    , self.setup)
        
        self.connect( self.bindSkin_Button, SIGNAL("released()") , self.bindSkin)
        self.connect( self.paintSkin_Button, SIGNAL("released()") , self.paintSkin)
        self.connect( self.addSkin_Button, SIGNAL("released()") , self.addSkin)
        self.connect( self.mirrorSkin_Button, SIGNAL("released()") , self.mirrorSkin)
        self.connect( self.copySkin_Button, SIGNAL("released()") , self.copySkin)
        self.connect( self.oneQuarterSkin_Button, SIGNAL("released()") , self.oneQuarterSkin)
        self.connect( self.twoQuarterSkin_Button, SIGNAL("released()") , self.twoQuarterSkin)
        self.connect( self.treeQuarterSkin_Button, SIGNAL("released()") , self.treeQuarterSkin)
        self.connect( self.fourQuarterSkin_Button, SIGNAL("released()") , self.fourQuarterSkin)
        self.connect( self.zeroSkin_Button, SIGNAL("released()") , self.zeroSkin)
        
        self.connect( self.jntDisplay_Slider, SIGNAL("valueChanged(int)"), self.jntDisplay_SpinBox, SLOT("setValue(int)"))
        self.connect( self.jntDisplay_SpinBox, SIGNAL("valueChanged(int)"), self.jntDisplay_Slider, SLOT("setValue(int)"))
        self.connect( self.jntDisplay_Slider, SIGNAL("valueChanged(int)"), self.jntDisplay)
        self.connect( self.jntDisplay_SpinBox, SIGNAL("valueChanged(int)"), self.jntDisplay)
        
    # Custom Function
    
    def importBipad(self):
        print Utils.get_JointGD()
        pm.createReference(Utils.get_JointGD()+ "/Bipad/KGM_JntGD.ma", rpr="JntGuide")
        
    def importQuadruped(self):
        pm.createReference(Utils.get_JointGD() + "/Quadruped/KGM_JntGD.ma", rpr="JntGuide")
        
    def importBird(self):
        pm.createReference(Utils.get_GMKRigPath() + "/Bird/KGM_JntGD.ma", rpr="JntGuide")
        
    def convertJgToJnt(self):
        JntGDToJnt.KGM_JntGDToJnt()
        
    def selectSkinJnt(self):
        SelectSkinJnt.KGM_SelectSkinJnt()
        
    def setup(self):
        self.stylData  = stylesheet.darkorange
        pd = QProgressDialog("Rigging in progress.",None, 0, 35)
        pd.setStyleSheet(self.stylData)
        pd.show()
        
        RebuildJnt.KGM_RebuildJnt()
        pd.setValue(1)
        SpineSet.KGM_SpineSet()
        pd.setValue(2)
        NeckSet.KGM_NeckSet()
        pd.setValue(3)
        
        LeftLegFKSet.KGM_LeftLegFKSet()
        pd.setValue(4)
        LeftLegIKSet.KGM_LeftLegIKSet()
        pd.setValue(5)
        LeftLegRigSet.KGM_LeftLegRigSet()
        pd.setValue(6)
        LeftLegArcSet.KGM_LeftLegArcSet()
        pd.setValue(7)
        LeftFootSet.KGM_LeftFootSet()
        pd.setValue(8)
        LeftLegConnectSet.KGM_LeftLegConnectSet()
        pd.setValue(9)
        RightLegFKSet.KGM_RightLegFKSet()
        pd.setValue(10)
        RightLegIKSet.KGM_RightLegIKSet()
        pd.setValue(11)
        RightLegRigSet.KGM_RightLegRigSet()
        pd.setValue(12)
        RightLegArcSet.KGM_RightLegArcSet()
        pd.setValue(13)
        RightFootSet.KGM_RightFootSet()
        pd.setValue(14)
        RightLegConnectSet.KGM_RightLegConnectSet()
        pd.setValue(15)
        LeftArmFKSet.KGM_LeftArmFKSet()
        pd.setValue(16)
        LeftArmIKSet.KGM_LeftArmIKSet()
        pd.setValue(17)
        LeftArmRigSet.KGM_LeftArmRigSet()
        pd.setValue(18)
        LeftArmArcSet.KGM_LeftArmArcSet()
        pd.setValue(19)
        LeftFingerSet.KGM_LeftFingerSet()
        pd.setValue(20)
        LeftArmConnectSet.KGM_LeftArmConnectSet()
        pd.setValue(21)
        RightArmFKSet.KGM_RightArmFKSet()
        pd.setValue(22)
        RightArmIKSet.KGM_RightArmIKSet()
        pd.setValue(23)
        RightArmRigSet.KGM_RightArmRigSet()
        pd.setValue(24)
        RightArmArcSet.KGM_RightArmArcSet()
        pd.setValue(25)
        RightFingerSet.KGM_RightFingerSet()
        pd.setValue(26)
        RightArmConnectSet.KGM_RightArmConnectSet()
        print 'RightArm'
        pd.setValue(27)
        EyeSet.KGM_EyeSet()
        pd.setValue(28)
        OralSet.KGM_OralSet()
        pd.setValue(29)
        TongueSet.KGM_TongueSet()        
        pd.setValue(30)
        NoseSet.KGM_NoseSet()
        pd.setValue(31)
        CtrlColorSet.KGM_CtrlColorSet()
        pd.setValue(32)
        CtrlAttrSet.KGM_CtrlAttrSet()
        pd.setValue(33)
        AddOn.KGM_AddOn()
        pd.setValue(34)
        OutlineSet.KGM_OutlinSet()
        pd.setValue(35)


    # skin utils Functions
    def bindSkin(self):
        mel.eval("SmoothBindSkin;")
    
    def paintSkin(self):
        mel.eval("ArtPaintSkinWeightsTool;")
    
    def addSkin(self):
        pass
        """
        pm.select('pSphere1',r=1)
        pm.select('joint2',tgl=1)
        pm.mel.skinClusterInfluence(1, " -dr 4 -lw true -wt 0")
        pm.skinCluster('skinCluster1',ai='joint2',dr=4,wt=0,e=1,lw=True)
        """
    def mirrorSkin(self):
        skinCL = self.getSkinCluster()
        pm.copySkinWeights(ss=skinCL,surfaceAssociation='closestPoint',influenceAssociation=['closestJoint', 'oneToOne'],ds=skinCL,mirrorMode='YZ')

    def copySkin(self):
        pm.copySkinWeights(surfaceAssociation='closestPoint',influenceAssociation='closestJoint',noMirror=1)
    
    def oneQuarterSkin(self):
        skinCL = self.getVtxSkinCluster()
        sel = pm.ls(sl=True, fl=True)
        vtxList = sel[0:-1]
        jnt = sel[-1]
        pm.skinPercent(skinCL,vtxList,tv=(jnt, 0.25))
    
    def twoQuarterSkin(self):
        skinCL = self.getVtxSkinCluster()
        sel = pm.ls(sl=True, fl=True)
        vtxList = sel[0:-1]
        jnt = sel[-1]
        pm.skinPercent(skinCL,vtxList,tv=(jnt, 0.5))
    
    def treeQuarterSkin(self):
        skinCL = self.getVtxSkinCluster()
        sel = pm.ls(sl=True, fl=True)
        vtxList = sel[0:-1]
        jnt = sel[-1]
        pm.skinPercent(skinCL,vtxList,tv=(jnt, 0.75))
    
    def fourQuarterSkin(self):
        skinCL = self.getVtxSkinCluster()
        sel = pm.ls(sl=True, fl=True)
        vtxList = sel[0:-1]
        jnt = sel[-1]
        pm.skinPercent(skinCL,vtxList,tv=(jnt, 1))
        
    def zeroSkin(self):
        skinCL = self.getVtxSkinCluster()
        sel = pm.ls(sl=True, fl=True)
        vtxList = sel[0:-1]
        jnt = sel[-1]
        pm.skinPercent(skinCL,vtxList,tv=(jnt, 0))
        
    def getSkinCluster(self):
        sel = pm.ls(sl=True)[0]
        selShape = sel.getShape()
        skinClList = []
        for node in selShape.connections():
            if node.nodeType() == "skinCluster":
                skinClList.append(node)
        return skinClList[0]
    
    def getVtxSkinCluster(self):
        sel = pm.ls(sl=True, fl=True)
        vtxShape = pm.PyNode(sel[0].partition(".vtx")[0])
        
        skinClList = []
        for node in vtxShape.connections():
            if node.nodeType() == "skinCluster":
                skinClList.append(node)
        return skinClList[0]
    
    def jntDisplay(self):
        jntValue = self.jntDisplay_SpinBox.value()
        pm.jointDisplayScale(jntValue/100.0)
        
if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    ui = GMKimBodyWidget()
    ui.show()
    sys.exit(app.exec_())