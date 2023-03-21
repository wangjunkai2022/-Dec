package com.tencent.bugly.proguard;

import java.util.Locale;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static String f12111a = "CrashReport";
    public static boolean b = false;
    public static String c = "CrashReportInfo";

    public static boolean a(int i, String str, Object... objArr) {
        if (b) {
            if (str != null && objArr != null && objArr.length != 0) {
                String.format(Locale.US, str, objArr);
            }
            return i == 0 || i == 1 || i == 2 || i == 3 || i == 5;
        }
        return false;
    }

    public static boolean b(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean c(String str, Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean d(String str, Object... objArr) {
        return a(2, str, objArr);
    }

    public static boolean e(String str, Object... objArr) {
        return a(3, str, objArr);
    }

    public static boolean b(Class cls, String str, Object... objArr) {
        return a(1, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean a(String str, Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean a(Class cls, String str, Object... objArr) {
        return a(0, String.format(Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean b(Throwable th) {
        if (b) {
            return a(3, ab.a(th), new Object[0]);
        }
        return false;
    }

    public static boolean a(Throwable th) {
        if (b) {
            return a(2, ab.a(th), new Object[0]);
        }
        return false;
    }
}
