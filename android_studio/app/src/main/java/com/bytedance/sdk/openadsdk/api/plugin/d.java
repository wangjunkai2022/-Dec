package com.bytedance.sdk.openadsdk.api.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.api.plugin.f;
import com.qq.e.comm.pi.ACTD;
import com.umeng.commonsdk.statistics.idtracking.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public final class d {
    public static SharedPreferences c;
    public static ScheduledExecutorService b = Executors.newSingleThreadScheduledExecutor(new f.b("tt_pangle_thread_pl_report"));
    public static final List<Pair<String, JSONObject>> d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, String> f11443a = new HashMap();
    public static volatile boolean e = false;

    public static void a(Context context) {
        c = context.getSharedPreferences("tt_sdk_settings_other", 0);
    }

    public static void c(String str, JSONObject jSONObject) {
        d.add(new Pair<>(str, jSONObject));
    }

    public static void e(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("action", 1);
            bundle.putString("event_name", str);
            bundle.putString("event_extra", jSONObject.toString());
            adManager.getExtra(Bundle.class, bundle);
            return;
        }
        b(str, jSONObject);
    }

    public static JSONObject f(String str, JSONObject jSONObject) {
        String str2 = "4.6.0.7";
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("support_abi", Arrays.toString(Build.SUPPORTED_ABIS));
            jSONObject2.put("ad_sdk_version", "4.6.0.7");
            String a2 = e.a("com.byted.pangle");
            if (!TextUtils.isEmpty(a2)) {
                str2 = a2;
            }
            jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, str2);
            jSONObject2.put("timestamp", System.currentTimeMillis() / 1000);
            jSONObject2.put("is_plugin", true);
            jSONObject2.put("event_extra", jSONObject.toString());
            jSONObject2.put("type", str);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("model", Build.MODEL);
            jSONObject3.put("vendor", Build.MANUFACTURER);
            jSONObject3.put(com.umeng.commonsdk.statistics.idtracking.f.f12309a, f11443a.get(com.umeng.commonsdk.statistics.idtracking.f.f12309a));
            jSONObject3.put(h.d, f11443a.get(h.d));
            jSONObject2.put("device_info", jSONObject3);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public static final void a(int i, String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("duration", Long.valueOf(j));
            jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
            jSONObject.putOpt("message", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        e("plugin_load_failed", jSONObject);
    }

    public static final void b(int i, String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("duration", Long.valueOf(j));
            jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
            jSONObject.putOpt("message", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        b("plugin_load_failed", jSONObject);
    }

    public static void c(List<JSONObject> list) {
        if (list == null) {
            return;
        }
        SharedPreferences sharedPreferences = c;
        String format = String.format("https://%s%s", sharedPreferences != null ? sharedPreferences.getString("url_alog", "api-access.pangolin-sdk-toutiao.com") : "api-access.pangolin-sdk-toutiao.com", "/api/ad/union/sdk/stats/batch/");
        JSONObject jSONObject = new JSONObject();
        try {
            if (d.size() > 0) {
                Iterator<Pair<String, JSONObject>> it = d.iterator();
                while (it.hasNext()) {
                    Pair<String, JSONObject> next = it.next();
                    list.add(f((String) next.first, (JSONObject) next.second));
                    it.remove();
                }
            }
            jSONObject.put("stats_list", new JSONArray((Collection) list));
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.api.plugin.a.c.a().a(true, format, com.bytedance.sdk.openadsdk.api.plugin.b.b.a(jSONObject).toString().getBytes());
    }

    public static void a(String str, JSONObject jSONObject) {
        e("zeus_" + str, jSONObject);
    }

    public static void b(final String str, final JSONObject jSONObject) {
        if (e) {
            return;
        }
        b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.1
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(d.f(str, jSONObject));
                d.c(arrayList);
            }
        });
    }

    public static void a() {
        if (e) {
            return;
        }
        try {
            e = true;
            b.shutdown();
        } catch (Throwable unused) {
        }
    }

    public static void a(final List<JSONObject> list) {
        if (e) {
            return;
        }
        if (list != null && list.isEmpty() && d.isEmpty()) {
            return;
        }
        b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.2
            @Override // java.lang.Runnable
            public void run() {
                d.c(list);
            }
        });
    }

    public static void a(final Bundle bundle) {
        if (e) {
            return;
        }
        b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.3
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle2 = bundle;
                if (bundle2 == null) {
                    return;
                }
                try {
                    String string = bundle2.getString("event_name");
                    String string2 = bundle.getString("event_extra");
                    JSONObject jSONObject = TextUtils.isEmpty(string2) ? new JSONObject() : new JSONObject(string2);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(d.f(string, jSONObject));
                    d.c(arrayList);
                } catch (Exception unused) {
                }
            }
        });
    }

    public static void a(AdConfig adConfig) {
        if (adConfig == null) {
            return;
        }
        f11443a.put(ACTD.APPID_KEY, adConfig.getAppId());
        Object extra = adConfig.getExtra("plugin_update_conf");
        if (extra instanceof Integer) {
            String num = ((Integer) extra).toString();
            Map<String, String> map = f11443a;
            if (num == null) {
                num = "2";
            }
            map.put("plugin_update_conf", num);
        }
        TTCustomController customController = adConfig.getCustomController();
        if (customController != null) {
            try {
                f11443a.put(h.d, customController.getDevOaid());
                f11443a.put(com.umeng.commonsdk.statistics.idtracking.f.f12309a, customController.getDevImei());
            } catch (Exception unused) {
            }
        }
    }
}
