package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import com.apk.Cgoto;

/* loaded from: classes8.dex */
public class ResolutionAnchor extends ResolutionNode {
    public static final int BARRIER_CONNECTION = 5;
    public static final int CENTER_CONNECTION = 2;
    public static final int CHAIN_CONNECTION = 4;
    public static final int DIRECT_CONNECTION = 1;
    public static final int MATCH_CONNECTION = 3;
    public static final int UNCONNECTED = 0;
    public float computedValue;
    public ConstraintAnchor myAnchor;
    public float offset;
    public ResolutionAnchor opposite;
    public float oppositeOffset;
    public float resolvedOffset;
    public ResolutionAnchor resolvedTarget;
    public ResolutionAnchor target;
    public int type = 0;
    public ResolutionDimension dimension = null;
    public int dimensionMultiplier = 1;
    public ResolutionDimension oppositeDimension = null;
    public int oppositeDimensionMultiplier = 1;

    public ResolutionAnchor(ConstraintAnchor constraintAnchor) {
        this.myAnchor = constraintAnchor;
    }

    public void addResolvedValue(LinearSystem linearSystem) {
        SolverVariable solverVariable = this.myAnchor.getSolverVariable();
        ResolutionAnchor resolutionAnchor = this.resolvedTarget;
        if (resolutionAnchor == null) {
            linearSystem.addEquality(solverVariable, (int) (this.resolvedOffset + 0.5f));
        } else {
            linearSystem.addEquality(solverVariable, linearSystem.createObjectVariable(resolutionAnchor.myAnchor), (int) (this.resolvedOffset + 0.5f), 6);
        }
    }

    public void dependsOn(int i, ResolutionAnchor resolutionAnchor, int i2) {
        this.type = i;
        this.target = resolutionAnchor;
        this.offset = i2;
        resolutionAnchor.addDependent(this);
    }

    public float getResolvedValue() {
        return this.resolvedOffset;
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void remove(ResolutionDimension resolutionDimension) {
        ResolutionDimension resolutionDimension2 = this.dimension;
        if (resolutionDimension2 == resolutionDimension) {
            this.dimension = null;
            this.offset = this.dimensionMultiplier;
        } else if (resolutionDimension2 == this.oppositeDimension) {
            this.oppositeDimension = null;
            this.oppositeOffset = this.oppositeDimensionMultiplier;
        }
        resolve();
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void reset() {
        super.reset();
        this.target = null;
        this.offset = 0.0f;
        this.dimension = null;
        this.dimensionMultiplier = 1;
        this.oppositeDimension = null;
        this.oppositeDimensionMultiplier = 1;
        this.resolvedTarget = null;
        this.resolvedOffset = 0.0f;
        this.computedValue = 0.0f;
        this.opposite = null;
        this.oppositeOffset = 0.0f;
        this.type = 0;
    }

    public void resolve(ResolutionAnchor resolutionAnchor, float f) {
        if (this.state == 0 || !(this.resolvedTarget == resolutionAnchor || this.resolvedOffset == f)) {
            this.resolvedTarget = resolutionAnchor;
            this.resolvedOffset = f;
            if (this.state == 1) {
                invalidate();
            }
            didResolve();
        }
    }

    public String sType(int i) {
        return i == 1 ? "DIRECT" : i == 2 ? "CENTER" : i == 3 ? "MATCH" : i == 4 ? "CHAIN" : i == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void setOpposite(ResolutionAnchor resolutionAnchor, float f) {
        this.opposite = resolutionAnchor;
        this.oppositeOffset = f;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        if (this.state == 1) {
            if (this.resolvedTarget == this) {
                StringBuilder m1016super = Cgoto.m1016super("[");
                m1016super.append(this.myAnchor);
                m1016super.append(", RESOLVED: ");
                m1016super.append(this.resolvedOffset);
                m1016super.append("]  type: ");
                m1016super.append(sType(this.type));
                return m1016super.toString();
            }
            StringBuilder m1016super2 = Cgoto.m1016super("[");
            m1016super2.append(this.myAnchor);
            m1016super2.append(", RESOLVED: ");
            m1016super2.append(this.resolvedTarget);
            m1016super2.append(":");
            m1016super2.append(this.resolvedOffset);
            m1016super2.append("] type: ");
            m1016super2.append(sType(this.type));
            return m1016super2.toString();
        }
        StringBuilder m1016super3 = Cgoto.m1016super("{ ");
        m1016super3.append(this.myAnchor);
        m1016super3.append(" UNRESOLVED} type: ");
        m1016super3.append(sType(this.type));
        return m1016super3.toString();
    }

    public void update() {
        ConstraintAnchor target = this.myAnchor.getTarget();
        if (target == null) {
            return;
        }
        if (target.getTarget() == this.myAnchor) {
            this.type = 4;
            target.getResolutionNode().type = 4;
        }
        int margin = this.myAnchor.getMargin();
        ConstraintAnchor.Type type = this.myAnchor.mType;
        if (type == ConstraintAnchor.Type.RIGHT || type == ConstraintAnchor.Type.BOTTOM) {
            margin = -margin;
        }
        dependsOn(target.getResolutionNode(), margin);
    }

    public void setOpposite(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.opposite = resolutionAnchor;
        this.oppositeDimension = resolutionDimension;
        this.oppositeDimensionMultiplier = i;
    }

    public void dependsOn(ResolutionAnchor resolutionAnchor, int i) {
        this.target = resolutionAnchor;
        this.offset = i;
        resolutionAnchor.addDependent(this);
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void resolve() {
        ResolutionAnchor resolutionAnchor;
        ResolutionAnchor resolutionAnchor2;
        ResolutionAnchor resolutionAnchor3;
        ResolutionAnchor resolutionAnchor4;
        ResolutionAnchor resolutionAnchor5;
        ResolutionAnchor resolutionAnchor6;
        float f;
        float f2;
        ConstraintAnchor constraintAnchor;
        float width;
        float f3;
        ResolutionAnchor resolutionAnchor7;
        boolean z = true;
        if (this.state == 1 || this.type == 4) {
            return;
        }
        ResolutionDimension resolutionDimension = this.dimension;
        if (resolutionDimension != null) {
            if (resolutionDimension.state != 1) {
                return;
            }
            this.offset = this.dimensionMultiplier * resolutionDimension.value;
        }
        ResolutionDimension resolutionDimension2 = this.oppositeDimension;
        if (resolutionDimension2 != null) {
            if (resolutionDimension2.state != 1) {
                return;
            }
            this.oppositeOffset = this.oppositeDimensionMultiplier * resolutionDimension2.value;
        }
        if (this.type == 1 && ((resolutionAnchor7 = this.target) == null || resolutionAnchor7.state == 1)) {
            ResolutionAnchor resolutionAnchor8 = this.target;
            if (resolutionAnchor8 == null) {
                this.resolvedTarget = this;
                this.resolvedOffset = this.offset;
            } else {
                this.resolvedTarget = resolutionAnchor8.resolvedTarget;
                this.resolvedOffset = resolutionAnchor8.resolvedOffset + this.offset;
            }
            didResolve();
        } else if (this.type == 2 && (resolutionAnchor4 = this.target) != null && resolutionAnchor4.state == 1 && (resolutionAnchor5 = this.opposite) != null && (resolutionAnchor6 = resolutionAnchor5.target) != null && resolutionAnchor6.state == 1) {
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().centerConnectionResolved++;
            }
            this.resolvedTarget = this.target.resolvedTarget;
            ResolutionAnchor resolutionAnchor9 = this.opposite;
            resolutionAnchor9.resolvedTarget = resolutionAnchor9.target.resolvedTarget;
            ConstraintAnchor.Type type = this.myAnchor.mType;
            int i = 0;
            if (type != ConstraintAnchor.Type.RIGHT && type != ConstraintAnchor.Type.BOTTOM) {
                z = false;
            }
            if (z) {
                f = this.target.resolvedOffset;
                f2 = this.opposite.target.resolvedOffset;
            } else {
                f = this.opposite.target.resolvedOffset;
                f2 = this.target.resolvedOffset;
            }
            float f4 = f - f2;
            ConstraintAnchor.Type type2 = this.myAnchor.mType;
            if (type2 != ConstraintAnchor.Type.LEFT && type2 != ConstraintAnchor.Type.RIGHT) {
                width = f4 - constraintAnchor.mOwner.getHeight();
                f3 = this.myAnchor.mOwner.mVerticalBiasPercent;
            } else {
                width = f4 - this.myAnchor.mOwner.getWidth();
                f3 = this.myAnchor.mOwner.mHorizontalBiasPercent;
            }
            int margin = this.myAnchor.getMargin();
            int margin2 = this.opposite.myAnchor.getMargin();
            if (this.myAnchor.getTarget() == this.opposite.myAnchor.getTarget()) {
                f3 = 0.5f;
                margin2 = 0;
            } else {
                i = margin;
            }
            float f5 = i;
            float f6 = margin2;
            float f7 = (width - f5) - f6;
            if (z) {
                ResolutionAnchor resolutionAnchor10 = this.opposite;
                resolutionAnchor10.resolvedOffset = (f7 * f3) + resolutionAnchor10.target.resolvedOffset + f6;
                this.resolvedOffset = (this.target.resolvedOffset - f5) - ((1.0f - f3) * f7);
            } else {
                this.resolvedOffset = (f7 * f3) + this.target.resolvedOffset + f5;
                ResolutionAnchor resolutionAnchor11 = this.opposite;
                resolutionAnchor11.resolvedOffset = (resolutionAnchor11.target.resolvedOffset - f6) - ((1.0f - f3) * f7);
            }
            didResolve();
            this.opposite.didResolve();
        } else if (this.type == 3 && (resolutionAnchor = this.target) != null && resolutionAnchor.state == 1 && (resolutionAnchor2 = this.opposite) != null && (resolutionAnchor3 = resolutionAnchor2.target) != null && resolutionAnchor3.state == 1) {
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().matchConnectionResolved++;
            }
            ResolutionAnchor resolutionAnchor12 = this.target;
            this.resolvedTarget = resolutionAnchor12.resolvedTarget;
            ResolutionAnchor resolutionAnchor13 = this.opposite;
            ResolutionAnchor resolutionAnchor14 = resolutionAnchor13.target;
            resolutionAnchor13.resolvedTarget = resolutionAnchor14.resolvedTarget;
            this.resolvedOffset = resolutionAnchor12.resolvedOffset + this.offset;
            resolutionAnchor13.resolvedOffset = resolutionAnchor14.resolvedOffset + resolutionAnchor13.offset;
            didResolve();
            this.opposite.didResolve();
        } else if (this.type == 5) {
            this.myAnchor.mOwner.resolve();
        }
    }

    public void dependsOn(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.target = resolutionAnchor;
        resolutionAnchor.addDependent(this);
        this.dimension = resolutionDimension;
        this.dimensionMultiplier = i;
        resolutionDimension.addDependent(this);
    }
}
