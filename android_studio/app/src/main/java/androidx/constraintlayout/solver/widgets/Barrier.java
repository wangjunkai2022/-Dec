package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes8.dex */
public class Barrier extends Helper {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    public int mBarrierType = 0;
    public ArrayList<ResolutionAnchor> mNodes = new ArrayList<>(4);
    public boolean mAllowsGoneWidget = true;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        Object[] objArr;
        boolean z;
        int i;
        int i2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        constraintAnchorArr[0] = this.mLeft;
        constraintAnchorArr[2] = this.mTop;
        constraintAnchorArr[1] = this.mRight;
        constraintAnchorArr[3] = this.mBottom;
        int i3 = 0;
        while (true) {
            objArr = this.mListAnchors;
            if (i3 >= objArr.length) {
                break;
            }
            objArr[i3].mSolverVariable = linearSystem.createObjectVariable(objArr[i3]);
            i3++;
        }
        int i4 = this.mBarrierType;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = objArr[i4];
        for (int i5 = 0; i5 < this.mWidgetsCount; i5++) {
            ConstraintWidget constraintWidget = this.mWidgets[i5];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i = this.mBarrierType) == 0 || i == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (((i2 = this.mBarrierType) == 2 || i2 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))) {
                z = true;
                break;
            }
        }
        z = false;
        int i6 = this.mBarrierType;
        if (i6 == 0 || i6 == 1 ? getParent().getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT : getParent().getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            z = false;
        }
        for (int i7 = 0; i7 < this.mWidgetsCount; i7++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i7];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.mListAnchors;
                int i8 = this.mBarrierType;
                constraintAnchorArr2[i8].mSolverVariable = createObjectVariable;
                if (i8 != 0 && i8 != 2) {
                    linearSystem.addGreaterBarrier(constraintAnchor.mSolverVariable, createObjectVariable, z);
                } else {
                    linearSystem.addLowerBarrier(constraintAnchor.mSolverVariable, createObjectVariable, z);
                }
            }
        }
        int i9 = this.mBarrierType;
        if (i9 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 5);
        } else if (i9 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 5);
        } else if (i9 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 5);
        } else if (i9 == 3) {
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 6);
            if (z) {
                return;
            }
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 5);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void analyze(int i) {
        ResolutionAnchor resolutionNode;
        ResolutionAnchor resolutionNode2;
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && ((ConstraintWidgetContainer) constraintWidget).optimizeFor(2)) {
            int i2 = this.mBarrierType;
            if (i2 == 0) {
                resolutionNode = this.mLeft.getResolutionNode();
            } else if (i2 == 1) {
                resolutionNode = this.mRight.getResolutionNode();
            } else if (i2 == 2) {
                resolutionNode = this.mTop.getResolutionNode();
            } else if (i2 != 3) {
                return;
            } else {
                resolutionNode = this.mBottom.getResolutionNode();
            }
            resolutionNode.setType(5);
            int i3 = this.mBarrierType;
            if (i3 != 0 && i3 != 1) {
                this.mLeft.getResolutionNode().resolve(null, 0.0f);
                this.mRight.getResolutionNode().resolve(null, 0.0f);
            } else {
                this.mTop.getResolutionNode().resolve(null, 0.0f);
                this.mBottom.getResolutionNode().resolve(null, 0.0f);
            }
            this.mNodes.clear();
            for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
                ConstraintWidget constraintWidget2 = this.mWidgets[i4];
                if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                    int i5 = this.mBarrierType;
                    if (i5 == 0) {
                        resolutionNode2 = constraintWidget2.mLeft.getResolutionNode();
                    } else if (i5 == 1) {
                        resolutionNode2 = constraintWidget2.mRight.getResolutionNode();
                    } else if (i5 != 2) {
                        resolutionNode2 = i5 != 3 ? null : constraintWidget2.mBottom.getResolutionNode();
                    } else {
                        resolutionNode2 = constraintWidget2.mTop.getResolutionNode();
                    }
                    if (resolutionNode2 != null) {
                        this.mNodes.add(resolutionNode2);
                        resolutionNode2.addDependent(resolutionNode);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void resetResolutionNodes() {
        super.resetResolutionNodes();
        this.mNodes.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void resolve() {
        ResolutionAnchor resolutionNode;
        float f;
        ResolutionAnchor resolutionAnchor;
        int i = this.mBarrierType;
        float f2 = Float.MAX_VALUE;
        if (i != 0) {
            if (i == 1) {
                resolutionNode = this.mRight.getResolutionNode();
            } else if (i == 2) {
                resolutionNode = this.mTop.getResolutionNode();
            } else if (i != 3) {
                return;
            } else {
                resolutionNode = this.mBottom.getResolutionNode();
            }
            f2 = 0.0f;
        } else {
            resolutionNode = this.mLeft.getResolutionNode();
        }
        int size = this.mNodes.size();
        ResolutionAnchor resolutionAnchor2 = null;
        for (int i2 = 0; i2 < size; i2++) {
            ResolutionAnchor resolutionAnchor3 = this.mNodes.get(i2);
            if (resolutionAnchor3.state != 1) {
                return;
            }
            int i3 = this.mBarrierType;
            if (i3 != 0 && i3 != 2) {
                f = resolutionAnchor3.resolvedOffset;
                if (f > f2) {
                    resolutionAnchor = resolutionAnchor3.resolvedTarget;
                    resolutionAnchor2 = resolutionAnchor;
                    f2 = f;
                }
            } else {
                f = resolutionAnchor3.resolvedOffset;
                if (f < f2) {
                    resolutionAnchor = resolutionAnchor3.resolvedTarget;
                    resolutionAnchor2 = resolutionAnchor;
                    f2 = f;
                }
            }
        }
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().barrierConnectionResolved++;
        }
        resolutionNode.resolvedTarget = resolutionAnchor2;
        resolutionNode.resolvedOffset = f2;
        resolutionNode.didResolve();
        int i4 = this.mBarrierType;
        if (i4 == 0) {
            this.mRight.getResolutionNode().resolve(resolutionAnchor2, f2);
        } else if (i4 == 1) {
            this.mLeft.getResolutionNode().resolve(resolutionAnchor2, f2);
        } else if (i4 == 2) {
            this.mBottom.getResolutionNode().resolve(resolutionAnchor2, f2);
        } else if (i4 == 3) {
            this.mTop.getResolutionNode().resolve(resolutionAnchor2, f2);
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.mAllowsGoneWidget = z;
    }

    public void setBarrierType(int i) {
        this.mBarrierType = i;
    }
}
