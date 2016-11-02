# coding:utf-8

try:
    from PySide.QtGui import *
    from PySide.QtCore import *
except:
    from PySide2.QtGui import *
    from PySide2.QtCore import *
    from PySide2.QtWidgets import *
    
class CtrlShapeIO(QtGui.QWidget):
    
    def __init__(self, parent=None):
        super(CtrlShapeIO, self).__init__(parent)
        self.initUI()
    
    #def initUI(self):
        