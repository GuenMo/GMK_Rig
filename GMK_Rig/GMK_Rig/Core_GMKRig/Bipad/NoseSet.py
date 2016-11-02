import pymel.core as pm

def KGM_NoseSet():
    NoseRootLoc = pm.spaceLocator(n="NoseRootLoc")
    NoseRootLocGrp = pm.group(NoseRootLoc, n=NoseRootLoc+"Grp")
    NoseLoc = pm.spaceLocator(n="NoseLoc")
    NoseLocGrp = pm.group(NoseLoc, n=NoseLoc+"Grp")
    LeftNoseLoc = pm.spaceLocator(n="LeftNoseLoc")
    LeftNoseLocGrp = pm.group(LeftNoseLoc, n=LeftNoseLoc+"Grp")
    RightNoseLoc = pm.spaceLocator(n="RightNoseLoc")
    RightNoseLocGrp = pm.group(RightNoseLoc, n=RightNoseLoc+"Grp")
    
    NoseRootLocPos = pm.xform("NoseRootJnt", q=True, ws=True, t=True)
    NoseLocPos = pm.xform("NoseJnt", q=True, ws=True, t=True)
    LeftNoseLocPos = pm.xform("LeftNoseJnt", q=True, ws=True, t=True)
    RightNoseLocPos = pm.xform("RightNoseJnt", q=True, ws=True, t=True)
        
    pm.xform(NoseRootLocGrp, ws=True, t=NoseRootLocPos)
    pm.xform(NoseLocGrp, ws=True, t=NoseLocPos)
    pm.xform(LeftNoseLocGrp, ws=True, t=LeftNoseLocPos)
    pm.xform(RightNoseLocGrp, ws=True, t=RightNoseLocPos)
    
    pm.parentConstraint(NoseRootLoc, "NoseRootJnt", mo=True)
    pm.parentConstraint(NoseLoc, "NoseJnt", mo=True)
    pm.parentConstraint(LeftNoseLoc, "LeftNoseJnt", mo=True)
    pm.parentConstraint(RightNoseLoc, "RightNoseJnt", mo=True)
    
    pm.scaleConstraint(NoseRootLoc, "NoseRootJnt", mo=True)
    pm.scaleConstraint(NoseLoc, "NoseJnt", mo=True)
    pm.scaleConstraint(LeftNoseLoc, "LeftNoseJnt", mo=True)
    pm.scaleConstraint(RightNoseLoc, "RightNoseJnt", mo=True)
    
    pm.parent(NoseLocGrp, LeftNoseLocGrp, RightNoseLocGrp, NoseRootLoc)
    pm.parent(NoseRootLocGrp, "HeadRigSysGrp")
    
    for loc in [NoseRootLoc, NoseLoc, LeftNoseLoc, RightNoseLoc]:
        locShape = pm.listRelatives(loc, shapes=True)[0]
        pm.setAttr(locShape+".localScaleX", 0.01)
        pm.setAttr(locShape+".localScaleY", 0.01)
        pm.setAttr(locShape+".localScaleZ", 0.01)
    pm.setAttr(NoseRootLocGrp+".v", 0)