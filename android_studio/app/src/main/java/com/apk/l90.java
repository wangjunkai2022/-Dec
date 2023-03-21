package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.tr.comment.sdk.commons.widget.TrReplyLayout;
import com.tr.comment.sdk.commons.widget.TrStateView;

/* compiled from: TrReplyLayout.java */
/* loaded from: classes7.dex */
public class l90 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrReplyLayout f2771do;

    public l90(TrReplyLayout trReplyLayout) {
        this.f2771do = trReplyLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f2771do.setVisibility(8);
        i80 i80Var = this.f2771do.f10376import;
        if (i80Var != null) {
            i80Var.m2394import();
        }
        TrStateView trStateView = this.f2771do.f10378new;
        if (trStateView != null) {
            trStateView.m3706try();
        }
    }
}
