# coding:utf-8

from PySide import QtGui, QtCore

class CtrlShapeIO(QtGui.QWidget):
    
    def __init__(self, parent=None):
        super(CtrlShapeIO, self).__init__(parent)
        self.initUI()
    
    #def initUI(self):
        