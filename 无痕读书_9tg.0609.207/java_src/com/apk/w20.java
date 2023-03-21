package com.apk;

import android.animation.ValueAnimator;
import com.manhua.ui.widget.ZoomRecyclerView;
/* compiled from: ZoomRecyclerView.java */
/* loaded from: classes8.dex */
public class w20 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ZoomRecyclerView f5230do;

    public w20(ZoomRecyclerView zoomRecyclerView) {
        this.f5230do = zoomRecyclerView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5230do.f10241final = ((Float) valueAnimator.getAnimatedValue("scale")).floatValue();
        ZoomRecyclerView zoomRecyclerView = this.f5230do;
        float floatValue = ((Float) valueAnimator.getAnimatedValue("tranX")).floatValue();
        float floatValue2 = ((Float) valueAnimator.getAnimatedValue("tranY")).floatValue();
        zoomRecyclerView.f10237class = floatValue;
        zoomRecyclerView.f10238const = floatValue2;
        this.f5230do.invalidate();
    }
}
