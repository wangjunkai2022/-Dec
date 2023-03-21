package com.apk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.apk.kw;

/* compiled from: CustomGestureDetector.java */
/* loaded from: classes8.dex */
public class aw {

    /* renamed from: break  reason: not valid java name */
    public bw f180break;

    /* renamed from: case  reason: not valid java name */
    public float f181case;

    /* renamed from: else  reason: not valid java name */
    public float f183else;

    /* renamed from: for  reason: not valid java name */
    public final ScaleGestureDetector f184for;

    /* renamed from: goto  reason: not valid java name */
    public final float f185goto;

    /* renamed from: new  reason: not valid java name */
    public VelocityTracker f187new;

    /* renamed from: this  reason: not valid java name */
    public final float f188this;

    /* renamed from: try  reason: not valid java name */
    public boolean f189try;

    /* renamed from: do  reason: not valid java name */
    public int f182do = -1;

    /* renamed from: if  reason: not valid java name */
    public int f186if = 0;

    /* compiled from: CustomGestureDetector.java */
    /* renamed from: com.apk.aw$do  reason: invalid class name */
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
                ((kw.Cdo) aw.this.f180break).m1581do(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
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

    public aw(Context context, bw bwVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f188this = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f185goto = viewConfiguration.getScaledTouchSlop();
        this.f180break = bwVar;
        this.f184for = new ScaleGestureDetector(context, new Cdo());
    }

    /* renamed from: do  reason: not valid java name */
    public final float m117do(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f186if);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m118for() {
        return this.f184for.isInProgress();
    }

    /* renamed from: if  reason: not valid java name */
    public final float m119if(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f186if);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0175, code lost:
        if (r7.f2680continue != false) goto L106;
     */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m120new(android.view.MotionEvent r24) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.aw.m120new(android.view.MotionEvent):boolean");
    }
}
