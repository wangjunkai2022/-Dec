package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_19do.e;
import com.apk.Cgoto;
import com.bytedance.mapplog.util.TTEncryptUtils;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* compiled from: GMAppLogUtil.java */
/* loaded from: classes8.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f11002a = "";
    public static volatile String b = "";
    public static volatile boolean c;
    public static volatile ExecutorService d;

    /* compiled from: GMAppLogUtil.java */
    /* loaded from: classes8.dex */
    public static class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    /* compiled from: GMAppLogUtil.java */
    /* loaded from: classes8.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f11003a;

        public b(String str) {
            this.f11003a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            String unused = p.f11002a = this.f11003a;
            v.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), p.f11002a);
            if (TextUtils.isEmpty(p.f11002a)) {
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e.f();
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.e.g();
        }
    }

    /* compiled from: GMAppLogUtil.java */
    /* loaded from: classes8.dex */
    public static class d implements bykvm_19do.bykvm_19do.bykvm_19do.e {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.e
        public void a(e.a aVar) {
            if (!TextUtils.isEmpty(p.b) || aVar == null || TextUtils.isEmpty(aVar.f10618a)) {
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("applod ------------: oaid = ");
            m1016super.append(aVar.f10618a);
            Logger.i("TTMediationSDK_SDK_Init", m1016super.toString());
            String unused = p.b = aVar.f10618a;
        }
    }

    /* compiled from: GMAppLogUtil.java */
    /* loaded from: classes8.dex */
    public static class e implements bykvm_19do.bykvm_19do.bykvm_19do.g {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f11004a;

        public e(Context context) {
            this.f11004a = context;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.g
        public String a() {
            return v.i(this.f11004a);
        }
    }

    public static String d() {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        if (TextUtils.isEmpty(b)) {
            f();
        }
        return b;
    }

    public static void e() {
        bykvm_19do.bykvm_19do.bykvm_19do.a.a(new c());
    }

    public static void f() {
        bykvm_19do.bykvm_19do.bykvm_19do.a.a(new d());
    }

    public static void g() {
        if (d == null) {
            synchronized (p.class) {
                if (d == null) {
                    d = ThreadHelper.initSingleThreadExecutor("applog", 5, new a());
                }
            }
        }
    }

    /* compiled from: GMAppLogUtil.java */
    /* loaded from: classes8.dex */
    public static class c implements bykvm_19do.bykvm_19do.bykvm_19do.c {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.c
        public void a(String str, String str2, String str3) {
            Logger.i("TTMediationSDK_SDK_Init", "applod from onIdLoaded ------------: did = " + str);
            p.d(str);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.c
        public void a(boolean z, JSONObject jSONObject) {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.c
        public void b(boolean z, JSONObject jSONObject) {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.c
        public void a(boolean z, String str, String str2, String str3, String str4, String str5, String str6) {
            Logger.i("TTMediationSDK_SDK_Init", "applod from onRemoteIdGet ------------: did = " + str2);
            p.d(str2);
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(f11002a)) {
            return f11002a;
        }
        f11002a = bykvm_19do.bykvm_19do.bykvm_19do.a.g();
        StringBuilder m1016super = Cgoto.m1016super("applod ------------: did from get = ");
        m1016super.append(f11002a);
        Logger.i("TTMediationSDK_SDK_Init", m1016super.toString());
        if (TextUtils.isEmpty(f11002a)) {
            e();
        }
        return f11002a;
    }

    public static byte[] a(byte[] bArr, int i) {
        return TTEncryptUtils.m3552do(bArr, i);
    }

    public static void b(Context context) {
        if (c) {
            return;
        }
        c = true;
        bykvm_19do.bykvm_19do.bykvm_19do.h hVar = new bykvm_19do.bykvm_19do.bykvm_19do.h("299838", "gromore");
        hVar.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUsePhoneState());
        hVar.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseLocation());
        hVar.a(new e(context));
        bykvm_19do.bykvm_19do.bykvm_19do.a.a(context, hVar);
        c();
        d();
        HashMap hashMap = new HashMap();
        hashMap.put("host_appid", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b());
        hashMap.put("is_plugin", Boolean.FALSE);
        hashMap.put("sdk_version", "3.6.0.1");
        hashMap.put(PluginConstants.KEY_PLUGIN_VERSION, "3.6.0.1");
        hashMap.put("channel", "gromore");
        hashMap.put("sdk_api_version", "3.6.0.1");
        bykvm_19do.bykvm_19do.bykvm_19do.a.a(hashMap);
        Logger.i("TTMediationSDK_SDK_Init", "applod ------------: init end ");
    }

    public static void a(Context context) {
        b(context);
    }

    public static void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        g();
        d.execute(new b(str));
    }
}
