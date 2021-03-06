# -*- coding:utf-8 -*-

from PySide.QtCore import * 
from PySide.QtGui import *

import Core_GMKRig.Utils as Utils
reload(Utils)

class Gale_Logo(QLabel):
    def __init__(self, parent=None):
        super(Gale_Logo, self).__init__(parent)
        logoImage = QPixmap(Utils.get_IconPath()+'STUDIO_GALE LOGO.png')
    
        self.setAlignment(Qt.AlignRight)
        self.setPixmap(logoImage.scaled(175,50, Qt.KeepAspectRatio))
        # Set Widget
        self.setWindowTitle("Gale Logo")
    
if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    ui = Gale_Logo()
    ui.show()
    sys.exit(app.exec_())