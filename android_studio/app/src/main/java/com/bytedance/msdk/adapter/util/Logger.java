package com.bytedance.msdk.adapter.util;

import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l;

/* loaded from: classes8.dex */
public class Logger {

    /* renamed from: do  reason: not valid java name */
    public static boolean f8748do = false;

    /* renamed from: if  reason: not valid java name */
    public static int f8749if = 4;

    public static void d(String str) {
        if (isDebug()) {
            d("Logger", str);
        }
    }

    public static void d_(String str) {
        if (a.f().C()) {
            d(str);
        }
    }

    public static void e(String str) {
        if (isDebug()) {
            e("Logger", str);
        }
    }

    public static int getLogLevel() {
        return f8749if;
    }

    public static void i(String str) {
        if (isDebug()) {
            i("Logger", str);
        }
    }

    public static void iEventLog(String str, String str2) {
    }

    public static boolean isDebug() {
        return l.f10998a || f8748do;
    }

    public static void openDebugMode() {
        f8748do = true;
        setLogLevel(3);
    }

    public static void setLogLevel(int i) {
        f8749if = i;
    }

    public static void st(String str, int i) {
        try {
            throw new Exception();
        } catch (Exception e) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 1; i2 < Math.min(i, stackTrace.length); i2++) {
                if (i2 > 1) {
                    sb.append("\n");
                }
                String className = stackTrace[i2].getClassName();
                int lastIndexOf = className.lastIndexOf(46);
                if (lastIndexOf >= 0) {
                    className = className.substring(lastIndexOf + 1);
                }
                sb.append(className);
                sb.append(".");
                sb.append(stackTrace[i2].getMethodName());
            }
            v(str, sb.toString());
        }
    }

    public static void v(String str) {
        v("Logger", str);
    }

    public static void w(String str) {
        if (isDebug()) {
            w("Logger", str);
        }
    }

    public static void v(String str, String str2) {
        if (isDebug() && str2 != null) {
            int i = f8749if;
        }
    }

    public static void d(String str, String str2) {
        if (isDebug() && str2 != null) {
            int i = f8749if;
        }
    }

    public static void d_(String str, String str2) {
        if (a.f().C()) {
            d(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (isDebug() && str2 != null) {
            int i = f8749if;
        }
    }

    public static void i(String str, String str2) {
        if (isDebug() && str2 != null) {
            int i = f8749if;
        }
    }

    public static void w(String str, String str2) {
        if (isDebug() && str2 != null) {
            int i = f8749if;
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (isDebug()) {
            if (str2 == null && th == null) {
                return;
            }
            int i = f8749if;
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (isDebug()) {
            if (str2 == null && th == null) {
                return;
            }
            int i = f8749if;
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (isDebug()) {
            if (str2 == null && th == null) {
                return;
            }
            int i = f8749if;
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (isDebug()) {
            if (str2 == null && th == null) {
                return;
            }
            int i = f8749if;
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (isDebug()) {
            if (str2 == null && th == null) {
                return;
            }
            int i = f8749if;
        }
    }
}
