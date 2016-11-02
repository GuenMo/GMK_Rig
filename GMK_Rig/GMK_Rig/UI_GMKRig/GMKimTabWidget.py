# -*- coding: utf-8 -*-

try:
    from PySide.QtGui import *
    from PySide.QtCore import *
except:
    from PySide2.QtGui import *
    from PySide2.QtCore import *
    from PySide2.QtWidgets import *
    
import GMKimBodyWidget as GMKimBodyWidget
import GMKimFaceWidget as GMKimFaceWidget
import GMKimMenuWidget as GMKimMenuWidget
reload(GMKimBodyWidget)
reload(GMKimFaceWidget)
reload(GMKimMenuWidget)



class GMKimTabWidget(QWidget):
    def __init__(self, parent=None):
        super(GMKimTabWidget, self).__init__(parent)
        self.initUI()
        self.connectSignals()

    def initUI(self):
        # Create Widget
        self.main_Layout = QGridLayout()
        self.tabs = QTabWidget()
        
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
    app = QApplication(sys.argv)
    ui = GMKimTabWidget()
    ui.show()
    sys.exit(app.exec_())