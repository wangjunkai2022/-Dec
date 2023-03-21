package com.apk;

import android.view.View;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* compiled from: TranslateAlphaAnimator.java */
/* loaded from: classes8.dex */
public class gv extends cv {

    /* renamed from: case  reason: not valid java name */
    public float f1645case;

    /* renamed from: for  reason: not valid java name */
    public float f1646for;

    /* renamed from: new  reason: not valid java name */
    public float f1647new;

    /* renamed from: try  reason: not valid java name */
    public float f1648try;

    public gv(View view, ov ovVar) {
        super(view, ovVar);
    }

    @Override // com.apk.cv
    /* renamed from: do */
    public void mo114do() {
        this.f790do.animate().translationX(this.f1646for).translationY(this.f1647new).alpha(0.0f).setInterpolator(new FastOutSlowInInterpolator()).setDuration(zu.f6264if).withLayer().start();
    }

    @Override // com.apk.cv
    /* renamed from: for */
    public void mo115for() {
        this.f1648try = this.f790do.getTranslationX();
        this.f1645case = this.f790do.getTranslationY();
        this.f790do.setAlpha(0.0f);
        int ordinal = this.f791if.ordinal();
        if (ordinal == 5) {
            View view = this.f790do;
            view.setTranslationX(-view.getMeasuredWidth());
        } else if (ordinal == 6) {
            View view2 = this.f790do;
            view2.setTranslationX(view2.getMeasuredWidth());
        } else if (ordinal == 7) {
            View view3 = this.f790do;
            view3.setTranslationY(-view3.getMeasuredHeight());
        } else if (ordinal == 8) {
            View view4 = this.f790do;
            view4.setTranslationY(view4.getMeasuredHeight());
        }
        this.f1646for = this.f790do.getTranslationX();
        this.f1647new = this.f790do.getTranslationY();
    }

    @Override // com.apk.cv
    /* renamed from: if */
    public void mo116if() {
        this.f790do.animate().translationX(this.f1648try).translationY(this.f1645case).alpha(1.0f).setInterpolator(new FastOutSlowInInterpolator()).setDuration(zu.f6264if).withLayer().start();
    }
}
