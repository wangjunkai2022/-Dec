package com.apk;

import android.app.Activity;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* compiled from: GestureDetectorUtils.java */
/* loaded from: classes8.dex */
public class l30 {

    /* renamed from: do  reason: not valid java name */
    public final GestureDetector f2740do;

    /* renamed from: for  reason: not valid java name */
    public int f2741for;

    /* renamed from: if  reason: not valid java name */
    public final pz f2742if;

    /* renamed from: new  reason: not valid java name */
    public int f2743new;

    /* compiled from: GestureDetectorUtils.java */
    /* renamed from: com.apk.l30$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends GestureDetector.SimpleOnGestureListener {
        public Cif(Cdo cdo) {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (r0.m2199catch().f3156extends || k30.m1427catch().f3156extends) {
                l30.this.m1612do(motionEvent.getX(), motionEvent.getY(), false);
                return false;
            }
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            l30.this.m1612do(motionEvent.getX(), motionEvent.getY(), false);
            return false;
        }
    }

    public l30(Activity activity, pz pzVar) {
        this.f2742if = pzVar;
        this.f2740do = new GestureDetector(activity.getApplicationContext(), new Cif(null));
    }

    /* renamed from: do  reason: not valid java name */
    public void m1612do(float f, float f2, boolean z) {
        float f3 = f / this.f2741for;
        float f4 = f2 / this.f2743new;
        pz pzVar = this.f2742if;
        if (pzVar != null) {
            pzVar.mo736do(null, f3, f4, z);
        }
    }
}
