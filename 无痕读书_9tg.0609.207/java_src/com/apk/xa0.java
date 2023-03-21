package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class xa0 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ za0 f5507do;

    public xa0(za0 za0Var) {
        this.f5507do = za0Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f5507do.f6154case.setVisibility(8);
        za0.m3148case(this.f5507do);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        za0.m3150for(this.f5507do);
        this.f5507do.m3153new();
    }
}
