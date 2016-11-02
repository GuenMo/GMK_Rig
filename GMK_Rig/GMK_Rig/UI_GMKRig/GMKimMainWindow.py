# -*- coding: utf-8 -*-

try:
    from PySide.QtGui import *
    from PySide.QtCore import *
    from shiboken import wrapInstance
except:
    from PySide2.QtGui import *
    from PySide2.QtCore import *
    from PySide2.QtWidgets import *
    from shiboken2 import wrapInstance

import maya.OpenMayaUI as OpenMayaUI
import pymel.core as pm


import GMKimTabWidget as GMKimTabWidget
reload(GMKimTabWidget)



def getMayaWindow():
    ptr = OpenMayaUI.MQtUtil.mainWindow()
    return wrapInstance(long(ptr), QMainWindow)

class GMKimMainWindow(QMainWindow):
    def __init__(self, parent=getMayaWindow()):
        super(GMKimMainWindow, self).__init__(parent)
        self.initUI()
        
    def initUI(self):
        # Create Widget
        self.centralwidget = QWidget()
        self.setCentralWidget(self.centralwidget)
        self.main_Layout = QVBoxLayout()
        self.mainTab = GMKimTabWidget.GMKimTabWidget()
            
        # Set Layout
        self.centralwidget.setLayout(self.main_Layout)
        self.main_Layout.addWidget(self.mainTab)
    
        
        # Set Widget
        self.setWindowTitle("GMKim Rig")
        self.main_Layout.setContentsMargins(0, 0, 0, 0)
        self.setGeometry(300, 300, 250, 150)

        
def MainUI():
    global win
    try:
        win.close()
        win.deleteLater()
    except: 
        pass
    if pm.versions.current() >= 201600:
        win = GMKimMainWindow()
        win.show()
    else:
        pm.error("Maya version is incorrect!!")