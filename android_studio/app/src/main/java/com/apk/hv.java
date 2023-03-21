package com.apk;

import android.view.View;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* compiled from: TranslateAnimator.java */
/* loaded from: classes8.dex */
public class hv extends cv {

    /* renamed from: case  reason: not valid java name */
    public int f1993case;

    /* renamed from: else  reason: not valid java name */
    public float f1994else;

    /* renamed from: for  reason: not valid java name */
    public float f1995for;

    /* renamed from: goto  reason: not valid java name */
    public float f1996goto;

    /* renamed from: new  reason: not valid java name */
    public float f1997new;

    /* renamed from: this  reason: not valid java name */
    public boolean f1998this;

    /* renamed from: try  reason: not valid java name */
    public int f1999try;

    public hv(View view, ov ovVar) {
        super(view, ovVar);
        this.f1998this = false;
    }

    @Override // com.apk.cv
    /* renamed from: do */
    public void mo114do() {
        switch (this.f791if.ordinal()) {
            case 9:
                this.f1995for -= this.f790do.getMeasuredWidth() - this.f1999try;
                break;
            case 10:
                this.f1995for += this.f790do.getMeasuredWidth() - this.f1999try;
                break;
            case 11:
                this.f1997new -= this.f790do.getMeasuredHeight() - this.f1993case;
                break;
            case 12:
                this.f1997new += this.f790do.getMeasuredHeight() - this.f1993case;
                break;
        }
        this.f790do.animate().translationX(this.f1995for).translationY(this.f1997new).setInterpolator(new FastOutSlowInInterpolator()).setDuration(zu.f6264if).withLayer().start();
    }

    @Override // com.apk.cv
    /* renamed from: for */
    public void mo115for() {
        if (!this.f1998this) {
            this.f1994else = this.f790do.getTranslationX();
            this.f1996goto = this.f790do.getTranslationY();
            this.f1998this = true;
        }
        switch (this.f791if.ordinal()) {
            case 9:
                View view = this.f790do;
                view.setTranslationX(-view.getRight());
                break;
            case 10:
                View view2 = this.f790do;
                view2.setTranslationX(((View) view2.getParent()).getMeasuredWidth() - this.f790do.getLeft());
                break;
            case 11:
                View view3 = this.f790do;
                view3.setTranslationY(-view3.getBottom());
                break;
            case 12:
                View view4 = this.f790do;
                view4.setTranslationY(((View) view4.getParent()).getMeasuredHeight() - this.f790do.getTop());
                break;
        }
        this.f1995for = this.f790do.getTranslationX();
        this.f1997new = this.f790do.getTranslationY();
        this.f1999try = this.f790do.getMeasuredWidth();
        this.f1993case = this.f790do.getMeasuredHeight();
    }

    @Override // com.apk.cv
    /* renamed from: if */
    public void mo116if() {
        this.f790do.animate().translationX(this.f1994else).translationY(this.f1996goto).setInterpolator(new FastOutSlowInInterpolator()).setDuration(zu.f6264if).withLayer().start();
    }
}
