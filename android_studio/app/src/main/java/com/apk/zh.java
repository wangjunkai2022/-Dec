package com.apk;

import com.biquge.ebook.app.widget.marqueeview.ShelfMarqueeView;

/* compiled from: ShelfMarqueeView.java */
/* loaded from: classes8.dex */
public class zh implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f6195do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ShelfMarqueeView f6196for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f6197if;

    public zh(ShelfMarqueeView shelfMarqueeView, int i, int i2) {
        this.f6196for = shelfMarqueeView;
        this.f6195do = i;
        this.f6197if = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        ShelfMarqueeView.m3551do(this.f6196for, this.f6195do, this.f6197if);
    }
}
