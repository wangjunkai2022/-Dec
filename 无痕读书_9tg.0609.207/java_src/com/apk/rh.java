package com.apk;

import android.content.Context;
import java.util.HashMap;
/* compiled from: FancyUtils.java */
/* loaded from: classes8.dex */
public class rh {
    static {
        new HashMap();
    }

    /* renamed from: do  reason: not valid java name */
    public static int m2266do(Context context, float f) {
        return Math.round(f / context.getResources().getDisplayMetrics().scaledDensity);
    }

    /* renamed from: if  reason: not valid java name */
    public static int m2267if(Context context, float f) {
        return Math.round(f * context.getResources().getDisplayMetrics().scaledDensity);
    }
}
