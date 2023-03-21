package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.m;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.umeng.analytics.pro.ak;
import com.umeng.analytics.pro.d;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;

/* compiled from: CrashBody.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public JSONObject f11065a;

    public a() {
        this.f11065a = new JSONObject();
    }

    public static a a(long j, Context context, @Nullable Thread thread, @NonNull Throwable th) {
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        a aVar = new a();
        aVar.a("isJava", (Object) 1);
        aVar.a("event_type", "java_crash");
        aVar.a("timestamp", Long.valueOf(System.currentTimeMillis()));
        aVar.a("data", m.a(th));
        aVar.a("isOOM", Boolean.valueOf(m.b(th)));
        aVar.a("crash_time", Long.valueOf(j));
        aVar.a(ContentProviderManager.PLUGIN_PROCESS_NAME, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.b(context));
        if (!bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.g(context)) {
            aVar.a("remote_process", (Object) 1);
        }
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.a(context, aVar.a());
        String name = thread == null ? null : thread.getName();
        if (name != null) {
            aVar.a("crash_thread_name", name);
        }
        aVar.a("all_thread_stacks", m.a(name));
        return aVar;
    }

    public a b(Map<String, Integer> map) {
        JSONArray jSONArray = new JSONArray();
        if (map == null) {
            this.f11065a.put("plugin_info", jSONArray);
            return this;
        }
        for (String str : map.keySet()) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ak.o, str);
            jSONObject.put("version_code", map.get(str));
            jSONArray.put(jSONObject);
        }
        this.f11065a.put("plugin_info", jSONArray);
        return this;
    }

    public a c(Map<Integer, String> map) {
        if (map != null && map.size() > 0) {
            JSONObject jSONObject = new JSONObject();
            for (Integer num : map.keySet()) {
                try {
                    jSONObject.put(String.valueOf(num), map.get(num));
                } catch (JSONException e) {
                    j.b(e);
                }
            }
            try {
                this.f11065a.put("sdk_info", jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return this;
    }

    public a(JSONObject jSONObject) {
        this.f11065a = jSONObject;
    }

    public a b(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                jSONArray.put(str);
            }
            a("patch_info", jSONArray);
            return this;
        }
        a("patch_info", jSONArray);
        return this;
    }

    public JSONObject a() {
        return this.f11065a;
    }

    public a a(b bVar) {
        a("header", bVar.a());
        return this;
    }

    public a a(long j) {
        try {
            a(d.p, Long.valueOf(j));
            a("app_start_time_readable", new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.getDefault()).format(new Date(j)));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this;
    }

    public a a(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            a("session_id", str);
        }
        return this;
    }

    public a a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do.b bVar) {
        a("activity_trace", bVar.a());
        a("running_tasks", bVar.b());
        return this;
    }

    public a a(int i, String str) {
        try {
            this.f11065a.put("miniapp_id", i);
            this.f11065a.put("miniapp_version", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this;
    }

    public a a(JSONObject jSONObject) {
        a(LitePalParser.NODE_STORAGE, jSONObject);
        return this;
    }

    public a a(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
            jSONArray.put(str);
        }
        a("logcat", jSONArray);
        return this;
    }

    public a a(Map<? extends String, ? extends String> map) {
        if (map != null) {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            a("filters", jSONObject);
        }
        return this;
    }

    public void a(@NonNull String str, @Nullable Object obj) {
        try {
            this.f11065a.put(str, obj);
        } catch (Exception e) {
            j.b(e);
        }
    }
}
