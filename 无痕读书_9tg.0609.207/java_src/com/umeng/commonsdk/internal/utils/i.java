package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
/* compiled from: UMInternalUtils.java */
/* loaded from: classes7.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12279a = "um_pri";
    public static final String b = "um_common_strength";
    public static final String c = "um_common_battery";

    public static String a(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f12279a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(c, null);
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f12279a, 0)) == null) {
            return;
        }
        sharedPreferences.edit().putString(c, str).commit();
    }
}
