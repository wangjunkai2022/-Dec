package com.apk;

import android.view.View;
import android.view.animation.OvershootInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* compiled from: ScaleAlphaAnimator.java */
/* loaded from: classes8.dex */
public class dv extends cv {

    /* compiled from: ScaleAlphaAnimator.java */
    /* renamed from: com.apk.dv$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dv dvVar = dv.this;
            int ordinal = dvVar.f791if.ordinal();
            if (ordinal == 0) {
                View view = dvVar.f790do;
                view.setPivotX(view.getMeasuredWidth() / 2);
                View view2 = dvVar.f790do;
                view2.setPivotY(view2.getMeasuredHeight() / 2);
            } else if (ordinal == 1) {
                dvVar.f790do.setPivotX(0.0f);
                dvVar.f790do.setPivotY(0.0f);
            } else if (ordinal == 2) {
                View view3 = dvVar.f790do;
                view3.setPivotX(view3.getMeasuredWidth());
                dvVar.f790do.setPivotY(0.0f);
            } else if (ordinal == 3) {
                dvVar.f790do.setPivotX(0.0f);
                View view4 = dvVar.f790do;
                view4.setPivotY(view4.getMeasuredHeight());
            } else if (ordinal != 4) {
            } else {
                View view5 = dvVar.f790do;
                view5.setPivotX(view5.getMeasuredWidth());
                View view6 = dvVar.f790do;
                view6.setPivotY(view6.getMeasuredHeight());
            }
        }
    }

    /* compiled from: ScaleAlphaAnimator.java */
    /* renamed from: com.apk.dv$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dv.this.f790do.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(zu.f6264if).setInterpolator(new OvershootInterpolator(1.0f)).start();
        }
    }

    public dv(View view, ov ovVar) {
        super(view, ovVar);
    }

    @Override // com.apk.cv
    /* renamed from: do */
    public void mo114do() {
        this.f790do.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setDuration(zu.f6264if).setInterpolator(new FastOutSlowInInterpolator()).start();
    }

    @Override // com.apk.cv
    /* renamed from: for */
    public void mo115for() {
        this.f790do.setScaleX(0.0f);
        this.f790do.setScaleY(0.0f);
        this.f790do.setAlpha(0.0f);
        this.f790do.post(new Cdo());
    }

    @Override // com.apk.cv
    /* renamed from: if */
    public void mo116if() {
        this.f790do.post(new Cif());
    }
}
