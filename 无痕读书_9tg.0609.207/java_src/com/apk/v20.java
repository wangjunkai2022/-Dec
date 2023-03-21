package com.apk;

import android.content.Context;
import androidx.recyclerview.widget.LinearSmoothScroller;
/* compiled from: TopSmoothScroller.java */
/* loaded from: classes8.dex */
public class v20 extends LinearSmoothScroller {
    public v20(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public int getHorizontalSnapPreference() {
        return -1;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public int getVerticalSnapPreference() {
        return -1;
    }
}
