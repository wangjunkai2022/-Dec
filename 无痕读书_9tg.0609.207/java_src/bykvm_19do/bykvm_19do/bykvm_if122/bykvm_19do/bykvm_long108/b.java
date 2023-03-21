package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.e;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.x;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.y;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.z;
import com.apk.Cgoto;
import com.apk.os;
import com.bytedance.msdk.adapter.config.DefaultAdapterClasses;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.adapter.util.WeakHandler;
import com.bytedance.msdk.api.UserInfoForSegment;
import com.bytedance.msdk.api.v2.GMConfigUserInfoForSegment;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.statistics.idtracking.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SdkSettingsHelper.java */
/* loaded from: classes8.dex */
public class b implements Runnable, WeakHandler.IHandler {
    public static volatile boolean h;
    public static volatile boolean i;
    @SuppressLint({"StaticFieldLeak"})
    public static volatile b j;

    /* renamed from: a  reason: collision with root package name */
    public final bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a f10910a;
    public final Context b;
    public final WeakHandler f;
    public final AtomicInteger c = new AtomicInteger(0);
    public final AtomicBoolean d = new AtomicBoolean(false);
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final AtomicBoolean g = new AtomicBoolean(false);

    /* compiled from: SdkSettingsHelper.java */
    /* loaded from: classes8.dex */
    public class a extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int[] f10911a;
        public final /* synthetic */ int[] b;
        public final /* synthetic */ long c;
        public final /* synthetic */ boolean d;

        /* compiled from: SdkSettingsHelper.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0044a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b f10912a;

            public RunnableC0044a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b bVar) {
                this.f10912a = bVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:36:0x0111 A[Catch: all -> 0x01e7, TryCatch #4 {all -> 0x01e7, blocks: (B:6:0x000e, B:8:0x001f, B:10:0x003b, B:13:0x0065, B:29:0x00da, B:31:0x00f6, B:33:0x00fc, B:34:0x0103, B:36:0x0111, B:39:0x011b, B:41:0x0153, B:44:0x0175, B:46:0x017f, B:47:0x01c3, B:20:0x0096, B:27:0x00cf, B:22:0x00a8, B:15:0x0073), top: B:63:0x000e }] */
            /* JADX WARN: Removed duplicated region for block: B:39:0x011b A[Catch: all -> 0x01e7, TryCatch #4 {all -> 0x01e7, blocks: (B:6:0x000e, B:8:0x001f, B:10:0x003b, B:13:0x0065, B:29:0x00da, B:31:0x00f6, B:33:0x00fc, B:34:0x0103, B:36:0x0111, B:39:0x011b, B:41:0x0153, B:44:0x0175, B:46:0x017f, B:47:0x01c3, B:20:0x0096, B:27:0x00cf, B:22:0x00a8, B:15:0x0073), top: B:63:0x000e }] */
            /* JADX WARN: Removed duplicated region for block: B:43:0x0173  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 553
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a.RunnableC0044a.run():void");
            }
        }

        /* compiled from: SdkSettingsHelper.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b$a$b  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0045b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ IOException f10913a;

            public RunnableC0045b(IOException iOException) {
                this.f10913a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m1016super = Cgoto.m1016super("----网络错误，服务器无响应，稍后会尝试重新拉取配置----，setting request failed...");
                m1016super.append(this.f10913a.getMessage());
                Logger.e("SdkSettingsHelper", m1016super.toString());
                try {
                    b.this.l();
                    Logger.e("SdkSettingsHelper", "----网络错误，重新拉取配置失败----，>>>>> retryLoadSettingData");
                } catch (Throwable unused) {
                }
                b.this.d.set(false);
                a aVar = a.this;
                aVar.b[0] = 0;
                aVar.f10911a[0] = -2;
                if (b.i) {
                    return;
                }
                boolean unused2 = b.i = true;
                a aVar2 = a.this;
                int i = aVar2.b[0];
                int i2 = aVar2.f10911a[0];
                long currentTimeMillis = System.currentTimeMillis();
                a aVar3 = a.this;
                h.a(i, i2, currentTimeMillis - aVar3.c, aVar3.d);
            }
        }

        public a(int[] iArr, int[] iArr2, long j, boolean z) {
            this.f10911a = iArr;
            this.b = iArr2;
            this.c = j;
            this.d = z;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b bVar2) {
            ThreadHelper.runOnMSDKThread(new RunnableC0044a(bVar2));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, IOException iOException) {
            ThreadHelper.runOnMSDKThread(new RunnableC0045b(iOException));
        }
    }

    public b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a aVar) {
        this.f10910a = aVar == null ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f() : aVar;
        this.b = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
        this.f = new WeakHandler(Looper.getMainLooper(), this);
    }

    public static b a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.a aVar) {
        if (j == null) {
            synchronized (b.class) {
                try {
                    if (j == null) {
                        j = new b(aVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    private String a(JSONObject jSONObject) {
        JSONObject a2 = l0.a(jSONObject);
        if (a2 != null) {
            return a2.toString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str.toLowerCase(), map.get(str));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.optBoolean("remote_log_enabled")) {
                Logger.openDebugMode();
            }
        } catch (Throwable unused) {
        }
    }

    private void b(boolean z) {
        int[] iArr = {0};
        int[] iArr2 = new int[1];
        long currentTimeMillis = System.currentTimeMillis();
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.c c = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.b().a().c();
        c.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c.g());
        String p = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().p();
        if (!TextUtils.isEmpty(p)) {
            c.a("X-Tt-Env", p);
            c.a("x-use-ppe", "1");
        }
        c.a("User-Agent", os.f3494if);
        c.c(a(j()));
        c.a(new a(iArr2, iArr, currentTimeMillis, z));
    }

    private boolean f() {
        long a2 = c.J().a("max_expire_time", 0L);
        if (this.e.get() && System.currentTimeMillis() > a2) {
            Logger.i("SdkSettingsHelper", "setting 缓存过期，再次发起请求...");
            this.e.set(false);
            c();
        }
        return System.currentTimeMillis() > a2;
    }

    public static List<String> g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("pangle");
        arrayList.add("gdt");
        arrayList.add("admob");
        arrayList.add("unity");
        arrayList.add("baidu");
        arrayList.add("sigmob");
        arrayList.add("mintegral");
        arrayList.add("ks");
        arrayList.add("klevin");
        return arrayList;
    }

    private JSONObject h() {
        JSONObject jSONObject = new JSONObject();
        Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
        List<String> g = g();
        if (e != null && g != null) {
            for (String str : g) {
                ITTAdapterConfiguration iTTAdapterConfiguration = e.get(DefaultAdapterClasses.getClassNameByAdnName(str));
                if (iTTAdapterConfiguration != null) {
                    try {
                        jSONObject.put(str, iTTAdapterConfiguration.getNetworkSdkVersion());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONObject;
    }

    public static JSONObject i() {
        Map<String, String> customInfos;
        JSONObject jSONObject = new JSONObject();
        GMConfigUserInfoForSegment f = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().f();
        if (f != null) {
            Map<String, String> customInfos2 = f.getCustomInfos();
            if (customInfos2 != null) {
                try {
                    for (String str : customInfos2.keySet()) {
                        jSONObject.put(str, customInfos2.get(str));
                    }
                    return jSONObject;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
        UserInfoForSegment s = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().s();
        if (s != null && (customInfos = s.getCustomInfos()) != null) {
            try {
                for (String str2 : customInfos.keySet()) {
                    jSONObject.put(str2, customInfos.get(str2));
                }
                return jSONObject;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private JSONObject j() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("media_sdk_version", "3.6.0.1");
            jSONObject.put("app_id", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b());
            jSONObject.put(ak.o, l0.a());
            jSONObject.put("app_version", l0.e());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.umeng.commonsdk.statistics.idtracking.b.f12304a, v.a(this.b));
            jSONObject2.put(f.f12309a, v.e(this.b));
            jSONObject2.put("imei_md5", x.a(v.e(this.b)));
            jSONObject2.put(com.umeng.commonsdk.statistics.idtracking.h.d, z.a());
            jSONObject2.put("gaid", g.c().a());
            jSONObject2.put("applog_did", v.d(this.b));
            jSONObject2.put("publisher_did", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().r());
            jSONObject2.put("conn_type", y.b(this.b));
            jSONObject2.put(ak.x, 1);
            jSONObject2.put(ak.y, String.valueOf(Build.VERSION.RELEASE));
            jSONObject2.put("vendor", Build.MANUFACTURER);
            jSONObject2.put("device_model", Build.MODEL);
            jSONObject2.put("mcc", d0.b());
            jSONObject2.put("mnc", d0.c());
            jSONObject2.put("time_zone", TimeZone.getDefault().getDisplayName(false, 0));
            jSONObject2.put("ip", m.a());
            jSONObject2.put("locale_language", m.b());
            jSONObject2.put("total_space", "" + m.h());
            jSONObject2.put("carrier_name", d0.a());
            jSONObject2.put(ak.J, Settings.Global.getString(this.b.getContentResolver(), ak.J));
            jSONObject2.put("pb", "");
            Formatter format = new Formatter().format("%.6f", Double.valueOf((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000.0d));
            jSONObject2.put("boot", "" + format.toString());
            jSONObject2.put("device_city", "");
            jSONObject2.put("country_code", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().h());
            jSONObject2.put("total_mem", "" + m.g());
            jSONObject2.put(ak.ai, Build.MODEL);
            jSONObject2.put(ak.N, Locale.getDefault().getLanguage());
            jSONObject2.put("android_os_version_int", Build.VERSION.SDK_INT);
            jSONObject.put("device", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("init_time", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().e());
            jSONObject.put("app", jSONObject3);
            jSONObject.put("grouping_params", k());
            JSONObject i2 = i();
            if (i2 != null) {
                jSONObject.put("user_defined_grouping_params", i2);
            }
            if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().w()) {
                jSONObject.put("etag", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().j());
            }
            d b = e.b(this.b);
            if (b != null) {
                jSONObject.put("latitude", b.f10984a);
                jSONObject.put("longitude", b.b);
            }
            jSONObject.put("adn_version_list", h());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject k() {
        String userId;
        JSONObject jSONObject = new JSONObject();
        GMConfigUserInfoForSegment f = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().f();
        if (f != null) {
            try {
                jSONObject.put("user_id", f.getUserId());
                jSONObject.put("channel", f.getChannel());
                jSONObject.put("sub_channel", f.getSubChannel());
                jSONObject.put("age", f.getAge());
                jSONObject.put("gender", f.getGender());
                jSONObject.put("user_value_group", f.getUserValueGroup());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject;
        }
        UserInfoForSegment s = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().s();
        if (s != null) {
            try {
                userId = s.getUserId();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } else {
            userId = "";
        }
        jSONObject.put("user_id", userId);
        jSONObject.put("channel", s != null ? s.getChannel() : "");
        jSONObject.put("sub_channel", s != null ? s.getSubChannel() : "");
        jSONObject.put("age", s != null ? s.getAge() : 0);
        jSONObject.put("gender", s != null ? s.getGender() : "");
        jSONObject.put("user_value_group", s != null ? s.getUserValueGroup() : "");
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() throws Throwable {
        long j2;
        c.J().f("server_dist_host");
        Logger.e("SdkSettingsHelper", "setting 配置拉取失败，尝试再次拉取... mLoadingSuccess:" + this.e.get() + " mRetryCount:" + (this.c.get() + 1));
        this.d.set(false);
        if (this.e.get()) {
            this.g.set(false);
            this.f.removeCallbacksAndMessages(null);
        } else if (this.c.get() > 3) {
            Logger.e("SdkSettingsHelper", "setting 最多尝试四次拉取... ");
        } else {
            this.g.set(true);
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.arg1 = this.c.get();
            int i2 = this.c.get();
            if (i2 < 3) {
                long j3 = 1;
                for (int i3 = 0; i3 <= i2; i3++) {
                    j3 *= 3;
                }
                j2 = j3 * 1000;
            } else {
                j2 = 120000;
            }
            this.c.incrementAndGet();
            this.f.removeCallbacksAndMessages(null);
            this.f.sendMessageDelayed(obtain, j2);
            Logger.i("SdkSettingsHelper", "setting 重试次数:" + (i2 + 1) + "  重试间隔：" + j2);
        }
    }

    public void a() {
        try {
            if (this.d.get()) {
                Logger.i("SdkSettingsHelper", "setting 正在加载，无需再次发起请求...");
            } else {
                ThreadHelper.runOnThreadPool(this);
            }
        } catch (Throwable th) {
            Logger.d("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    public void b() {
        v.d(this.b);
        try {
            if (!f()) {
                Logger.i("SdkSettingsHelper", "setting 缓存未过期，无需再次发起请求...");
            } else if (this.d.get()) {
                Logger.i("SdkSettingsHelper", "setting 正在加载，无需再次发起请求...");
            } else {
                ThreadHelper.runOnThreadPool(this);
            }
        } catch (Throwable th) {
            Logger.d("SdkSettingsHelper", "load sdk settings error: ", th);
        }
    }

    public b c() {
        Logger.e("SdkSettingsHelper", "setting resetRetryCount...");
        this.c.set(0);
        this.g.set(false);
        WeakHandler weakHandler = this.f;
        if (weakHandler != null) {
            weakHandler.removeCallbacksAndMessages(null);
        }
        return this;
    }

    public void d() {
        if (this.g.get()) {
            Logger.e("SdkSettingsHelper", "setting 正在尝试拉取配置中...");
            return;
        }
        Logger.e("SdkSettingsHelper", "setting 尝试拉取配置...");
        c();
        b();
    }

    @Override // com.bytedance.msdk.adapter.util.WeakHandler.IHandler
    public void handleMsg(Message message) {
        if (message.what != 1) {
            return;
        }
        int i2 = message.arg1;
        if (i2 == 3) {
            this.g.set(false);
        }
        StringBuilder m1016super = Cgoto.m1016super("setting 发起尝试拉取配置请求... mLoadingSuccess:");
        m1016super.append(this.e.get());
        m1016super.append("tryCount:");
        m1016super.append(i2 + 1);
        Logger.e("SdkSettingsHelper", m1016super.toString());
        try {
            if (this.e.get()) {
                return;
            }
            b();
        } catch (Throwable unused) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!y.a(this.b)) {
            try {
                this.f10910a.a(false);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        this.d.set(true);
        boolean v = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().v();
        if (!h) {
            h = true;
            h.a(v);
        }
        b(v);
    }
}
