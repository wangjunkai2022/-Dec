package com.umeng.commonsdk.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import androidx.appcompat.widget.ActivityChooserView;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.internal.utils.a;
import com.umeng.commonsdk.internal.utils.c;
import com.umeng.commonsdk.internal.utils.i;
import com.umeng.commonsdk.internal.utils.j;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMInternalManager.java */
/* loaded from: classes7.dex */
public class d {
    public static void a(Context context) {
        try {
            ULog.i("walle", "[internal] workEvent send envelope");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ak.aM, a.e);
            JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, d(context), UMServerURL.PATH_ANALYTICS, ak.aC, a.e);
            if (buildEnvelopeWithExtHeader == null || buildEnvelopeWithExtHeader.has("exception")) {
                return;
            }
            ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
        } catch (Exception e) {
            UMCrashManager.reportCrash(context, e);
        }
    }

    public static void b(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            j(context);
        }
    }

    public static void c(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context == null || !UMEnvelopeBuild.getTransmissionSendFlag()) {
            return;
        }
        j(context);
    }

    public static JSONObject d(Context context) {
        JSONArray h;
        JSONArray k;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.I) && (k = k(applicationContext)) != null && k.length() > 0) {
                    jSONObject2.put("rs", k);
                }
            } catch (Exception e) {
                UMCrashManager.reportCrash(applicationContext, e);
            }
            try {
                JSONArray l = l(applicationContext);
                if (l != null && l.length() > 0) {
                    jSONObject2.put("by", l);
                }
            } catch (Exception e2) {
                UMCrashManager.reportCrash(applicationContext, e2);
            }
            try {
                a(applicationContext, jSONObject2);
            } catch (Exception e3) {
                UMCrashManager.reportCrash(applicationContext, e3);
            }
            try {
                b(applicationContext, jSONObject2);
            } catch (Exception e4) {
                UMCrashManager.reportCrash(applicationContext, e4);
            }
            try {
                JSONObject a2 = a();
                if (a2 != null && a2.length() > 0) {
                    jSONObject2.put("build", a2);
                }
            } catch (Exception e5) {
                UMCrashManager.reportCrash(applicationContext, e5);
            }
            try {
                JSONObject e6 = e(applicationContext);
                if (e6 != null && e6.length() > 0) {
                    jSONObject2.put("scr", e6);
                }
            } catch (Exception e7) {
                UMCrashManager.reportCrash(applicationContext, e7);
            }
            try {
                JSONObject f = f(applicationContext);
                if (f != null && f.length() > 0) {
                    jSONObject2.put("sinfo", f);
                }
            } catch (Exception e8) {
                UMCrashManager.reportCrash(applicationContext, e8);
            }
            try {
                JSONArray g = g(applicationContext);
                if (g != null && g.length() > 0) {
                    jSONObject2.put("input", g);
                }
            } catch (Exception e9) {
                UMCrashManager.reportCrash(applicationContext, e9);
            }
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.af) && (h = h(applicationContext)) != null && h.length() > 0) {
                    jSONObject2.put("appls", h);
                }
            } catch (Exception e10) {
                UMCrashManager.reportCrash(applicationContext, e10);
            }
            try {
                JSONObject i = i(applicationContext);
                if (i != null && i.length() > 0) {
                    jSONObject2.put("mem", i);
                }
            } catch (Exception e11) {
                UMCrashManager.reportCrash(applicationContext, e11);
            }
            try {
                JSONObject b = b();
                if (b != null && b.length() > 0) {
                    jSONObject2.put(ak.w, b);
                }
            } catch (Exception unused) {
            }
            try {
                jSONObject.put(ak.au, jSONObject2);
            } catch (JSONException e12) {
                UMCrashManager.reportCrash(applicationContext, e12);
            }
        }
        return jSONObject;
    }

    public static JSONObject e(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", com.umeng.commonsdk.internal.utils.a.c(context));
                jSONObject.put("a_nav_h", com.umeng.commonsdk.internal.utils.a.d(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (Exception e) {
                UMCrashManager.reportCrash(context, e);
            }
        }
        return jSONObject;
    }

    public static JSONObject f(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", com.umeng.commonsdk.internal.utils.a.a(applicationContext, packageName));
                jSONObject.put("a_alut", com.umeng.commonsdk.internal.utils.a.b(applicationContext, packageName));
                jSONObject.put("a_c", com.umeng.commonsdk.internal.utils.a.c(applicationContext, packageName));
                jSONObject.put("a_uid", com.umeng.commonsdk.internal.utils.a.d(applicationContext, packageName));
                if (com.umeng.commonsdk.internal.utils.a.a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("tf", com.umeng.commonsdk.internal.utils.a.b());
                jSONObject.put("s_fs", com.umeng.commonsdk.internal.utils.a.a(applicationContext));
                jSONObject.put("a_meid", DeviceConfig.getMeid(applicationContext));
                jSONObject.put("a_imsi", DeviceConfig.getImsi(applicationContext));
                jSONObject.put("st", com.umeng.commonsdk.internal.utils.a.c());
                String simICCID = DeviceConfig.getSimICCID(applicationContext);
                if (!TextUtils.isEmpty(simICCID)) {
                    try {
                        jSONObject.put("a_iccid", simICCID);
                    } catch (Exception unused) {
                    }
                }
                String secondSimIMEi = DeviceConfig.getSecondSimIMEi(applicationContext);
                if (!TextUtils.isEmpty(secondSimIMEi)) {
                    try {
                        jSONObject.put("a_simei", secondSimIMEi);
                    } catch (Exception unused2) {
                    }
                }
                jSONObject.put("hn", com.umeng.commonsdk.internal.utils.a.d());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e) {
                UMCrashManager.reportCrash(applicationContext, e);
            }
        }
        return jSONObject;
    }

    public static JSONArray g(Context context) {
        Context applicationContext;
        List<InputMethodInfo> f;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (f = com.umeng.commonsdk.internal.utils.a.f((applicationContext = context.getApplicationContext()))) != null) {
            for (InputMethodInfo inputMethodInfo : f) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_id", inputMethodInfo.getId());
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(applicationContext, th);
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray h(Context context) {
        Context applicationContext;
        List<a.C0192a> g;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (g = com.umeng.commonsdk.internal.utils.a.g((applicationContext = context.getApplicationContext()))) != null && !g.isEmpty()) {
            for (a.C0192a c0192a : g) {
                if (c0192a != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", c0192a.f12272a);
                        jSONObject.put("a_la", c0192a.b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e) {
                        UMCrashManager.reportCrash(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject i(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo h;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (h = com.umeng.commonsdk.internal.utils.a.h((applicationContext = context.getApplicationContext()))) != null) {
            try {
                jSONObject.put(ak.aH, h.totalMem);
                jSONObject.put("f", h.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e) {
                UMCrashManager.reportCrash(applicationContext, e);
            }
        }
        return jSONObject;
    }

    public static void j(Context context) {
        try {
            if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                UMWorkDispatch.sendEvent(context, 32769, b.a(context).a(), null);
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 冷启动：5秒后触发2号数据仓遗留信封检查动作。");
            UMWorkDispatch.sendEvent(context, a.v, b.a(context).a(), null, 5000L);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public static JSONArray k(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray = null;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
            if (activityManager == null || (runningServices = activityManager.getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) == null || runningServices.isEmpty()) {
                return null;
            }
            for (int i = 0; i < runningServices.size(); i++) {
                if (runningServices.get(i) != null && runningServices.get(i).service != null && runningServices.get(i).service.getClassName() != null && runningServices.get(i).service.getPackageName() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("sn", runningServices.get(i).service.getClassName().toString());
                        jSONObject.put("pn", runningServices.get(i).service.getPackageName().toString());
                        if (jSONArray == null) {
                            jSONArray = new JSONArray();
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
            }
            if (jSONArray != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ts", System.currentTimeMillis());
                    jSONObject2.put("ls", jSONArray);
                } catch (JSONException unused2) {
                }
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sers", jSONObject2);
                } catch (JSONException unused3) {
                }
                JSONArray jSONArray2 = new JSONArray();
                try {
                    jSONArray2.put(jSONObject3);
                    return jSONArray2;
                } catch (Throwable th) {
                    th = th;
                    jSONArray = jSONArray2;
                    UMCrashManager.reportCrash(context, th);
                    return jSONArray;
                }
            }
            return jSONArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static JSONArray l(Context context) {
        JSONArray jSONArray = new JSONArray();
        String a2 = i.a(context);
        if (!TextUtils.isEmpty(a2)) {
            try {
                jSONArray.put(new JSONObject(a2));
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    public static JSONObject b() {
        try {
            c.a a2 = com.umeng.commonsdk.internal.utils.c.a();
            if (a2 != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("pro", a2.f12276a);
                    jSONObject.put("pla", a2.b);
                    jSONObject.put("cpus", a2.c);
                    jSONObject.put("fea", a2.d);
                    jSONObject.put("imp", a2.e);
                    jSONObject.put("arc", a2.f);
                    jSONObject.put("var", a2.g);
                    jSONObject.put("par", a2.h);
                    jSONObject.put("rev", a2.i);
                    jSONObject.put("har", a2.j);
                    jSONObject.put("rev", a2.k);
                    jSONObject.put("ser", a2.l);
                    jSONObject.put("cur_cpu", com.umeng.commonsdk.internal.utils.c.d());
                    jSONObject.put("max_cpu", com.umeng.commonsdk.internal.utils.c.b());
                    jSONObject.put("min_cpu", com.umeng.commonsdk.internal.utils.c.c());
                    jSONObject.put("ts", System.currentTimeMillis());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static void a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
        a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    public static void a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (z) {
                jSONObject.put(str, 1);
            } else {
                jSONObject.put(str, 0);
            }
        } catch (Exception unused) {
        }
    }

    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_pr", Build.PRODUCT);
            jSONObject.put("a_bl", Build.BOOTLOADER);
            jSONObject.put("a_rv", Build.getRadioVersion());
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < Build.SUPPORTED_32_BIT_ABIS.length; i++) {
                jSONArray.put(Build.SUPPORTED_32_BIT_ABIS[i]);
            }
            if (jSONArray.length() > 0) {
                jSONObject.put("a_s32", jSONArray);
            }
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < Build.SUPPORTED_64_BIT_ABIS.length; i2++) {
                jSONArray2.put(Build.SUPPORTED_64_BIT_ABIS[i2]);
            }
            if (jSONArray2.length() > 0) {
                jSONObject.put("a_s64", jSONArray2);
            }
            JSONArray jSONArray3 = new JSONArray();
            for (int i3 = 0; i3 < Build.SUPPORTED_ABIS.length; i3++) {
                jSONArray3.put(Build.SUPPORTED_ABIS[i3]);
            }
            if (jSONArray3.length() > 0) {
                jSONObject.put("a_sa", jSONArray3);
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", "unknown");
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String a2 = j.a(context);
            if (TextUtils.isEmpty(a2)) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(a2);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (jSONObject2.has(j.d)) {
                    jSONObject.put(j.d, jSONObject2.opt(j.d));
                }
                if (jSONObject2.has(j.c)) {
                    jSONObject.put(j.c, jSONObject2.opt(j.c));
                }
                if (jSONObject2.has(j.b)) {
                    jSONObject.put(j.b, jSONObject2.opt(j.b));
                }
            } catch (Exception unused) {
            }
        }
    }
}
