# -*- coding: utf-8 -*-

import maya.OpenMayaUI as OpenMayaUI
from shiboken import wrapInstance
from PySide import QtGui
import pymel.core as pm

import stylesheet

import GMKimTabWidget as GMKimTabWidget
reload(GMKimTabWidget)



def getMayaWindow():
    ptr = OpenMayaUI.MQtUtil.mainWindow()
    return wrapInstance(long(ptr), QtGui.QMainWindow)

class GMKimMainWindow(QtGui.QMainWindow):
    def __init__(self, parent=getMayaWindow()):
        super(GMKimMainWindow, self).__init__(parent)
        self.stylData  = stylesheet.darkorange
        self.initUI()
        
    def initUI(self):
        # Create Widget
        self.centralwidget = QtGui.QWidget()
        self.setCentralWidget(self.centralwidget)
        self.main_Layout = QtGui.QVBoxLayout()
        self.mainTab = GMKimTabWidget.GMKimTabWidget()
            
        # Set Layout
        self.centralwidget.setLayout(self.main_Layout)
        self.main_Layout.addWidget(self.mainTab)
    
        
        # Set Widget
        self.setWindowTitle("GMKim Rig")
        self.main_Layout.setContentsMargins(0, 0, 0, 0)
        self.setGeometry(300, 300, 250, 150)
        self.setStyleSheet(self.stylData)
        
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