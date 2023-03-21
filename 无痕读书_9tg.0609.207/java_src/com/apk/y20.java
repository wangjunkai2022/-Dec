package com.apk;

import android.content.Context;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import com.apk.h30;
/* compiled from: CustomGestureDetector.java */
/* loaded from: classes8.dex */
public class y20 {

    /* renamed from: break  reason: not valid java name */
    public z20 f5840break;

    /* renamed from: case  reason: not valid java name */
    public float f5841case;

    /* renamed from: else  reason: not valid java name */
    public float f5843else;

    /* renamed from: for  reason: not valid java name */
    public final ScaleGestureDetector f5844for;

    /* renamed from: goto  reason: not valid java name */
    public final float f5845goto;

    /* renamed from: new  reason: not valid java name */
    public VelocityTracker f5847new;

    /* renamed from: this  reason: not valid java name */
    public final float f5848this;

    /* renamed from: try  reason: not valid java name */
    public boolean f5849try;

    /* renamed from: do  reason: not valid java name */
    public int f5842do = -1;

    /* renamed from: if  reason: not valid java name */
    public int f5846if = 0;

    /* compiled from: CustomGestureDetector.java */
    /* renamed from: com.apk.y20$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ScaleGestureDetector.OnScaleGestureListener {
        public Cdo() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            if (scaleFactor >= 0.0f) {
                ((h30.Cdo) y20.this.f5840break).m1105do(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                return true;
            }
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public y20(Context context, z20 z20Var) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f5848this = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f5845goto = viewConfiguration.getScaledTouchSlop();
        this.f5840break = z20Var;
        this.f5844for = new ScaleGestureDetector(context, new Cdo());
    }

    /* renamed from: do  reason: not valid java name */
    public final float m3053do(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f5846if);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m3054for() {
        return this.f5844for.isInProgress();
    }

    /* renamed from: if  reason: not valid java name */
    public final float m3055if(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f5846if);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final boolean m3056new(MotionEvent motionEvent) {
        int i;
        int i2;
        int i3;
        int i4;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f5842do = motionEvent.getPointerId(0);
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f5847new = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            this.f5841case = m3053do(motionEvent);
            this.f5843else = m3055if(motionEvent);
            this.f5849try = false;
        } else if (action == 1) {
            this.f5842do = -1;
            if (this.f5849try && this.f5847new != null) {
                this.f5841case = m3053do(motionEvent);
                this.f5843else = m3055if(motionEvent);
                this.f5847new.addMovement(motionEvent);
                this.f5847new.computeCurrentVelocity(1000);
                float xVelocity = this.f5847new.getXVelocity();
                float yVelocity = this.f5847new.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f5848this) {
                    h30.Cdo cdo = (h30.Cdo) this.f5840break;
                    h30 h30Var = h30.this;
                    h30Var.f1737default = new h30.Ccase(h30Var.f1744goto.getContext());
                    h30 h30Var2 = h30.this;
                    h30.Ccase ccase = h30Var2.f1737default;
                    int m1098else = h30Var2.m1098else(h30Var2.f1744goto);
                    h30 h30Var3 = h30.this;
                    int m1095case = h30Var3.m1095case(h30Var3.f1744goto);
                    int i5 = (int) (-xVelocity);
                    int i6 = (int) (-yVelocity);
                    RectF m1099for = h30.this.m1099for();
                    if (m1099for != null) {
                        int round = Math.round(-m1099for.left);
                        float f = m1098else;
                        if (f < m1099for.width()) {
                            i = Math.round(m1099for.width() - f);
                            i2 = 0;
                        } else {
                            i = round;
                            i2 = i;
                        }
                        int round2 = Math.round(-m1099for.top);
                        float f2 = m1095case;
                        if (f2 < m1099for.height()) {
                            i3 = Math.round(m1099for.height() - f2);
                            i4 = 0;
                        } else {
                            i3 = round2;
                            i4 = i3;
                        }
                        ccase.f1764if = round;
                        ccase.f1763for = round2;
                        if (round != i || round2 != i3) {
                            ccase.f1762do.fling(round, round2, i5, i6, i2, i, i4, i3, 0, 0);
                        }
                    }
                    h30 h30Var4 = h30.this;
                    h30Var4.f1744goto.post(h30Var4.f1737default);
                }
            }
            VelocityTracker velocityTracker = this.f5847new;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f5847new = null;
            }
        } else if (action == 2) {
            float m3053do = m3053do(motionEvent);
            float m3055if = m3055if(motionEvent);
            float f3 = m3053do - this.f5841case;
            float f4 = m3055if - this.f5843else;
            if (!this.f5849try) {
                this.f5849try = Math.sqrt((double) ((f4 * f4) + (f3 * f3))) >= ((double) this.f5845goto);
            }
            if (this.f5849try) {
                h30.Cdo cdo2 = (h30.Cdo) this.f5840break;
                if (!h30.this.f1731break.m3054for()) {
                    f30 f30Var = h30.this.f1759throws;
                    if (f30Var != null) {
                        f30Var.m747do(f3, f4);
                    }
                    h30.this.f1735const.postTranslate(f3, f4);
                    h30.this.m1097do();
                    ViewParent parent = h30.this.f1744goto.getParent();
                    h30 h30Var5 = h30.this;
                    if (h30Var5.f1732case && !h30Var5.f1731break.m3054for()) {
                        h30 h30Var6 = h30.this;
                        if (!h30Var6.f1739else) {
                            int i7 = h30Var6.f1740extends;
                            if ((i7 == 2 || ((i7 == 0 && f3 >= 1.0f) || ((h30.this.f1740extends == 1 && f3 <= -1.0f) || ((h30.this.f1742finally == 0 && f4 >= 1.0f) || (h30.this.f1742finally == 1 && f4 <= -1.0f))))) && parent != null) {
                                parent.requestDisallowInterceptTouchEvent(false);
                            }
                        }
                    }
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
                this.f5841case = m3053do;
                this.f5843else = m3055if;
                VelocityTracker velocityTracker2 = this.f5847new;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f5842do = -1;
            VelocityTracker velocityTracker3 = this.f5847new;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f5847new = null;
            }
        } else if (action == 6) {
            int action2 = (motionEvent.getAction() & 65280) >> 8;
            if (motionEvent.getPointerId(action2) == this.f5842do) {
                int i8 = action2 == 0 ? 1 : 0;
                this.f5842do = motionEvent.getPointerId(i8);
                this.f5841case = motionEvent.getX(i8);
                this.f5843else = motionEvent.getY(i8);
            }
        }
        int i9 = this.f5842do;
        this.f5846if = motionEvent.findPointerIndex(i9 != -1 ? i9 : 0);
        return true;
    }
}
