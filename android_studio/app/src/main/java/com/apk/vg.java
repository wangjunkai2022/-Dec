package com.apk;

import android.animation.ValueAnimator;
import com.biquge.ebook.app.widget.ScrollPaintView;

/* compiled from: ScrollPaintView.java */
/* loaded from: classes8.dex */
public class vg implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ScrollPaintView f5073do;

    public vg(ScrollPaintView scrollPaintView) {
        this.f5073do = scrollPaintView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f5073do.setWidth(intValue);
        ScrollPaintView scrollPaintView = this.f5073do;
        scrollPaintView.f8121catch = intValue;
        scrollPaintView.f8124default = false;
    }
}
