package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.d;
import com.umeng.analytics.pro.i;
import com.umeng.analytics.pro.j;
import com.umeng.analytics.pro.k;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.pro.m;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.p;
import com.umeng.analytics.pro.s;
import com.umeng.analytics.pro.t;
import com.umeng.analytics.pro.u;
import com.umeng.analytics.pro.v;
import com.umeng.analytics.pro.y;
import com.umeng.common.ISysListener;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InternalAgent.java */
/* loaded from: classes7.dex */
public class b implements n, t {
    public static final String A = "umsp_2";
    public static final String B = "umsp_3";
    public static final String C = "umsp_4";
    public static final String D = "umsp_5";

    /* renamed from: a  reason: collision with root package name */
    public static Context f12123a = null;
    public static final String h = "sp_uapp";
    public static final String i = "prepp_uapp";
    public static final int o = 128;
    public static final int p = 256;
    public static String q = "";
    public static String r = "";
    public static final String s = "ekv_bl";
    public static final String t = "ekv_bl_ver";
    public static final String v = "ekv_wl";
    public static final String w = "ekv_wl_ver";
    public static final String z = "umsp_1";
    public ISysListener b;
    public p c;
    public v d;
    public k e;
    public u f;
    public l g;
    public boolean j;
    public volatile JSONObject k;
    public volatile JSONObject l;
    public volatile JSONObject m;
    public boolean n;
    public com.umeng.analytics.filter.a u;
    public com.umeng.analytics.filter.b x;
    public m y;

    /* compiled from: InternalAgent.java */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final b f12124a = new b();
    }

    static {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            f12123a = appContext.getApplicationContext();
        }
    }

    public static b a() {
        return a.f12124a;
    }

    private void i(Context context) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (this.k == null) {
                this.k = new JSONObject();
            }
            if (this.l == null) {
                this.l = new JSONObject();
            }
            String string = sharedPreferences.getString(i, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.m = new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            if (this.m == null) {
                this.m = new JSONObject();
            }
        } catch (Throwable unused2) {
        }
    }

    public JSONObject b() {
        return this.k;
    }

    public JSONObject c() {
        return this.m;
    }

    public JSONObject d() {
        return this.l;
    }

    public void e() {
        this.l = null;
    }

    public String f() {
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("getOnResumedActivityName can not be called in child process");
            return null;
        }
        return q;
    }

    public String g() {
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("getOnPausedActivityName can not be called in child process");
            return null;
        }
        return r;
    }

    public void h() {
        try {
            if (f12123a != null) {
                if (!UMUtils.isMainProgress(f12123a)) {
                    MLog.e("onStartSessionInternal can not be called in child process");
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                UMWorkDispatch.sendEvent(f12123a, o.a.k, CoreProtocol.getInstance(f12123a), Long.valueOf(currentTimeMillis));
                UMWorkDispatch.sendEvent(f12123a, o.a.g, CoreProtocol.getInstance(f12123a), Long.valueOf(currentTimeMillis));
            }
            if (this.b != null) {
                this.b.onAppResume();
            }
        } catch (Throwable unused) {
        }
    }

    public void j() {
        try {
            if (f12123a == null) {
                return;
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onProfileSignOff can not be called in child process");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", currentTimeMillis);
            UMWorkDispatch.sendEvent(f12123a, o.a.f, CoreProtocol.getInstance(f12123a), jSONObject);
            UMWorkDispatch.sendEvent(f12123a, o.a.o, CoreProtocol.getInstance(f12123a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    public synchronized void k() {
        if (f12123a == null) {
            return;
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("unregisterSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (this.k != null) {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f12123a).edit();
            edit.putString(h, this.k.toString());
            edit.commit();
        } else {
            this.k = new JSONObject();
        }
    }

    public synchronized JSONObject l() {
        if (f12123a == null) {
            return null;
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("getSuperPropertiesJSONObject can not be called in child process");
            return null;
        }
        if (this.k == null) {
            this.k = new JSONObject();
        }
        return this.k;
    }

    public synchronized void m() {
        try {
            if (f12123a != null) {
                if (!UMUtils.isMainProgress(f12123a)) {
                    MLog.e("clearSuperPropertiesByCoreProtocol can not be called in child process");
                    return;
                }
                SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f12123a).edit();
                edit.remove(h);
                edit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.n
    public void n() {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onIntoBackground triggered.");
        if (AnalyticsConfig.enable && FieldManager.b()) {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.D)) {
                if (UMWorkDispatch.eventHasExist(o.a.z)) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出时发送策略 被触发！");
                Context context = f12123a;
                UMWorkDispatch.sendEvent(context, o.a.z, CoreProtocol.getInstance(context), null);
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出发送策略: 云控控制字关闭。功能不生效");
        }
    }

    public b() {
        this.c = new p();
        this.d = new v();
        this.e = new k();
        this.f = u.a();
        this.g = null;
        this.j = false;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = false;
        this.u = null;
        this.x = null;
        this.y = null;
        this.c.a(this);
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (this.u == null) {
                com.umeng.analytics.filter.a aVar = new com.umeng.analytics.filter.a("ekv_bl", "ekv_bl_ver");
                this.u = aVar;
                aVar.register(f12123a);
            }
            if (this.x == null) {
                com.umeng.analytics.filter.b bVar = new com.umeng.analytics.filter.b("ekv_wl", "ekv_wl_ver");
                this.x = bVar;
                bVar.register(f12123a);
            }
            if (UMUtils.isMainProgress(f12123a)) {
                if (!this.j) {
                    this.j = true;
                    i(f12123a);
                }
                synchronized (this) {
                    if (!this.n) {
                        l a2 = l.a(context);
                        this.g = a2;
                        if (a2.a()) {
                            this.n = true;
                        }
                        this.y = m.a();
                        try {
                            m.a(context);
                            this.y.a(this);
                        } catch (Throwable unused) {
                        }
                    }
                }
                if (UMConfigure.isDebugLog()) {
                    UMLog.mutlInfo(j.B, 3, "", null, null);
                }
                UMWorkDispatch.registerConnStateObserver(CoreProtocol.getInstance(f12123a));
            }
        } catch (Throwable unused2) {
        }
    }

    public void b(String str) {
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("onPageEnd can not be called in child process");
            return;
        }
        try {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.d.b(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void c(Context context) {
        if (context == null) {
            UMLog.aq(j.p, 0, "\\|");
        } else if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
        } else {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onPause can not be called in child process");
                return;
            }
            if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
                UMLog.aq(j.q, 2, "\\|");
            }
            try {
                if (!this.j || !this.n) {
                    a(context);
                }
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                    this.e.b(context.getClass().getName());
                }
                i();
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e("Exception occurred in Mobclick.onRause(). ", th);
                }
            }
            if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                r = context.getClass().getName();
            }
        }
    }

    public void d(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onKillProcess can not be called in child process");
                return;
            }
            if (this.g != null) {
                this.g.c();
            }
            l.a(context, "onKillProcess");
            if (this.e != null) {
                this.e.b();
            }
            if (this.d != null) {
                this.d.b();
            }
            if (f12123a != null) {
                if (this.f != null) {
                    this.f.c(f12123a, Long.valueOf(System.currentTimeMillis()));
                }
                o.a(f12123a).d();
                v.a(f12123a);
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                    l.c(f12123a);
                }
                PreferenceWrapper.getDefault(f12123a).edit().commit();
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized Object e(Context context, String str) {
        if (context == null) {
            UMLog.aq(j.ai, 0, "\\|");
            return null;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("getSuperProperty can not be called in child process");
            return null;
        } else if (TextUtils.isEmpty(str)) {
            UMLog.aq(j.ag, 0, "\\|");
            return null;
        } else if (!str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
            MLog.e("please check key or value, must be correct!");
            return null;
        } else {
            if (this.k != null) {
                if (this.k.has(str)) {
                    return this.k.opt(str);
                }
            } else {
                this.k = new JSONObject();
            }
            return null;
        }
    }

    public synchronized void f(Context context) {
        if (context == null) {
            UMLog.aq(j.ah, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("clearSuperProperties can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        this.k = new JSONObject();
        UMWorkDispatch.sendEvent(f12123a, o.a.s, CoreProtocol.getInstance(f12123a), null);
    }

    public synchronized void g(Context context) {
        if (context == null) {
            UMLog.aq(j.ap, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("clearPreProperties can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        if (this.m.length() > 0) {
            UMWorkDispatch.sendEvent(f12123a, o.a.w, CoreProtocol.getInstance(f12123a), null);
        }
        this.m = new JSONObject();
    }

    public void b(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onResume");
        } else if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
        } else {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onResume can not be called in child process");
                return;
            }
            if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
                UMLog.aq(j.o, 2, "\\|");
            }
            try {
                if (!this.j || !this.n) {
                    a(context);
                }
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                    this.e.a(context.getClass().getName());
                }
                h();
                if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                    q = context.getClass().getName();
                }
            } catch (Throwable th) {
                MLog.e("Exception occurred in Mobclick.onResume(). ", th);
            }
        }
    }

    public synchronized JSONObject h(Context context) {
        if (context == null) {
            UMLog.aq(j.aq, 0, "\\|");
            return null;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("getPreProperties can not be called in child process");
            return null;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        if (this.m == null) {
            this.m = new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        if (this.m.length() > 0) {
            try {
                jSONObject = new JSONObject(this.m.toString());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public void i() {
        try {
            if (f12123a != null) {
                if (!UMUtils.isMainProgress(f12123a)) {
                    MLog.e("onEndSessionInternal can not be called in child process");
                    return;
                }
                UMWorkDispatch.sendEvent(f12123a, o.a.h, CoreProtocol.getInstance(f12123a), Long.valueOf(System.currentTimeMillis()));
                UMWorkDispatch.sendEvent(f12123a, o.a.d, CoreProtocol.getInstance(f12123a), null);
                UMWorkDispatch.sendEvent(f12123a, 4099, CoreProtocol.getInstance(f12123a), null);
                UMWorkDispatch.sendEvent(f12123a, o.a.i, CoreProtocol.getInstance(f12123a), null);
            }
        } catch (Throwable unused) {
        }
        ISysListener iSysListener = this.b;
        if (iSysListener != null) {
            iSysListener.onAppPause();
        }
    }

    public synchronized void f(Context context, String str) {
        if (context == null) {
            UMLog.aq(j.an, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("unregisterPreProperty can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        if (this.m == null) {
            this.m = new JSONObject();
        }
        if (str != null && str.length() > 0) {
            if (this.m.has(str)) {
                this.m.remove(str);
                UMWorkDispatch.sendEvent(f12123a, o.a.v, CoreProtocol.getInstance(f12123a), this.m.toString());
            } else if (UMConfigure.isDebugLog()) {
                UMLog.aq(j.ao, 0, "\\|");
            }
            return;
        }
        MLog.e("please check propertics, property is null!");
    }

    private boolean c(String str) {
        if (this.u.enabled() && this.u.matchHit(str)) {
            return true;
        }
        if (this.x.enabled()) {
            if (this.x.matchHit(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> white list match! id = " + str);
                return false;
            }
            return true;
        }
        return false;
    }

    public synchronized void d(Context context, String str) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            UMLog.aq(j.ah, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("unregisterSuperProperty can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(j.ag, 0, "\\|");
        } else if (!str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
            MLog.e("please check key or value, must be correct!");
        } else {
            if (this.k == null) {
                this.k = new JSONObject();
            }
            if (this.k.has(str)) {
                this.k.remove(str);
                UMWorkDispatch.sendEvent(f12123a, o.a.t, CoreProtocol.getInstance(f12123a), str);
            }
        }
    }

    public void b(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(j.N, 0, "\\|");
                return;
            }
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onDeepLinkReceived can not be called in child process");
                return;
            }
            if (!this.j || !this.n) {
                a(f12123a);
            }
            if (!TextUtils.isEmpty(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put(d.aE, str);
                a(f12123a, d.aD, (Map<String, Object>) hashMap, -1L, false);
                return;
            }
            UMLog.aq(j.O, 0, "\\|");
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public synchronized String e(Context context) {
        if (context == null) {
            UMLog.aq(j.ai, 0, "\\|");
            return null;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("getSuperProperties can not be called in child process");
            return null;
        } else if (this.k != null) {
            return this.k.toString();
        } else {
            this.k = new JSONObject();
            return null;
        }
    }

    public void c(Context context, String str) {
        if (context == null) {
            UMLog.aq(j.z, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("setSecret can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        AnalyticsConfig.a(f12123a, str);
    }

    public void a(String str) {
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("onPageStart can not be called in child process");
            return;
        }
        try {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.d.a(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(ISysListener iSysListener) {
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("setSysListener can not be called in child process");
        } else {
            this.b = iSysListener;
        }
    }

    public void a(Context context, int i2) {
        if (context == null) {
            MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("setVerticalType can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        AnalyticsConfig.a(f12123a, i2);
    }

    public synchronized void b(Object obj) {
        if (f12123a == null) {
            return;
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("updateNativePrePropertiesByCoreProtocol can not be called in child process");
            return;
        }
        SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f12123a).edit();
        if (obj != null) {
            String str = (String) obj;
            if (edit != null && !TextUtils.isEmpty(str)) {
                edit.putString(i, str).commit();
            }
        } else if (edit != null) {
            edit.remove(i).commit();
        }
    }

    public void a(Context context, String str, HashMap<String, Object> hashMap) {
        if (context == null) {
            return;
        }
        try {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onGKVEvent can not be called in child process");
                return;
            }
            if (!this.j || !this.n) {
                a(f12123a);
            }
            String str2 = "";
            if (this.k == null) {
                this.k = new JSONObject();
            } else {
                str2 = this.k.toString();
            }
            s.a(f12123a).a(str, hashMap, str2);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    private boolean b(String str, Object obj) {
        int i2;
        if (TextUtils.isEmpty(str)) {
            MLog.e("key is " + str + ", please check key, illegal");
            return false;
        }
        try {
            i2 = str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            i2 = 0;
        }
        if (i2 > 128) {
            MLog.e("key length is " + i2 + ", please check key, illegal");
            return false;
        } else if (obj instanceof String) {
            if (((String) obj).getBytes("UTF-8").length > 256) {
                MLog.e("value length is " + ((String) obj).getBytes("UTF-8").length + ", please check value, illegal");
                return false;
            }
            return true;
        } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float)) {
            return true;
        } else {
            MLog.e("value is " + obj + ", please check value, type illegal");
            return false;
        }
    }

    public void a(Context context, String str) {
        if (context == null) {
            UMLog.aq(j.w, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("reportError can not be called in child process");
        } else if (TextUtils.isEmpty(str)) {
            if (UMConfigure.isDebugLog()) {
                UMLog.aq(j.x, 0, "\\|");
            }
        } else {
            try {
                if (!this.j || !this.n) {
                    a(f12123a);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(d.Q, 2);
                jSONObject.put("context", str);
                jSONObject.put("__ii", this.f.c());
                UMWorkDispatch.sendEvent(f12123a, o.a.j, CoreProtocol.getInstance(f12123a), jSONObject);
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e(th);
                }
            }
        }
    }

    public void a(Context context, Throwable th) {
        if (context != null && th != null) {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("reportError can not be called in child process");
                return;
            }
            try {
                if (!this.j || !this.n) {
                    a(f12123a);
                }
                a(f12123a, DataHelper.convertExceptionToString(th));
                return;
            } catch (Exception e) {
                if (MLog.DEBUG) {
                    MLog.e(e);
                    return;
                }
                return;
            }
        }
        UMLog.aq(j.y, 0, "\\|");
    }

    public void a(Context context, String str, String str2, long j, int i2) {
        if (context == null) {
            return;
        }
        try {
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!this.j || !this.n) {
                a(f12123a);
            }
            if (c(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String str3 = "";
            if (this.k == null) {
                this.k = new JSONObject();
            } else {
                str3 = this.k.toString();
            }
            s.a(f12123a).a(str, str2, j, i2, str3);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(Context context, String str, Map<String, Object> map, long j) {
        try {
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            if (Arrays.asList(d.aF).contains(str)) {
                UMLog.aq(j.b, 0, "\\|");
                return;
            } else if (map.isEmpty()) {
                UMLog.aq(j.d, 0, "\\|");
                return;
            } else {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (Arrays.asList(d.aF).contains(entry.getKey())) {
                        UMLog.aq(j.e, 0, "\\|");
                        return;
                    }
                }
                a(context, str, map, j, false);
                return;
            }
        }
        UMLog.aq(j.c, 0, "\\|");
    }

    public void a(Context context, String str, Map<String, Object> map) {
        a(context, str, map, -1L, true);
    }

    private void a(Context context, String str, Map<String, Object> map, long j, boolean z2) {
        try {
            if (context == null) {
                MLog.e("context is null in onEventNoCheck, please check!");
                return;
            }
            if (f12123a == null) {
                f12123a = context.getApplicationContext();
            }
            if (!this.j || !this.n) {
                a(f12123a);
            }
            if (c(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String str2 = "";
            if (this.k == null) {
                this.k = new JSONObject();
            } else {
                str2 = this.k.toString();
            }
            s.a(f12123a).a(str, map, j, str2, z2);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.t
    public void a(Throwable th) {
        try {
            if (f12123a == null) {
                return;
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onAppCrash can not be called in child process");
            } else if (AnalyticsConfig.enable) {
                if (this.d != null) {
                    this.d.b();
                }
                l.a(f12123a, "onAppCrash");
                if (this.e != null) {
                    this.e.b();
                }
                if (this.g != null) {
                    this.g.c();
                }
                if (this.f != null) {
                    this.f.c(f12123a, Long.valueOf(System.currentTimeMillis()));
                }
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(d.Q, 1);
                    jSONObject.put("context", DataHelper.convertExceptionToString(th));
                    i.a(f12123a).a(this.f.c(), jSONObject.toString(), 1);
                }
                o.a(f12123a).d();
                v.a(f12123a);
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                    l.c(f12123a);
                }
                PreferenceWrapper.getDefault(f12123a).edit().commit();
            }
        } catch (Exception e) {
            if (MLog.DEBUG) {
                MLog.e("Exception in onAppCrash", e);
            }
        }
    }

    public void a(String str, String str2) {
        try {
            if (f12123a == null) {
                return;
            }
            if (!UMUtils.isMainProgress(f12123a)) {
                MLog.e("onProfileSignIn can not be called in child process");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(d.M, str);
            jSONObject.put("uid", str2);
            jSONObject.put("ts", currentTimeMillis);
            UMWorkDispatch.sendEvent(f12123a, o.a.e, CoreProtocol.getInstance(f12123a), jSONObject);
            UMWorkDispatch.sendEvent(f12123a, o.a.o, CoreProtocol.getInstance(f12123a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    public void a(boolean z2) {
        Context context = f12123a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setCatchUncaughtExceptions can not be called in child process");
        } else if (AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW) {
        } else {
            AnalyticsConfig.CATCH_EXCEPTION = z2;
        }
    }

    public void a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    public void a(double d, double d2) {
        Context context = f12123a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setLocation can not be called in child process");
            return;
        }
        if (AnalyticsConfig.f12115a == null) {
            AnalyticsConfig.f12115a = new double[2];
        }
        double[] dArr = AnalyticsConfig.f12115a;
        dArr[0] = d;
        dArr[1] = d2;
    }

    public void a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.e("unexpected null context in setScenarioType");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("setScenarioType can not be called in child process");
            return;
        }
        if (eScenarioType != null) {
            a(f12123a, eScenarioType.toValue());
        }
        if (this.j && this.n) {
            return;
        }
        a(f12123a);
    }

    public void a(long j) {
        Context context = f12123a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setSessionContinueMillis can not be called in child process");
            return;
        }
        AnalyticsConfig.kContinueSessionMillis = j;
        y.a().a(AnalyticsConfig.kContinueSessionMillis);
    }

    public synchronized void a(Context context, String str, Object obj) {
        int i2 = 0;
        if (context == null) {
            UMLog.aq(j.af, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("registerSuperProperty can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        if (!TextUtils.isEmpty(str) && obj != null) {
            if (!str.equals(z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
                MLog.e("property name is " + str + ", please check key, must be correct!");
                return;
            } else if ((obj instanceof String) && !HelperUtils.checkStrLen(obj.toString(), 256)) {
                MLog.e("property value is " + obj + ", please check value, lawless!");
                return;
            } else {
                try {
                    if (this.k == null) {
                        this.k = new JSONObject();
                    }
                    if (obj.getClass().isArray()) {
                        if (obj instanceof String[]) {
                            String[] strArr = (String[]) obj;
                            if (strArr.length > 10) {
                                MLog.e("please check value, size is " + strArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray = new JSONArray();
                            while (i2 < strArr.length) {
                                if (strArr[i2] != null && HelperUtils.checkStrLen(strArr[i2], 256)) {
                                    jSONArray.put(strArr[i2]);
                                    i2++;
                                }
                                MLog.e("please check value, length is " + strArr[i2].length() + ", overlength 256!");
                                return;
                            }
                            this.k.put(str, jSONArray);
                        } else if (obj instanceof long[]) {
                            long[] jArr = (long[]) obj;
                            if (jArr.length > 10) {
                                MLog.e("please check value, size is " + jArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray2 = new JSONArray();
                            while (i2 < jArr.length) {
                                jSONArray2.put(jArr[i2]);
                                i2++;
                            }
                            this.k.put(str, jSONArray2);
                        } else if (obj instanceof int[]) {
                            int[] iArr = (int[]) obj;
                            if (iArr.length > 10) {
                                MLog.e("please check value, size is " + iArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray3 = new JSONArray();
                            while (i2 < iArr.length) {
                                jSONArray3.put(iArr[i2]);
                                i2++;
                            }
                            this.k.put(str, jSONArray3);
                        } else if (obj instanceof float[]) {
                            float[] fArr = (float[]) obj;
                            if (fArr.length > 10) {
                                MLog.e("please check value, size is " + fArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray4 = new JSONArray();
                            while (i2 < fArr.length) {
                                jSONArray4.put(fArr[i2]);
                                i2++;
                            }
                            this.k.put(str, jSONArray4);
                        } else if (obj instanceof double[]) {
                            double[] dArr = (double[]) obj;
                            if (dArr.length > 10) {
                                MLog.e("please check value, size is " + dArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray5 = new JSONArray();
                            while (i2 < dArr.length) {
                                jSONArray5.put(dArr[i2]);
                                i2++;
                            }
                            this.k.put(str, jSONArray5);
                        } else if (obj instanceof short[]) {
                            short[] sArr = (short[]) obj;
                            if (sArr.length > 10) {
                                MLog.e("please check value, size is " + sArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray6 = new JSONArray();
                            while (i2 < sArr.length) {
                                jSONArray6.put((int) sArr[i2]);
                                i2++;
                            }
                            this.k.put(str, jSONArray6);
                        } else {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                    } else {
                        if (!(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short)) {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                        this.k.put(str, obj);
                    }
                } catch (Throwable unused) {
                }
                UMWorkDispatch.sendEvent(f12123a, o.a.r, CoreProtocol.getInstance(f12123a), this.k.toString());
                return;
            }
        }
        UMLog.aq(j.ag, 0, "\\|");
    }

    private void a(String str, Object obj) {
        try {
            if (this.k == null) {
                this.k = new JSONObject();
            }
            int i2 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    if (strArr.length > 10) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    while (i2 < strArr.length) {
                        if (strArr[i2] != null && !HelperUtils.checkStrLen(strArr[i2], 256)) {
                            jSONArray.put(strArr[i2]);
                        }
                        i2++;
                    }
                    this.k.put(str, jSONArray);
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    JSONArray jSONArray2 = new JSONArray();
                    while (i2 < jArr.length) {
                        jSONArray2.put(jArr[i2]);
                        i2++;
                    }
                    this.k.put(str, jSONArray2);
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    JSONArray jSONArray3 = new JSONArray();
                    while (i2 < iArr.length) {
                        jSONArray3.put(iArr[i2]);
                        i2++;
                    }
                    this.k.put(str, jSONArray3);
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    JSONArray jSONArray4 = new JSONArray();
                    while (i2 < fArr.length) {
                        jSONArray4.put(fArr[i2]);
                        i2++;
                    }
                    this.k.put(str, jSONArray4);
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    JSONArray jSONArray5 = new JSONArray();
                    while (i2 < dArr.length) {
                        jSONArray5.put(dArr[i2]);
                        i2++;
                    }
                    this.k.put(str, jSONArray5);
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    JSONArray jSONArray6 = new JSONArray();
                    while (i2 < sArr.length) {
                        jSONArray6.put((int) sArr[i2]);
                        i2++;
                    }
                    this.k.put(str, jSONArray6);
                }
            } else if (obj instanceof List) {
                List list = (List) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i2 < list.size()) {
                    Object obj2 = list.get(i2);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray7.put(list.get(i2));
                    }
                    i2++;
                }
                this.k.put(str, jSONArray7);
            } else if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                this.k.put(str, obj);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void a(Object obj) {
        if (f12123a == null) {
            return;
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("registerSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (obj != null) {
            String str = (String) obj;
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f12123a).edit();
            if (edit != null && !TextUtils.isEmpty(str)) {
                edit.putString(h, this.k.toString()).commit();
            }
        }
    }

    public synchronized void a(Context context, List<String> list) {
        try {
        } catch (Throwable th) {
            MLog.e(th);
        }
        if (context == null) {
            UMLog.aq(j.aj, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("setFirstLaunchEvent can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        s.a(f12123a).a(list);
    }

    public synchronized void a(Context context, JSONObject jSONObject) {
        String obj;
        Object obj2;
        if (context == null) {
            UMLog.aq(j.al, 0, "\\|");
            return;
        }
        if (f12123a == null) {
            f12123a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f12123a)) {
            MLog.e("registerPreProperties can not be called in child process");
            return;
        }
        if (!this.j || !this.n) {
            a(f12123a);
        }
        if (this.m == null) {
            this.m = new JSONObject();
        }
        if (jSONObject != null && jSONObject.length() > 0) {
            JSONObject jSONObject2 = null;
            try {
                jSONObject2 = new JSONObject(this.m.toString());
            } catch (Exception unused) {
            }
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            Iterator<String> keys = jSONObject.keys();
            if (keys != null) {
                while (keys.hasNext()) {
                    try {
                        obj = keys.next().toString();
                        obj2 = jSONObject.get(obj);
                    } catch (Exception unused2) {
                    }
                    if (b(obj, obj2)) {
                        jSONObject2.put(obj, obj2);
                        if (jSONObject2.length() > 10) {
                            MLog.e("please check propertics, size overlength!");
                            return;
                        }
                        continue;
                    } else {
                        return;
                    }
                }
            }
            this.m = jSONObject2;
            if (this.m.length() > 0) {
                UMWorkDispatch.sendEvent(f12123a, o.a.u, CoreProtocol.getInstance(f12123a), this.m.toString());
            }
            return;
        }
        UMLog.aq(j.am, 0, "\\|");
    }
}
