package com.apk;

import android.content.Context;
import android.widget.Scroller;
/* compiled from: BannerScroller.java */
/* loaded from: classes7.dex */
public class ac0 extends Scroller {

    /* renamed from: do  reason: not valid java name */
    public int f80do;

    public ac0(Context context) {
        super(context);
        this.f80do = 800;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, this.f80do);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, this.f80do);
    }
}
