package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
/* compiled from: HeaderHelper.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static Context f12315a;
    public String b;
    public String c;

    /* compiled from: HeaderHelper.java */
    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0194a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f12316a = new a();
    }

    public static a a(Context context) {
        if (f12315a == null && context != null) {
            f12315a = context.getApplicationContext();
        }
        return C0194a.f12316a;
    }

    private void e(String str) {
        try {
            String replaceAll = str.replaceAll("&=", " ").replaceAll("&&", " ").replaceAll("==", "/");
            this.b = replaceAll + "/Android/" + Build.DISPLAY + "/" + Build.MODEL + "/" + Build.VERSION.RELEASE + " " + HelperUtils.getUmengMD5(UMUtils.getAppkey(f12315a));
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f12315a, th);
        }
    }

    private void f(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] split = str2.split("&=");
            StringBuilder sb = new StringBuilder();
            sb.append(ak.aP);
            for (String str3 : split) {
                if (!TextUtils.isEmpty(str3)) {
                    String substring = str3.substring(0, 2);
                    if (substring.endsWith("=")) {
                        substring = substring.replace("=", "");
                    }
                    sb.append(substring);
                }
            }
            this.c = sb.toString();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f12315a, th);
        }
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ak.aH);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ak.aD);
    }

    public void d(String str) {
        String substring = str.substring(0, str.indexOf(95));
        f(substring);
        e(substring);
    }

    public a() {
        this.b = null;
        this.c = null;
    }

    public String b() {
        return this.b;
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("a");
    }

    public String a() {
        return this.c;
    }
}
