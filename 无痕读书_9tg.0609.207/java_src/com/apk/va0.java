package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class va0 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ za0 f5058do;

    public va0(za0 za0Var) {
        this.f5058do = za0Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        za0.m3148case(this.f5058do);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        za0.m3150for(this.f5058do);
        za0.m3152try(this.f5058do);
    }
}
