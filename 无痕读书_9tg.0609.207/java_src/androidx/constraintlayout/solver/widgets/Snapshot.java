package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import java.util.ArrayList;
/* loaded from: classes8.dex */
public class Snapshot {
    public ArrayList<Connection> mConnections = new ArrayList<>();
    public int mHeight;
    public int mWidth;
    public int mX;
    public int mY;

    /* loaded from: classes8.dex */
    public static class Connection {
        public ConstraintAnchor mAnchor;
        public int mCreator;
        public int mMargin;
        public ConstraintAnchor.Strength mStrengh;
        public ConstraintAnchor mTarget;

        public Connection(ConstraintAnchor constraintAnchor) {
            this.mAnchor = constraintAnchor;
            this.mTarget = constraintAnchor.getTarget();
            this.mMargin = constraintAnchor.getMargin();
            this.mStrengh = constraintAnchor.getStrength();
            this.mCreator = constraintAnchor.getConnectionCreator();
        }

        public void applyTo(ConstraintWidget constraintWidget) {
            constraintWidget.getAnchor(this.mAnchor.getType()).connect(this.mTarget, this.mMargin, this.mStrengh, this.mCreator);
        }

        public void updateFrom(ConstraintWidget constraintWidget) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(this.mAnchor.getType());
            this.mAnchor = anchor;
            if (anchor != null) {
                this.mTarget = anchor.getTarget();
                this.mMargin = this.mAnchor.getMargin();
                this.mStrengh = this.mAnchor.getStrength();
                this.mCreator = this.mAnchor.getConnectionCreator();
                return;
            }
            this.mTarget = null;
            this.mMargin = 0;
            this.mStrengh = ConstraintAnchor.Strength.STRONG;
            this.mCreator = 0;
        }
    }

    public Snapshot(ConstraintWidget constraintWidget) {
        this.mX = constraintWidget.getX();
        this.mY = constraintWidget.getY();
        this.mWidth = constraintWidget.getWidth();
        this.mHeight = constraintWidget.getHeight();
        ArrayList<ConstraintAnchor> anchors = constraintWidget.getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            this.mConnections.add(new Connection(anchors.get(i)));
        }
    }

    public void applyTo(ConstraintWidget constraintWidget) {
        constraintWidget.setX(this.mX);
        constraintWidget.setY(this.mY);
        constraintWidget.setWidth(this.mWidth);
        constraintWidget.setHeight(this.mHeight);
        int size = this.mConnections.size();
        for (int i = 0; i < size; i++) {
            this.mConnections.get(i).applyTo(constraintWidget);
        }
    }

    public void updateFrom(ConstraintWidget constraintWidget) {
        this.mX = constraintWidget.getX();
        this.mY = constraintWidget.getY();
        this.mWidth = constraintWidget.getWidth();
        this.mHeight = constraintWidget.getHeight();
        int size = this.mConnections.size();
        for (int i = 0; i < size; i++) {
            this.mConnections.get(i).updateFrom(constraintWidget);
        }
    }
}
