package com.umeng.umzid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.g;
import com.umeng.commonsdk.statistics.idtracking.h;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;

/* loaded from: classes7.dex */
public class c {
    public static String a(Context context) {
        SharedPreferences a2;
        if (context == null || (a2 = a.a(context)) == null) {
            return null;
        }
        return a2.getString("aaid", null);
    }

    public static String a(String str) {
        try {
            return new String(Base64.decode(str.getBytes("UTF-8"), 2));
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences a2;
        SharedPreferences.Editor edit;
        String b = b(str);
        if (context == null || b == null || TextUtils.isEmpty(b) || (a2 = a.a(context)) == null || (edit = a2.edit()) == null) {
            return;
        }
        edit.putString(g.f12310a, b).commit();
    }

    public static String b(Context context) {
        try {
            Class<?> cls = Class.forName(DeviceConfig.LOG_TAG);
            Method declaredMethod = cls.getDeclaredMethod("getMac", Context.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(cls, context);
                if (invoke != null && (invoke instanceof String)) {
                    return (String) invoke;
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String b(String str) {
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 2);
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static void b(Context context, String str) {
        SharedPreferences a2;
        SharedPreferences.Editor edit;
        String b = b(str);
        if (context == null || b == null || TextUtils.isEmpty(b) || (a2 = a.a(context)) == null || (edit = a2.edit()) == null) {
            return;
        }
        edit.putString(h.d, b).commit();
    }

    public static String c(Context context) {
        try {
            Class<?> cls = Class.forName(DeviceConfig.LOG_TAG);
            Method declaredMethod = cls.getDeclaredMethod("getOaid", Context.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(cls, context);
                if (invoke != null && (invoke instanceof String)) {
                    return (String) invoke;
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static void c(Context context, String str) {
        SharedPreferences a2;
        SharedPreferences.Editor edit;
        if (context == null || TextUtils.isEmpty(str) || (a2 = a.a(context)) == null || (edit = a2.edit()) == null) {
            return;
        }
        edit.putString("resetToken", str).commit();
    }

    public static boolean c(String str) {
        return !TextUtils.isEmpty(str) && str.equals(b(a(str)));
    }

    public static void d(Context context, String str) {
        SharedPreferences a2;
        SharedPreferences.Editor edit;
        if (context == null || TextUtils.isEmpty(str) || (a2 = a.a(context)) == null || (edit = a2.edit()) == null) {
            return;
        }
        edit.putString("uabc", str).commit();
    }

    public static void e(Context context, String str) {
        SharedPreferences a2;
        SharedPreferences.Editor edit;
        if (context == null || str == null || TextUtils.isEmpty(str) || (a2 = a.a(context)) == null || (edit = a2.edit()) == null) {
            return;
        }
        edit.putString("aaid", str).commit();
    }

    public static void f(Context context, String str) {
        SharedPreferences a2;
        SharedPreferences.Editor edit;
        if (context == null || str == null || TextUtils.isEmpty(str) || (a2 = a.a(context)) == null || (edit = a2.edit()) == null) {
            return;
        }
        edit.putString("zdata", str).commit();
    }
}
