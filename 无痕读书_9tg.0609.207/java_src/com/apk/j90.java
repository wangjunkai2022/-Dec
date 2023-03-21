package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.tr.comment.sdk.commons.widget.TrReplyLayout;
/* compiled from: TrReplyLayout.java */
/* loaded from: classes7.dex */
public class j90 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrReplyLayout f2297do;

    public j90(TrReplyLayout trReplyLayout) {
        this.f2297do = trReplyLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f2297do.m3699class(false);
    }
}
