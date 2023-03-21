package com.apk;

import android.animation.ValueAnimator;
import com.biquge.ebook.app.ui.view.DownloadProgressButton;
/* compiled from: DownloadProgressButton.java */
/* loaded from: classes8.dex */
public class vc implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ DownloadProgressButton f5063do;

    public vc(DownloadProgressButton downloadProgressButton) {
        this.f5063do = downloadProgressButton;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        DownloadProgressButton downloadProgressButton = this.f5063do;
        float f = downloadProgressButton.f7678catch;
        float f2 = downloadProgressButton.f7676break;
        downloadProgressButton.f7676break = ((f - f2) * floatValue) + f2;
        downloadProgressButton.invalidate();
    }
}
