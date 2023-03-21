package com.apk;

import android.animation.IntEvaluator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
/* compiled from: ScrollScaleAnimator.java */
/* loaded from: classes8.dex */
public class ev extends cv {

    /* renamed from: case  reason: not valid java name */
    public float f1123case;

    /* renamed from: else  reason: not valid java name */
    public float f1124else;

    /* renamed from: for  reason: not valid java name */
    public IntEvaluator f1125for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f1126goto;

    /* renamed from: new  reason: not valid java name */
    public int f1127new;

    /* renamed from: try  reason: not valid java name */
    public int f1128try;

    /* compiled from: ScrollScaleAnimator.java */
    /* renamed from: com.apk.ev$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ev evVar = ev.this;
            switch (evVar.f791if.ordinal()) {
                case 13:
                    evVar.f790do.setPivotX(0.0f);
                    View view = evVar.f790do;
                    view.setPivotY(view.getMeasuredHeight() / 2);
                    evVar.f1127new = evVar.f790do.getMeasuredWidth();
                    evVar.f1128try = 0;
                    break;
                case 14:
                    evVar.f790do.setPivotX(0.0f);
                    evVar.f790do.setPivotY(0.0f);
                    evVar.f1127new = evVar.f790do.getMeasuredWidth();
                    evVar.f1128try = evVar.f790do.getMeasuredHeight();
                    break;
                case 15:
                    View view2 = evVar.f790do;
                    view2.setPivotX(view2.getMeasuredWidth() / 2);
                    evVar.f790do.setPivotY(0.0f);
                    evVar.f1128try = evVar.f790do.getMeasuredHeight();
                    break;
                case 16:
                    View view3 = evVar.f790do;
                    view3.setPivotX(view3.getMeasuredWidth());
                    evVar.f790do.setPivotY(0.0f);
                    evVar.f1127new = -evVar.f790do.getMeasuredWidth();
                    evVar.f1128try = evVar.f790do.getMeasuredHeight();
                    break;
                case 17:
                    View view4 = evVar.f790do;
                    view4.setPivotX(view4.getMeasuredWidth());
                    View view5 = evVar.f790do;
                    view5.setPivotY(view5.getMeasuredHeight() / 2);
                    evVar.f1127new = -evVar.f790do.getMeasuredWidth();
                    break;
                case 18:
                    View view6 = evVar.f790do;
                    view6.setPivotX(view6.getMeasuredWidth());
                    View view7 = evVar.f790do;
                    view7.setPivotY(view7.getMeasuredHeight());
                    evVar.f1127new = -evVar.f790do.getMeasuredWidth();
                    evVar.f1128try = -evVar.f790do.getMeasuredHeight();
                    break;
                case 19:
                    View view8 = evVar.f790do;
                    view8.setPivotX(view8.getMeasuredWidth() / 2);
                    View view9 = evVar.f790do;
                    view9.setPivotY(view9.getMeasuredHeight());
                    evVar.f1128try = -evVar.f790do.getMeasuredHeight();
                    break;
                case 20:
                    evVar.f790do.setPivotX(0.0f);
                    View view10 = evVar.f790do;
                    view10.setPivotY(view10.getMeasuredHeight());
                    evVar.f1127new = evVar.f790do.getMeasuredWidth();
                    evVar.f1128try = -evVar.f790do.getMeasuredHeight();
                    break;
            }
            ev evVar2 = ev.this;
            evVar2.f790do.scrollTo(evVar2.f1127new, evVar2.f1128try);
        }
    }

    /* compiled from: ScrollScaleAnimator.java */
    /* renamed from: com.apk.ev$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            float f = 1.0f - animatedFraction;
            ev.this.f790do.setAlpha(f);
            ev evVar = ev.this;
            evVar.f790do.scrollTo(evVar.f1125for.evaluate(animatedFraction, (Integer) 0, Integer.valueOf(ev.this.f1127new)).intValue(), ev.this.f1125for.evaluate(animatedFraction, (Integer) 0, Integer.valueOf(ev.this.f1128try)).intValue());
            ev.this.f790do.setScaleX(f);
            ev evVar2 = ev.this;
            if (evVar2.f1126goto) {
                return;
            }
            evVar2.f790do.setScaleY(f);
        }
    }

    /* compiled from: ScrollScaleAnimator.java */
    /* renamed from: com.apk.ev$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* compiled from: ScrollScaleAnimator.java */
        /* renamed from: com.apk.ev$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {
            public Cdo() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                ev.this.f790do.setAlpha(animatedFraction);
                ev evVar = ev.this;
                View view = evVar.f790do;
                int intValue = evVar.f1125for.evaluate(animatedFraction, Integer.valueOf(evVar.f1127new), (Integer) 0).intValue();
                ev evVar2 = ev.this;
                view.scrollTo(intValue, evVar2.f1125for.evaluate(animatedFraction, Integer.valueOf(evVar2.f1128try), (Integer) 0).intValue());
                ev.this.f790do.setScaleX(animatedFraction);
                ev evVar3 = ev.this;
                if (evVar3.f1126goto) {
                    return;
                }
                evVar3.f790do.setScaleY(animatedFraction);
            }
        }

        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.addUpdateListener(new Cdo());
            ofFloat.setDuration(zu.f6264if - 100).setInterpolator(new FastOutSlowInInterpolator());
            ofFloat.start();
        }
    }

    public ev(View view, ov ovVar) {
        super(view, ovVar);
        this.f1125for = new IntEvaluator();
        this.f1123case = 0.0f;
        this.f1124else = 0.0f;
        this.f1126goto = false;
    }

    @Override // com.apk.cv
    /* renamed from: do */
    public void mo114do() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new Cfor());
        ofFloat.setDuration(zu.f6264if).setInterpolator(new FastOutSlowInInterpolator());
        ofFloat.start();
    }

    @Override // com.apk.cv
    /* renamed from: for */
    public void mo115for() {
        this.f790do.setAlpha(this.f1123case);
        this.f790do.setScaleX(this.f1124else);
        if (!this.f1126goto) {
            this.f790do.setScaleY(this.f1124else);
        }
        this.f790do.post(new Cdo());
    }

    @Override // com.apk.cv
    /* renamed from: if */
    public void mo116if() {
        this.f790do.post(new Cif());
    }
}
