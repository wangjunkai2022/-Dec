package com.apk;

import android.view.View;

/* compiled from: ScrollBar.java */
/* loaded from: classes8.dex */
public interface h40 {

    /* compiled from: ScrollBar.java */
    /* renamed from: com.apk.h40$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        TOP,
        TOP_FLOAT,
        BOTTOM,
        BOTTOM_FLOAT,
        CENTENT,
        CENTENT_BACKGROUND
    }

    /* renamed from: do */
    void mo748do();

    /* renamed from: for */
    int mo450for(int i);

    Cdo getGravity();

    /* renamed from: if */
    View mo749if();

    /* renamed from: new */
    int mo451new(int i);

    void onPageScrolled(int i, float f, int i2);
}
