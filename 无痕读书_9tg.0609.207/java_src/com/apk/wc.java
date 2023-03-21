package com.apk;

import android.animation.ValueAnimator;
import com.biquge.ebook.app.ui.view.DownloadProgressButton;
/* compiled from: DownloadProgressButton.java */
/* loaded from: classes8.dex */
public class wc implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f5255do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ DownloadProgressButton f5256if;

    public wc(DownloadProgressButton downloadProgressButton, int i) {
        this.f5256if = downloadProgressButton;
        this.f5255do = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5256if.f7684extends[this.f5255do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f5256if.postInvalidate();
    }
}
