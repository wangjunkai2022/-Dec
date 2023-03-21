package com.apk;

import android.animation.ValueAnimator;
import com.lxj.xpopup.core.ImageViewerPopupView;

/* compiled from: ImageViewerPopupView.java */
/* loaded from: classes8.dex */
public class jv implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f2428do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ImageViewerPopupView f2429for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f2430if;

    public jv(ImageViewerPopupView imageViewerPopupView, int i, int i2) {
        this.f2429for = imageViewerPopupView;
        this.f2428do = i;
        this.f2430if = i2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        ImageViewerPopupView imageViewerPopupView = this.f2429for;
        imageViewerPopupView.f9514do.setBackgroundColor(((Integer) imageViewerPopupView.f9510case.evaluate(valueAnimator.getAnimatedFraction(), Integer.valueOf(this.f2428do), Integer.valueOf(this.f2430if))).intValue());
    }
}
