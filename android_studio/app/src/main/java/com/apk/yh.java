package com.apk;

import android.view.animation.Animation;
import android.widget.TextView;
import com.biquge.ebook.app.widget.marqueeview.MarqueeView;

/* compiled from: MarqueeView.java */
/* loaded from: classes8.dex */
public class yh implements Animation.AnimationListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ MarqueeView f5948do;

    public yh(MarqueeView marqueeView) {
        this.f5948do = marqueeView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        MarqueeView marqueeView = this.f5948do;
        int i = marqueeView.f8381break + 1;
        marqueeView.f8381break = i;
        if (i >= marqueeView.f8383catch.size()) {
            this.f5948do.f8381break = 0;
        }
        MarqueeView marqueeView2 = this.f5948do;
        TextView m3549if = marqueeView2.m3549if(marqueeView2.f8383catch.get(marqueeView2.f8381break));
        if (m3549if.getParent() == null) {
            this.f5948do.addView(m3549if);
        }
        this.f5948do.f8385const = false;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        if (this.f5948do.f8385const) {
            animation.cancel();
        }
        this.f5948do.f8385const = true;
    }
}
