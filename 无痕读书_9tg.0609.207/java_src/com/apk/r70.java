package com.apk;

import android.content.Context;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrScreenUtils.java */
/* loaded from: classes7.dex */
public class r70 {
    /* renamed from: do  reason: not valid java name */
    public static int m2246do() {
        return getContext().getResources().getDisplayMetrics().widthPixels;
    }

    /* renamed from: for  reason: not valid java name */
    public static int m2247for(float f) {
        int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return (int) ((i != 0 ? f / getContext().getResources().getDisplayMetrics().density : 0.0f) + 0.5f);
    }

    public static Context getContext() {
        return TrAdSdk.getApp();
    }

    /* renamed from: if  reason: not valid java name */
    public static int m2248if(float f) {
        int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return (int) ((i != 0 ? getContext().getResources().getDisplayMetrics().density * f : 0.0f) + 0.5f);
    }
}
