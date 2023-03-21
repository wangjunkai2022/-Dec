package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.google.zxing.maxicode.decoder.DecodedBitStreamParser;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTSdkSettings.java */
/* loaded from: classes8.dex */
public class c implements bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a {
    public Map<String, List<String>> A;
    public int B;

    /* renamed from: a  reason: collision with root package name */
    public String f10914a;
    public long b;
    public long c;
    public String d;
    public String e;
    public String f;
    public String g;
    public int h;
    public String i;
    public int j;
    public long p;
    public long q;
    public List<GMSettingConfigCallback> v;
    public Map<String, Boolean> w;
    public final AtomicBoolean x;
    public int y;
    public Map<String, String> z;
    public String k = null;
    public int l = 0;
    public String m = "log-api.pangolin-sdk-toutiao.com/service/2/app_log/";
    public int n = 100;
    public int o = 0;
    public long r = 120000;
    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> s = new ConcurrentHashMap();
    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> t = new ConcurrentHashMap();
    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> u = new HashMap();

    /* compiled from: TTSdkSettings.java */
    /* loaded from: classes8.dex */
    public class a implements bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.b {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f10915a;
        public final /* synthetic */ boolean b;

        public a(boolean z, boolean z2) {
            this.f10915a = z;
            this.b = z2;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.b
        public void a() {
            StringBuilder m1016super = Cgoto.m1016super("MSDK init finish.........hasConfig:");
            m1016super.append(this.f10915a);
            Logger.e("TTMediationSDK_SDK_Init", m1016super.toString());
            if (this.f10915a) {
                if (!c.this.x.get()) {
                    c.this.x.set(true);
                    int c = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.c();
                    long elapsedRealtime = SystemClock.elapsedRealtime() - d.c();
                    if (!e.d()) {
                        Logger.d("TMe", "-----==---- 延时上报sdk_init_end");
                        e.a(elapsedRealtime, c, this.b ? 1 : 0);
                    } else {
                        Logger.d("TMe", "-----==---- 正常上报sdk_init_end");
                        h.a(elapsedRealtime, c, this.b ? 1 : 0, -1L);
                    }
                    Logger.d("TTMediationSDK", "sdk init end, duration: " + elapsedRealtime + ", initAdnCount: " + c + ", isFromLocalConfig: " + this.b);
                }
                c.this.L();
                if (this.b) {
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.b.c();
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.i();
            }
        }
    }

    /* compiled from: TTSdkSettings.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c f10916a;

        public b(c cVar, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2) {
            this.f10916a = cVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.f10916a;
            if (cVar == null || cVar.q() == null) {
                return;
            }
            if (this.f10916a.G()) {
                if (m.b().a(this.f10916a.g())) {
                    m.b().b(this.f10916a.g());
                }
                if (m.b().a(this.f10916a.f())) {
                    m.b().b(this.f10916a.f());
                }
            } else {
                m b = m.b();
                b.e(this.f10916a.q() + "");
                m b2 = m.b();
                b2.d(this.f10916a.q() + "");
            }
            for (i iVar : this.f10916a.A()) {
                if (iVar.D()) {
                    if (l.b().a(iVar.o())) {
                        l.b().b(iVar.o());
                    }
                    if (k.b().a(iVar.n())) {
                        k.b().b(iVar.n());
                    }
                } else {
                    l b3 = l.b();
                    b3.b(this.f10916a.q() + "", iVar.d());
                    k b4 = k.b();
                    b4.c(this.f10916a.q() + "", iVar.d());
                }
            }
        }
    }

    public c() {
        new HashMap();
        this.v = new CopyOnWriteArrayList();
        this.w = new HashMap();
        this.x = new AtomicBoolean(false);
        this.y = 0;
        this.z = new ConcurrentHashMap();
        this.A = new ConcurrentHashMap();
    }

    private void H() {
        this.s.clear();
        this.t.clear();
    }

    public static String I() {
        StringBuilder m1016super = Cgoto.m1016super("tt_sdk_settings_");
        m1016super.append(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b());
        return m1016super.toString();
    }

    public static c0 J() {
        return c0.a(I(), bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
    }

    private boolean K() {
        Boolean bool = this.w.get("active_control");
        return bool == null || !bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        if (w()) {
            synchronized (this.v) {
                for (GMSettingConfigCallback gMSettingConfigCallback : this.v) {
                    gMSettingConfigCallback.configLoad();
                }
                this.v.clear();
            }
        }
    }

    private String a(JSONArray jSONArray) {
        JSONArray optJSONArray;
        if (jSONArray != null) {
            ConcurrentHashMap<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b> concurrentHashMap = new ConcurrentHashMap<>();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("break_request_error_code")) != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        arrayList.add(optJSONArray.optString(i2));
                    }
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b bVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b();
                    bVar.a(optJSONObject.optLong("break_request_duration"));
                    bVar.a(arrayList);
                    concurrentHashMap.put(optJSONObject.optString("adn_name"), bVar);
                }
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.c.a().a(concurrentHashMap);
            return jSONArray.toString();
        }
        char c = 31;
        while (true) {
            switch (c) {
                case 29:
                    return null;
                case 30:
                case 31:
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.c.a().a(null);
                    break;
            }
            c = DecodedBitStreamParser.GS;
        }
    }

    private void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar) {
        ThreadHelper.runOnThreadPool(new b(this, cVar));
    }

    private String b(JSONArray jSONArray) {
        if (jSONArray != null) {
            this.u.clear();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c b2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c.b(jSONArray.getJSONObject(i));
                    if (b2 != null) {
                        this.u.put(b2.q(), b2);
                        a(b2);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            return jSONArray.toString();
        }
        return null;
    }

    private String b(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject2 != null) {
            H();
            Iterator<String> keys = jSONObject.keys();
            if (keys != null) {
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject optJSONObject = jSONObject2.optJSONObject(next);
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("app_id");
                        String optString2 = optJSONObject.optString(TTBaseAdapterConfiguration.APP_KEY_EXTRA_KEY);
                        String optString3 = optJSONObject.optString("custom_type");
                        if (TextUtils.equals(optString3, "1")) {
                            this.t.put(next, new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a(next, optString, optString2, optJSONObject.optString("init_class_name"), optJSONObject.optString("banner_class_name"), optJSONObject.optString("interstitial_class_name"), optJSONObject.optString("reward_class_name"), optJSONObject.optString("full_video_class_name"), optJSONObject.optString("splash_class_name"), optJSONObject.optString("feed_class_name"), optJSONObject.optString("draw_class_name"), optString3));
                        } else {
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a aVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a(optString, optString2);
                            if (TextUtils.equals(next, "pangle") && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().x()) {
                                this.s.put("pangle_custom", aVar);
                            }
                            this.s.put(next, aVar);
                        }
                    }
                    jSONObject2 = jSONObject;
                }
            }
            return jSONObject.toString();
        }
        return null;
    }

    private void c(JSONObject jSONObject) {
        this.z.clear();
        this.y = 0;
        if (jSONObject == null) {
            return;
        }
        this.y = jSONObject.optInt("if_sample", 0);
        JSONObject optJSONObject = jSONObject.optJSONObject("call_stack_path");
        if (optJSONObject != null) {
            try {
                Iterator<String> keys = optJSONObject.keys();
                if (keys != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String optString = optJSONObject.optString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(optString)) {
                            this.z.put(next, optString);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void d(JSONObject jSONObject) {
        this.A.clear();
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                if (keys != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        ArrayList arrayList = new ArrayList();
                        if (optJSONArray != null) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                if (optJSONArray.get(i) != null) {
                                    arrayList.add(optJSONArray.get(i).toString());
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(next) && !arrayList.isEmpty()) {
                            this.A.put(next, arrayList);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private String e(JSONObject jSONObject) {
        this.w.clear();
        if (jSONObject != null) {
            try {
                if (jSONObject.optBoolean("ad_event_control")) {
                    this.w.put("ad_event_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_banner_control")) {
                    this.w.put("type_banner_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_interaction_control")) {
                    this.w.put("type_interaction_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_interactionfull_control")) {
                    this.w.put("type_interactionfull_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_splash_control")) {
                    this.w.put("type_splash_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_feed_control")) {
                    this.w.put("type_feed_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_reward_control")) {
                    this.w.put("type_reward_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_full_control")) {
                    this.w.put("type_full_control", Boolean.TRUE);
                }
                if (jSONObject.optBoolean("type_native_control")) {
                    this.w.put("type_native_control", Boolean.TRUE);
                }
                return jSONObject.toString();
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    private String f(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.j = jSONObject.optInt("fetch_ad_type", 0);
            return jSONObject.toString();
        }
        return null;
    }

    public boolean A() {
        if (K()) {
            Boolean bool = this.w.get("type_interactionfull_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean B() {
        if (K()) {
            Boolean bool = this.w.get("type_native_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean C() {
        return this.l == 1;
    }

    public boolean D() {
        if (K()) {
            Boolean bool = this.w.get("type_reward_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean E() {
        if (K()) {
            Boolean bool = this.w.get("type_splash_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean F() {
        return this.B == 1;
    }

    public boolean G() {
        return this.j == 1;
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a a(String str) {
        return this.s.get(str);
    }

    public void a() {
        J().a();
        this.f10914a = null;
    }

    public void a(int i) {
        this.B = i;
    }

    public void a(GMSettingConfigCallback gMSettingConfigCallback) {
        if (gMSettingConfigCallback == null) {
            return;
        }
        if (w()) {
            gMSettingConfigCallback.configLoad();
            return;
        }
        synchronized (this.v) {
            if (!this.v.contains(gMSettingConfigCallback)) {
                this.v.add(gMSettingConfigCallback);
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a
    public void a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.optInt("state_code") != 30004) {
            return;
        }
        c0 J = J();
        this.b = jSONObject.optLong("max_age");
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.b;
        this.c = currentTimeMillis + j;
        J.b("max_age", j);
        J.b("max_expire_time", this.c);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a
    public void a(JSONObject jSONObject, boolean z) {
        boolean z2;
        JSONObject jSONObject2;
        String str;
        String b2;
        String b3;
        String b4;
        if (jSONObject == null) {
            return;
        }
        try {
            this.f10914a = jSONObject.optString("etag");
            this.b = jSONObject.optLong("max_age");
            this.c = System.currentTimeMillis() + this.b;
            this.d = jSONObject.optString("ab_version");
            this.e = jSONObject.optString("ab_params");
            this.f = jSONObject.optString(ak.O);
            this.g = jSONObject.optString("transparent_params");
            this.B = jSONObject.optInt("if_test");
            this.h = jSONObject.optInt("if_get_detail_return");
            this.i = jSONObject.optString("ecpm_precision_level");
            String optString = jSONObject.optString("url");
            this.k = jSONObject.optString("app_abtest");
            this.l = jSONObject.optInt("innerLog", 0);
            this.m = jSONObject.optString("app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
            this.p = jSONObject.optLong("break_request_times", 0L);
            this.q = jSONObject.optLong("break_request_hold_time", FragmentStateAdapter.GRACE_WINDOW_TIME_MS);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.a.b().a(this.p, this.q);
            JSONObject optJSONObject = jSONObject.optJSONObject("supervisor_feature");
            if (optJSONObject != null) {
                q.a(true);
                q.a(optJSONObject);
            } else {
                q.a(false);
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("app_common_config");
            if (optJSONObject2 != null) {
                int optInt = optJSONObject2.optInt("event_batch_size", 100);
                this.n = optInt;
                if (optInt <= 0 || optInt > 1000) {
                    this.n = 100;
                }
                this.o = optJSONObject2.optInt("event_send_type", 0);
                jSONObject2 = optJSONObject;
                str = "break_request_hold_time";
                long optLong = optJSONObject2.optLong("event_routine_interval", 120000L);
                this.r = optLong;
                if (optLong < FragmentStateAdapter.GRACE_WINDOW_TIME_MS || optLong > 300000) {
                    this.r = 120000L;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(optJSONObject2.optInt("pre_fetch_count", 20));
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a(optJSONObject2.optInt("if_use_new_loglib", 0));
            } else {
                jSONObject2 = optJSONObject;
                str = "break_request_hold_time";
            }
            Logger.e("TTSETTING", "save--mEventBatchSize=" + this.n + ",mEventSendType=" + this.o + ", routineInterval=" + this.r);
            String b5 = b(jSONObject.optJSONObject("adn_init_conf"));
            String a2 = a(jSONObject.optJSONArray("adn_control_conf"));
            String f = f(jSONObject.optJSONObject("poor_network_config"));
            String b6 = b(jSONObject.optJSONArray("rit_conf"));
            String e = e(jSONObject.optJSONObject("module_disable_control"));
            JSONObject optJSONObject3 = jSONObject.optJSONObject("call_stack_conf");
            c(optJSONObject3);
            JSONObject optJSONObject4 = jSONObject.optJSONObject("custom_adn_feature");
            d(optJSONObject4);
            c0 J = J();
            J.b("etag", this.f10914a);
            J.b("max_age", this.b);
            J.b("max_expire_time", this.c);
            J.b("ab_version", this.d);
            J.b("ab_params", this.e);
            J.b(ak.O, this.f);
            J.b("transparent_params", this.g);
            J.b("if_test", this.B);
            J.b("network_permission", this.h);
            J.b("ecpm_precision_level", this.i);
            J.b("app_abtest", this.k);
            J.b("module_control", e);
            J.b("tt_app_log_url", this.m);
            J.b("break_request_times", this.p);
            J.b(str, this.q);
            J.b("key_supervisor_feature", jSONObject2 != null ? jSONObject2.toString() : "");
            if (optJSONObject2 != null) {
                J.b("tt_app_common_config", optJSONObject2.toString());
            }
            if (optJSONObject3 != null) {
                J.b("call_stack", optJSONObject3.toString());
            } else {
                J.b("call_stack", "");
            }
            if (optJSONObject4 != null) {
                J.b("custom_adn_feature", optJSONObject4.toString());
            } else {
                J.b("custom_adn_feature", "");
            }
            if (optString == null || TextUtils.isEmpty(optString)) {
                J.f("server_dist_host");
            } else {
                String b7 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.b(optString, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
                if (b7 != null) {
                    J.b("server_dist_host", b7);
                }
            }
            if (b5 != null && (b4 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.b(b5, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a())) != null) {
                J.b("adn_init_conf", b4);
            }
            if (a2 != null && (b3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.b(a2, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a())) != null) {
                J.b("adn_control_conf", b3);
            }
            if (b6 != null && (b2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.b(b6, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a())) != null) {
                J.b("rit_conf", b2);
            }
            if (f != null) {
                J.b("network_conf", f);
            }
            J.b("is_config_from_assert", z);
            J.b("has_config_in_sp", true);
            z2 = false;
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                z2 = false;
            } catch (Throwable th2) {
                b(false);
                throw th2;
            }
        }
        b(z2);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a
    public void a(boolean z) {
        JSONObject c;
        JSONObject jSONObject;
        int optInt;
        String str;
        try {
            c0 J = J();
            if (!J.a("has_config_in_sp") && (c = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().c()) != null) {
                int optInt2 = c.optInt("cypher", -1);
                if (optInt2 == 2) {
                    String a2 = l0.a(c.optString("message"));
                    if (!TextUtils.isEmpty(a2)) {
                        jSONObject = new JSONObject(a2);
                        c = jSONObject;
                    }
                    optInt = c.optInt("state_code");
                    String optString = c.optString("message");
                    if (optInt == 20000 || TextUtils.isEmpty(c.toString())) {
                        str = " 解密错误或者解析错误：stateCode=" + optInt + "，msg=" + optString;
                    } else {
                        c.optJSONObject("adn_init_conf");
                        if (c.optString("app_id").equals(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b())) {
                            a(c, true);
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a((JSONObject) null);
                            if (z) {
                                return;
                            }
                            b(true);
                            return;
                        }
                        str = "本地配置appid或appkey非法";
                    }
                    Logger.i("TTMediationSDK", str);
                } else {
                    if (optInt2 == 1) {
                        String a3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(c.optString("message"), bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
                        if (!TextUtils.isEmpty(a3)) {
                            Logger.d("TTMediationSDK", "setting data : " + a3.toString());
                            jSONObject = new JSONObject(a3);
                            c = jSONObject;
                        }
                    } else if (optInt2 == 0) {
                        c = new JSONObject(c.optString("message"));
                    }
                    optInt = c.optInt("state_code");
                    String optString2 = c.optString("message");
                    if (optInt == 20000) {
                    }
                    str = " 解密错误或者解析错误：stateCode=" + optInt + "，msg=" + optString2;
                    Logger.i("TTMediationSDK", str);
                }
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a((JSONObject) null);
            this.f10914a = J.d("etag");
            this.b = J.c("max_age");
            this.c = J.c("max_expire_time");
            this.d = J.d("ab_version");
            this.e = J.d("ab_params");
            this.f = J.d(ak.O);
            this.g = J.d("transparent_params");
            this.B = J.b("if_test");
            this.h = J.b("network_permission");
            this.i = J.d("ecpm_precision_level");
            this.m = J.a("tt_app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
            this.p = J.a("break_request_times", 0L);
            this.q = J.a("break_request_hold_time", FragmentStateAdapter.GRACE_WINDOW_TIME_MS);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.a.b().a(this.p, this.q);
            String d = J.d("tt_app_common_config");
            if (!TextUtils.isEmpty(d)) {
                JSONObject jSONObject2 = new JSONObject(d);
                int optInt3 = jSONObject2.optInt("event_batch_size", 100);
                this.n = optInt3;
                if (optInt3 <= 0 || optInt3 > 1000) {
                    this.n = 100;
                }
                this.o = jSONObject2.optInt("event_send_type", 0);
                long optLong = jSONObject2.optLong("event_routine_interval", 120000L);
                this.r = optLong;
                if (optLong < FragmentStateAdapter.GRACE_WINDOW_TIME_MS || optLong > 300000) {
                    this.r = 120000L;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(jSONObject2.optInt("pre_fetch_count", 20));
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a(jSONObject2.optInt("if_use_new_loglib", 0));
            }
            Logger.e("TTSETTING", "load--mAppLogUrl=" + this.m);
            Logger.e("TTSETTING", "load--mEventBatchSize=" + this.n + ",mEventSendType=" + this.o + ", routineInterval=" + this.r);
            if (!TextUtils.isEmpty(J.d("app_abtest"))) {
                this.k = J.d("app_abtest");
            }
            String d2 = J.d("network_conf");
            if (!TextUtils.isEmpty(d2)) {
                f(new JSONObject(d2));
            }
            String d3 = J.d("adn_init_conf");
            if (!TextUtils.isEmpty(d3)) {
                if (!d3.startsWith("[") && !d3.startsWith("{")) {
                    d3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(d3, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
                }
                b(new JSONObject(d3));
            }
            String d4 = J.d("adn_control_conf");
            if (!TextUtils.isEmpty(d4)) {
                if (!d4.startsWith("[") && !d4.startsWith("{")) {
                    d4 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(d4, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
                }
                a(new JSONArray(d4));
            }
            String d5 = J.d("rit_conf");
            if (!TextUtils.isEmpty(d5)) {
                if (!d5.startsWith("[") && !d5.startsWith("{")) {
                    d5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(d5, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
                }
                b(new JSONArray(d5));
            }
            String d6 = J.d("module_control");
            if (!TextUtils.isEmpty(d6)) {
                e(new JSONObject(d6));
            }
            boolean a4 = J.a("all_active_control");
            if (a4) {
                this.w.put("active_control", Boolean.valueOf(a4));
            }
            String d7 = J.d("call_stack");
            if (!TextUtils.isEmpty(d7)) {
                c(new JSONObject(d7));
            }
            String d8 = J.d("custom_adn_feature");
            if (!TextUtils.isEmpty(d8)) {
                d(new JSONObject(d8));
            }
            String d9 = J.d("key_supervisor_feature");
            if (TextUtils.isEmpty(d9)) {
                q.a(false);
            } else {
                q.a(true);
                q.a(new JSONObject(d9));
            }
            if (z) {
                return;
            }
        } catch (Throwable unused) {
            if (z) {
                return;
            }
        }
        b(true);
    }

    public boolean a(String str, int i) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> map = this.u;
        return map == null || map.size() == 0 || (cVar = this.u.get(str)) == null || cVar.r() == i;
    }

    public boolean a(String str, String str2) {
        List<i> A;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.u.get(str);
        if (cVar == null || (A = cVar.A()) == null) {
            return false;
        }
        for (i iVar : A) {
            if (iVar != null && TextUtils.equals(iVar.d(), str2)) {
                return iVar.C();
            }
        }
        return false;
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a b(String str) {
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> map = this.t;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> b() {
        return this.s;
    }

    public void b(GMSettingConfigCallback gMSettingConfigCallback) {
        if (gMSettingConfigCallback == null) {
            return;
        }
        synchronized (this.v) {
            if (this.v.contains(gMSettingConfigCallback)) {
                this.v.remove(gMSettingConfigCallback);
            }
        }
    }

    public void b(boolean z) {
        new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a().a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), new a(v(), z));
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c(String str) {
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> map = this.u;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> c() {
        return this.t;
    }

    public long d(String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c = c(str);
        return c != null ? c.d() : TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS;
    }

    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> d() {
        return this.u;
    }

    public String e() {
        return this.k;
    }

    public boolean e(String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar;
        Map<Integer, List<i>> z;
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> map = this.u;
        if (map == null || map.size() == 0) {
            return true;
        }
        return (TextUtils.isEmpty(str) || (cVar = this.u.get(str)) == null || (z = cVar.z()) == null || z.size() == 0) ? false : true;
    }

    public String f() {
        return this.m;
    }

    public boolean f(String str) {
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> map;
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> map2 = this.s;
        return (map2 == null || map2.isEmpty() || (map = this.u) == null || map.isEmpty() || this.u.get(str) == null) ? false : true;
    }

    public Map<String, String> g() {
        return this.z;
    }

    public boolean g(String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a aVar;
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a> map = this.t;
        return (map == null || (aVar = map.get(str)) == null || !aVar.d()) ? false : true;
    }

    public String h() {
        return this.f;
    }

    public void h(String str) {
        try {
            c0 J = J();
            if ("2".equals(str)) {
                this.w.put("active_control", Boolean.TRUE);
                J.b("all_active_control", true);
            } else {
                this.w.put("active_control", Boolean.FALSE);
                J.b("all_active_control", false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Map<String, List<String>> i() {
        return this.A;
    }

    public String j() {
        if (this.f10914a == null) {
            this.f10914a = J().d("etag");
        }
        return this.f10914a;
    }

    public int k() {
        return this.n;
    }

    public int l() {
        return this.o;
    }

    public int m() {
        return this.B;
    }

    public long n() {
        return this.r;
    }

    public String o() {
        return this.g;
    }

    public boolean p() {
        try {
            return Integer.valueOf(this.i).intValue() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean q() {
        return this.h >= 1;
    }

    public boolean r() {
        try {
            return Integer.valueOf(this.i).intValue() > 1;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean s() {
        return this.y == 1;
    }

    public boolean t() {
        if (K()) {
            Boolean bool = this.w.get("ad_event_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean u() {
        if (K()) {
            Boolean bool = this.w.get("type_banner_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean v() {
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> map = this.u;
        return map != null && map.size() > 0;
    }

    public boolean w() {
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c> map = this.u;
        return map != null && map.size() > 0 && this.x.get();
    }

    public boolean x() {
        if (K()) {
            Boolean bool = this.w.get("type_feed_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean y() {
        if (K()) {
            Boolean bool = this.w.get("type_full_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }

    public boolean z() {
        if (K()) {
            Boolean bool = this.w.get("type_interaction_control");
            return bool == null || !bool.booleanValue();
        }
        return false;
    }
}
