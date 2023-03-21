package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class pa0 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ za0 f3597do;

    public pa0(za0 za0Var) {
        this.f3597do = za0Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3597do.f6154case.setVisibility(8);
    }
}
