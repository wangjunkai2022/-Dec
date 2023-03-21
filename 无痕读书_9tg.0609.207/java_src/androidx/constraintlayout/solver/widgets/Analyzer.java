package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes8.dex */
public class Analyzer {
    public static void determineGroups(ConstraintWidgetContainer constraintWidgetContainer) {
        if ((constraintWidgetContainer.getOptimizationLevel() & 32) != 32) {
            singleGroup(constraintWidgetContainer);
            return;
        }
        constraintWidgetContainer.mSkipSolver = true;
        constraintWidgetContainer.mGroupsWrapOptimized = false;
        constraintWidgetContainer.mHorizontalWrapOptimized = false;
        constraintWidgetContainer.mVerticalWrapOptimized = false;
        ArrayList<ConstraintWidget> arrayList = constraintWidgetContainer.mChildren;
        List<ConstraintWidgetGroup> list = constraintWidgetContainer.mWidgetGroups;
        boolean z = constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z2 = constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (ConstraintWidget constraintWidget : arrayList) {
            constraintWidget.mBelongingGroup = null;
            constraintWidget.mGroupsToSolver = false;
            constraintWidget.resetResolutionNodes();
        }
        for (ConstraintWidget constraintWidget2 : arrayList) {
            if (constraintWidget2.mBelongingGroup == null && !determineGroups(constraintWidget2, list, z3)) {
                singleGroup(constraintWidgetContainer);
                constraintWidgetContainer.mSkipSolver = false;
                return;
            }
        }
        int i = 0;
        int i2 = 0;
        for (ConstraintWidgetGroup constraintWidgetGroup : list) {
            i = Math.max(i, getMaxDimension(constraintWidgetGroup, 0));
            i2 = Math.max(i2, getMaxDimension(constraintWidgetGroup, 1));
        }
        if (z) {
            constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setWidth(i);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mHorizontalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedWidth = i;
        }
        if (z2) {
            constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setHeight(i2);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mVerticalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedHeight = i2;
        }
        setPosition(list, 0, constraintWidgetContainer.getWidth());
        setPosition(list, 1, constraintWidgetContainer.getHeight());
    }

    public static int getMaxDimension(ConstraintWidgetGroup constraintWidgetGroup, int i) {
        int i2 = i * 2;
        List<ConstraintWidget> startWidgets = constraintWidgetGroup.getStartWidgets(i);
        int size = startWidgets.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = startWidgets.get(i4);
            ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
            int i5 = i2 + 1;
            i3 = Math.max(i3, getMaxDimensionTraversal(constraintWidget, i, constraintAnchorArr[i5].mTarget == null || !(constraintAnchorArr[i2].mTarget == null || constraintAnchorArr[i5].mTarget == null), 0));
        }
        constraintWidgetGroup.mGroupDimensions[i] = i3;
        return i3;
    }

    public static int getMaxDimensionTraversal(ConstraintWidget constraintWidget, int i, boolean z, int i2) {
        int height;
        int baselineDistance;
        int i3;
        int i4;
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        int i9 = 0;
        if (constraintWidget.mOptimizerMeasurable) {
            boolean z2 = constraintWidget.mBaseline.mTarget != null && i == 1;
            if (z) {
                height = constraintWidget.getBaselineDistance();
                baselineDistance = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
                i4 = i * 2;
                i3 = i4 + 1;
            } else {
                height = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
                baselineDistance = constraintWidget.getBaselineDistance();
                i3 = i * 2;
                i4 = i3 + 1;
            }
            ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
            if (constraintAnchorArr[i3].mTarget == null || constraintAnchorArr[i4].mTarget != null) {
                i5 = 1;
            } else {
                i5 = -1;
                int i10 = i3;
                i3 = i4;
                i4 = i10;
            }
            int i11 = z2 ? i2 - height : i2;
            int parentBiasOffset = getParentBiasOffset(constraintWidget, i) + (constraintWidget.mListAnchors[i4].getMargin() * i5);
            int i12 = i11 + parentBiasOffset;
            int width2 = (i == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * i5;
            Iterator<ResolutionNode> it = constraintWidget.mListAnchors[i4].getResolutionNode().dependents.iterator();
            while (it.hasNext()) {
                i9 = Math.max(i9, getMaxDimensionTraversal(((ResolutionAnchor) it.next()).myAnchor.mOwner, i, z, i12));
            }
            int i13 = 0;
            for (Iterator<ResolutionNode> it2 = constraintWidget.mListAnchors[i3].getResolutionNode().dependents.iterator(); it2.hasNext(); it2 = it2) {
                i13 = Math.max(i13, getMaxDimensionTraversal(((ResolutionAnchor) it2.next()).myAnchor.mOwner, i, z, width2 + i12));
            }
            if (z2) {
                i9 -= height;
                width = i13 + baselineDistance;
            } else {
                width = i13 + ((i == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * i5);
            }
            int i14 = 1;
            if (i == 1) {
                Iterator<ResolutionNode> it3 = constraintWidget.mBaseline.getResolutionNode().dependents.iterator();
                int i15 = 0;
                while (it3.hasNext()) {
                    Iterator<ResolutionNode> it4 = it3;
                    ResolutionAnchor resolutionAnchor = (ResolutionAnchor) it3.next();
                    if (i5 == i14) {
                        i15 = Math.max(i15, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, i, z, height + i12));
                        i8 = i3;
                    } else {
                        i8 = i3;
                        i15 = Math.max(i15, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, i, z, (baselineDistance * i5) + i12));
                    }
                    it3 = it4;
                    i3 = i8;
                    i14 = 1;
                }
                i6 = i3;
                int i16 = i15;
                i7 = (constraintWidget.mBaseline.getResolutionNode().dependents.size() <= 0 || z2) ? i16 : i5 == 1 ? i16 + height : i16 - baselineDistance;
            } else {
                i6 = i3;
                i7 = 0;
            }
            int max = Math.max(i9, Math.max(width, i7)) + parentBiasOffset;
            int i17 = width2 + i12;
            if (i5 == -1) {
                i17 = i12;
                i12 = i17;
            }
            if (z) {
                Optimizer.setOptimizedWidget(constraintWidget, i, i12);
                constraintWidget.setFrame(i12, i17, i);
            } else {
                constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i);
                constraintWidget.setRelativePositioning(i12, i);
            }
            if (constraintWidget.getDimensionBehaviour(i) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio != 0.0f) {
                constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i);
            }
            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.mListAnchors;
            if (constraintAnchorArr2[i4].mTarget != null && constraintAnchorArr2[i6].mTarget != null) {
                ConstraintWidget parent = constraintWidget.getParent();
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget.mListAnchors;
                if (constraintAnchorArr3[i4].mTarget.mOwner == parent && constraintAnchorArr3[i6].mTarget.mOwner == parent) {
                    constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i);
                }
            }
            return max;
        }
        return 0;
    }

    public static int getParentBiasOffset(ConstraintWidget constraintWidget, int i) {
        ConstraintAnchor constraintAnchor;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2 + 1];
        ConstraintAnchor constraintAnchor4 = constraintAnchor2.mTarget;
        if (constraintAnchor4 != null) {
            ConstraintWidget constraintWidget2 = constraintAnchor4.mOwner;
            ConstraintWidget constraintWidget3 = constraintWidget.mParent;
            if (constraintWidget2 == constraintWidget3 && (constraintAnchor = constraintAnchor3.mTarget) != null && constraintAnchor.mOwner == constraintWidget3) {
                return (int) ((((constraintWidget3.getLength(i) - constraintAnchor2.getMargin()) - constraintAnchor3.getMargin()) - constraintWidget.getLength(i)) * (i == 0 ? constraintWidget.mHorizontalBiasPercent : constraintWidget.mVerticalBiasPercent));
            }
            return 0;
        }
        return 0;
    }

    public static void invalidate(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup) {
        constraintWidgetGroup.mSkipSolver = false;
        constraintWidgetContainer.mSkipSolver = false;
        constraintWidget.mOptimizerMeasurable = false;
    }

    public static int resolveDimensionRatio(ConstraintWidget constraintWidget) {
        float width;
        float height;
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mDimensionRatioSide == 0) {
                height = constraintWidget.getHeight() * constraintWidget.mDimensionRatio;
            } else {
                height = constraintWidget.getHeight() / constraintWidget.mDimensionRatio;
            }
            int i = (int) height;
            constraintWidget.setWidth(i);
            return i;
        } else if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mDimensionRatioSide == 1) {
                width = constraintWidget.getWidth() * constraintWidget.mDimensionRatio;
            } else {
                width = constraintWidget.getWidth() / constraintWidget.mDimensionRatio;
            }
            int i2 = (int) width;
            constraintWidget.setHeight(i2);
            return i2;
        } else {
            return -1;
        }
    }

    public static void setConnection(ConstraintAnchor constraintAnchor) {
        ResolutionAnchor resolutionNode = constraintAnchor.getResolutionNode();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null || constraintAnchor2.mTarget == constraintAnchor) {
            return;
        }
        constraintAnchor2.getResolutionNode().addDependent(resolutionNode);
    }

    public static void setPosition(List<ConstraintWidgetGroup> list, int i, int i2) {
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            for (ConstraintWidget constraintWidget : list.get(i3).getWidgetsToSet(i)) {
                if (constraintWidget.mOptimizerMeasurable) {
                    updateSizeDependentWidgets(constraintWidget, i, i2);
                }
            }
        }
    }

    public static void singleGroup(ConstraintWidgetContainer constraintWidgetContainer) {
        constraintWidgetContainer.mWidgetGroups.clear();
        constraintWidgetContainer.mWidgetGroups.add(0, new ConstraintWidgetGroup(constraintWidgetContainer.mChildren));
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0181, code lost:
        if (r3.mOwner == r4) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0128, code lost:
        if (r3.mOwner == r4) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean traverse(androidx.constraintlayout.solver.widgets.ConstraintWidget r8, androidx.constraintlayout.solver.widgets.ConstraintWidgetGroup r9, java.util.List<androidx.constraintlayout.solver.widgets.ConstraintWidgetGroup> r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Analyzer.traverse(androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.ConstraintWidgetGroup, java.util.List, boolean):boolean");
    }

    public static void updateSizeDependentWidgets(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        ConstraintAnchor constraintAnchor = constraintAnchorArr[i3];
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i3 + 1];
        if ((constraintAnchor.mTarget == null || constraintAnchor2.mTarget == null) ? false : true) {
            Optimizer.setOptimizedWidget(constraintWidget, i, constraintAnchor.getMargin() + getParentBiasOffset(constraintWidget, i));
        } else if (constraintWidget.mDimensionRatio != 0.0f && constraintWidget.getDimensionBehaviour(i) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int resolveDimensionRatio = resolveDimensionRatio(constraintWidget);
            int i4 = (int) constraintWidget.mListAnchors[i3].getResolutionNode().resolvedOffset;
            constraintAnchor2.getResolutionNode().resolvedTarget = constraintAnchor.getResolutionNode();
            constraintAnchor2.getResolutionNode().resolvedOffset = resolveDimensionRatio;
            constraintAnchor2.getResolutionNode().state = 1;
            constraintWidget.setFrame(i4, i4 + resolveDimensionRatio, i);
        } else {
            int relativePositioning = i2 - constraintWidget.getRelativePositioning(i);
            int length = relativePositioning - constraintWidget.getLength(i);
            constraintWidget.setFrame(length, relativePositioning, i);
            Optimizer.setOptimizedWidget(constraintWidget, i, length);
        }
    }

    public static boolean determineGroups(ConstraintWidget constraintWidget, List<ConstraintWidgetGroup> list, boolean z) {
        ConstraintWidgetGroup constraintWidgetGroup = new ConstraintWidgetGroup(new ArrayList(), true);
        list.add(constraintWidgetGroup);
        return traverse(constraintWidget, constraintWidgetGroup, list, z);
    }
}
