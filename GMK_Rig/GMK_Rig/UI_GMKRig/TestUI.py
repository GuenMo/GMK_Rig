# -*- coding: utf-8 -*-

try:
    from PySide.QtGui import *
    from PySide.QtCore import *
except:
    from PySide2.QtGui import *
    from PySide2.QtCore import *
    from PySide2.QtWidgets import *

class TestWidget(QtGui.QWidget):
    def __init__(self, parent=None):
        super(TestWidget, self).__init__(parent)
        self.initUI()
        self.connectSignals()
        
    def initUI(self):
        # Create Widget
        self.main_Layout = QtGui.QGridLayout()
        self.ctrl_Group = QtGui.QGroupBox("Ctrl Info")
        self.ctrl_Layout = QtGui.QGridLayout()
        self.radio_Layout = QtGui.QHBoxLayout()
        self.allCtrl_Radio = QtGui.QRadioButton("All")
        self.mainCtrl_Radio = QtGui.QRadioButton("Main")
        self.extraCtrl_Radio = QtGui.QRadioButton("Extra")
        self.ctrl_List = QtGui.QListWidget()
        self.ctrl_TextEdit = QtGui.QTextEdit()
        
        # Set Layout
        self.setLayout(self.main_Layout)
        self.main_Layout.addWidget(self.ctrl_Group, 0,0)
        
        self.ctrl_Group.setLayout(self.ctrl_Layout)
        self.ctrl_Layout.addLayout(self.radio_Layout, 0,0, 1,2)
        self.radio_Layout.addWidget(self.allCtrl_Radio)
        self.radio_Layout.addWidget(self.mainCtrl_Radio)
        self.radio_Layout.addWidget(self.extraCtrl_Radio)
        self.ctrl_Layout.addWidget(self.ctrl_List, 1,0)
        self.ctrl_Layout.addWidget(self.ctrl_TextEdit, 1,1)
        
        # Set Widget
        
    def connectSignals(self):
        pass
        
                
if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    ui = TestWidget()
    ui.show()
    sys.exit(app.exec_())