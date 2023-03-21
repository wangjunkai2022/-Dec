package com.bytedance.sdk.openadsdk.api;
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11411a = false;
    public static int b = 4;

    public static void a(int i) {
        b = i;
    }

    public static void b(String str, String str2) {
        if (f11411a && str2 != null) {
            int i = b;
        }
    }

    public static void c(String str, String str2) {
        if (f11411a && str2 != null) {
            int i = b;
        }
    }

    public static void d(String str, String str2) {
        if (f11411a && str2 != null) {
            int i = b;
        }
    }

    public static void e(String str, String str2) {
        if (f11411a && str2 != null) {
            int i = b;
        }
    }

    public static void a() {
        f11411a = true;
        a(3);
    }

    public static void b(String str, String str2, Throwable th) {
        if (f11411a) {
            if (str2 == null && th == null) {
                return;
            }
            int i = b;
        }
    }

    public static void a(String str, String str2) {
        if (f11411a && str2 != null) {
            int i = b;
        }
    }

    public static void a(String str) {
        if (f11411a) {
            d("TTLogger", str);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f11411a) {
            if (str2 == null && th == null) {
                return;
            }
            int i = b;
        }
    }

    public static void a(String str, Object... objArr) {
        if (f11411a && objArr != null && b <= 5) {
            a(objArr);
        }
    }

    public static String a(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb.append(obj.toString());
            } else {
                sb.append(" null ");
            }
            sb.append(" ");
        }
        return sb.toString();
    }
}
