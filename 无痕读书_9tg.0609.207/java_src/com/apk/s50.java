package com.apk;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.apk.r50;
import com.biquge.ebook.app.ui.activity.TestActivity;
/* compiled from: TrSplashZoomOutManager.java */
/* loaded from: classes7.dex */
public class s50 implements Animator.AnimatorListener {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ float f4269case;

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ r50.Cdo f4270do;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ ViewGroup f4271else;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ViewGroup f4272for;

    /* renamed from: goto  reason: not valid java name */
    public final /* synthetic */ r50 f4273goto;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ View f4274if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ float f4275new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ int[] f4276try;

    public s50(r50 r50Var, r50.Cdo cdo, View view, ViewGroup viewGroup, float f, int[] iArr, float f2, ViewGroup viewGroup2) {
        this.f4273goto = r50Var;
        this.f4270do = cdo;
        this.f4274if = view;
        this.f4272for = viewGroup;
        this.f4275new = f;
        this.f4276try = iArr;
        this.f4269case = f2;
        this.f4271else = viewGroup2;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        r50.m2244case(this.f4274if);
        this.f4274if.setScaleX(1.0f);
        this.f4274if.setScaleY(1.0f);
        this.f4274if.setX(0.0f);
        this.f4274if.setY(0.0f);
        int[] iArr = new int[2];
        this.f4272for.getLocationOnScreen(iArr);
        float f = this.f4275new - iArr[0];
        int[] iArr2 = this.f4276try;
        float f2 = f + iArr2[0];
        float f3 = (this.f4269case - iArr[1]) + iArr2[1];
        int i = iArr[0];
        int i2 = iArr[1];
        this.f4271else.addView(this.f4274if, -1, -1);
        r50 r50Var = this.f4273goto;
        this.f4272for.addView(this.f4271else, new FrameLayout.LayoutParams(r50Var.f3998if, r50Var.f3996for));
        this.f4271else.setTranslationX(f2);
        this.f4271else.setTranslationY(f3);
        r50.Cdo cdo = this.f4270do;
        if (cdo != null) {
            ((TestActivity.Cdo) cdo).f6823do.zoomOutAnimationFinish();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (this.f4270do != null) {
            int i = this.f4273goto.f3994else;
        }
    }
}
