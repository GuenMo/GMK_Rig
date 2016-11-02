# -*- coding: utf-8 -*-

from PySide import QtGui
import GMKimBodyWidget as GMKimBodyWidget
import GMKimFaceWidget as GMKimFaceWidget
import GMKimMenuWidget as GMKimMenuWidget
reload(GMKimBodyWidget)
reload(GMKimFaceWidget)
reload(GMKimMenuWidget)



class GMKimTabWidget(QtGui.QWidget):
    def __init__(self, parent=None):
        super(GMKimTabWidget, self).__init__(parent)
        self.initUI()
        self.connectSignals()

    def initUI(self):
        # Create Widget
        self.main_Layout = QtGui.QGridLayout()
        self.tabs = QtGui.QTabWidget()
        
        self.bodyTab = GMKimBodyWidget.GMKimBodyWidget()
        self.faceTab = GMKimFaceWidget.GMKimFaceWidget()
        self.menuToolTab = GMKimMenuWidget.GMKimMenuWidget()
    
        # Set Layout
        self.setLayout(self.main_Layout)
        self.main_Layout.addWidget(self.tabs)
        
        self.tabs.addTab(self.bodyTab, "Body")
        self.tabs.addTab(self.faceTab, "Face")
        self.tabs.addTab(self.menuToolTab, "MenuTool")
        
        # Set Widget
        self.setWindowTitle("Custom Widget")

    def connectSignals(self):
        pass
     
if __name__ == "__main__":
    import sys
    app = QtGui.QApplication(sys.argv)
    ui = GMKimTabWidget()
    ui.show()
    sys.exit(app.exec_())