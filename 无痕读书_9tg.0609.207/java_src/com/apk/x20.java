package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.manhua.ui.widget.ZoomRecyclerView;
/* compiled from: ZoomRecyclerView.java */
/* loaded from: classes8.dex */
public class x20 extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ZoomRecyclerView f5450do;

    public x20(ZoomRecyclerView zoomRecyclerView) {
        this.f5450do = zoomRecyclerView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f5450do.f10244import = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f5450do.f10244import = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f5450do.f10244import = true;
    }
}
