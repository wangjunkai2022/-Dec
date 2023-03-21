package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Looper;

/* compiled from: OpenDeviceId.java */
/* loaded from: classes7.dex */
public class aa {

    /* renamed from: a  reason: collision with root package name */
    public static z f12131a;
    public static boolean b;

    public static synchronized String a(Context context) {
        synchronized (aa.class) {
            try {
                if (context != null) {
                    if (Looper.myLooper() != Looper.getMainLooper()) {
                        b(context);
                        if (f12131a != null) {
                            try {
                                return f12131a.a(context);
                            } catch (Exception unused) {
                            }
                        }
                        return null;
                    }
                    throw new IllegalStateException("Cannot be called from the main thread");
                }
                throw new RuntimeException("Context is null");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void b(Context context) {
        if (f12131a != null || b) {
            return;
        }
        synchronized (aa.class) {
            if (f12131a == null && !b) {
                f12131a = ac.a(context);
                b = true;
            }
        }
    }
}
