package com.bytedance.pangle.util;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes8.dex */
public final class h {
    public static boolean a() {
        return true;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT <= 23;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static boolean d() {
        int i = Build.VERSION.SDK_INT;
        return i >= 26 && i <= 27;
    }

    public static boolean e() {
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            return i == 27 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean f() {
        return TextUtils.equals(Build.BRAND.toLowerCase(), "huawei");
    }
}
