package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class wa0 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ za0 f5250do;

    public wa0(za0 za0Var) {
        this.f5250do = za0Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f5250do.f6160new.setVisibility(8);
        za0.m3148case(this.f5250do);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        za0.m3150for(this.f5250do);
        this.f5250do.m3153new();
    }
}
