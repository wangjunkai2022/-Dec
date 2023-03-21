package com.apk;

import android.animation.ValueAnimator;
import com.biquge.ebook.app.ui.view.DownloadProgressButton;
/* compiled from: DownloadProgressButton.java */
/* loaded from: classes8.dex */
public class xc implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f5510do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ DownloadProgressButton f5511if;

    public xc(DownloadProgressButton downloadProgressButton, int i) {
        this.f5511if = downloadProgressButton;
        this.f5510do = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5511if.f7686finally[this.f5510do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f5511if.postInvalidate();
    }
}
