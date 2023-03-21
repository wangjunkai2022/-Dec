package com.bytedance.pangle.util;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes8.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ boolean f11390a = !k.class.desiredAssertionStatus();
    public static final Object b = new Object();
    public static Handler c = null;

    public static Handler a() {
        Handler handler;
        synchronized (b) {
            if (c == null) {
                c = new Handler(Looper.getMainLooper());
            }
            handler = c;
        }
        return handler;
    }

    public static void a(Runnable runnable) {
        if (a().getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            a().post(runnable);
        }
    }
}
