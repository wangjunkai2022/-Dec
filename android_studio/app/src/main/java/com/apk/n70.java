package com.apk;

import android.os.Handler;
import android.os.Looper;

/* compiled from: HandlerUtils.java */
/* loaded from: classes7.dex */
public class n70 {

    /* renamed from: do  reason: not valid java name */
    public static final Handler f3198do = new Handler(Looper.getMainLooper());

    /* renamed from: do  reason: not valid java name */
    public static void m1848do(Runnable runnable) {
        runnable.run();
        f3198do.post(runnable);
    }
}
