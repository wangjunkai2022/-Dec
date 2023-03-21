package com.bytedance.sdk.openadsdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import java.lang.reflect.Method;
/* loaded from: classes8.dex */
public class TTAppContextHolder {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    public static volatile Context f11404a;

    /* loaded from: classes8.dex */
    public static class a {
        @SuppressLint({"StaticFieldLeak"})

        /* renamed from: a  reason: collision with root package name */
        public static volatile Application f11405a;

        static {
            try {
                Object b = b();
                f11405a = (Application) b.getClass().getMethod("getApplication", new Class[0]).invoke(b, new Object[0]);
                com.bytedance.sdk.openadsdk.api.a.d("MyApplication", "application get success");
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.a.b("MyApplication", "application get failed", th);
            }
        }

        public static Application a() {
            return f11405a;
        }

        public static Object b() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.a.b("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static Context getContext() {
        if (f11404a == null) {
            setContext(null);
        }
        return f11404a;
    }

    public static synchronized void setContext(Context context) {
        synchronized (TTAppContextHolder.class) {
            if (f11404a == null) {
                if (context != null) {
                    f11404a = context.getApplicationContext();
                } else if (a.a() != null) {
                    try {
                        f11404a = a.a();
                        if (f11404a != null) {
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }
}
