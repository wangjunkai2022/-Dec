package com.qq.e.comm.managers.plugin;

import java.lang.reflect.Method;
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static Method f11535a;
    public static boolean b;

    public static void a(Throwable th, String str) {
        try {
            Exception exc = new Exception("插件错误：" + str, th);
            if (b) {
                return;
            }
            if (f11535a == null) {
                Method declaredMethod = Class.forName("com.tencent.bugly.crashreport.CrashReport").getDeclaredMethod("postCatchedException", Throwable.class);
                f11535a = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            f11535a.invoke(null, exc);
        } catch (Throwable unused) {
            b = true;
        }
    }
}
