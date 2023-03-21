package com.apk;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* compiled from: ShadowBgAnimator.java */
/* loaded from: classes8.dex */
public class fv extends cv {

    /* renamed from: for  reason: not valid java name */
    public ArgbEvaluator f1469for;

    /* renamed from: new  reason: not valid java name */
    public int f1470new;

    /* renamed from: try  reason: not valid java name */
    public boolean f1471try;

    /* compiled from: ShadowBgAnimator.java */
    /* renamed from: com.apk.fv$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            fv.this.f790do.setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* compiled from: ShadowBgAnimator.java */
    /* renamed from: com.apk.fv$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            fv.this.f790do.setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public fv(View view) {
        super(view);
        this.f1469for = new ArgbEvaluator();
        this.f1470new = 0;
        this.f1471try = false;
    }

    @Override // com.apk.cv
    /* renamed from: do */
    public void mo114do() {
        ValueAnimator ofObject = ValueAnimator.ofObject(this.f1469for, Integer.valueOf(zu.f6265new), Integer.valueOf(this.f1470new));
        ofObject.addUpdateListener(new Cif());
        ofObject.setInterpolator(new FastOutSlowInInterpolator());
        ofObject.setDuration(this.f1471try ? 0L : zu.f6264if).start();
    }

    @Override // com.apk.cv
    /* renamed from: for */
    public void mo115for() {
        this.f790do.setBackgroundColor(this.f1470new);
    }

    @Override // com.apk.cv
    /* renamed from: if */
    public void mo116if() {
        ValueAnimator ofObject = ValueAnimator.ofObject(this.f1469for, Integer.valueOf(this.f1470new), Integer.valueOf(zu.f6265new));
        ofObject.addUpdateListener(new Cdo());
        ofObject.setInterpolator(new FastOutSlowInInterpolator());
        ofObject.setDuration(this.f1471try ? 0L : zu.f6264if).start();
    }

    /* renamed from: new  reason: not valid java name */
    public int m893new(float f) {
        return ((Integer) this.f1469for.evaluate(f, Integer.valueOf(this.f1470new), Integer.valueOf(zu.f6265new))).intValue();
    }

    public fv() {
        this.f1469for = new ArgbEvaluator();
        this.f1470new = 0;
        this.f1471try = false;
    }
}
