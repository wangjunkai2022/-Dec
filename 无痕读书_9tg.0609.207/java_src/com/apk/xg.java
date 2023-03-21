package com.apk;

import android.animation.ValueAnimator;
import com.biquge.ebook.app.widget.ScrollPaintView;
/* compiled from: ScrollPaintView.java */
/* loaded from: classes8.dex */
public class xg implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ScrollPaintView f5540do;

    public xg(ScrollPaintView scrollPaintView) {
        this.f5540do = scrollPaintView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f5540do.setScroll(intValue);
        ScrollPaintView scrollPaintView = this.f5540do;
        scrollPaintView.f8139this = intValue;
        scrollPaintView.f8124default = false;
    }
}
