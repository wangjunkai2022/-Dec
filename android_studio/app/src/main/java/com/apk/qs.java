package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.bytedance.msdk.adapter.util.Logger;

/* compiled from: RefreshableBannerView.java */
/* loaded from: classes8.dex */
public class qs extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ps f3927do;

    public qs(ps psVar) {
        this.f3927do = psVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f3927do.getChildCount() > 1) {
            this.f3927do.removeViewAt(0);
            Logger.d("TMe", "--==-- after remove, view count: " + this.f3927do.getChildCount());
        }
    }
}
