package com.apk;

import com.biquge.ebook.app.widget.marqueeview.MarqueeView;
/* compiled from: MarqueeView.java */
/* loaded from: classes8.dex */
public class xh implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f5599do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ MarqueeView f5600for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f5601if;

    public xh(MarqueeView marqueeView, int i, int i2) {
        this.f5600for = marqueeView;
        this.f5599do = i;
        this.f5601if = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        MarqueeView.m3548do(this.f5600for, this.f5599do, this.f5601if);
    }
}
