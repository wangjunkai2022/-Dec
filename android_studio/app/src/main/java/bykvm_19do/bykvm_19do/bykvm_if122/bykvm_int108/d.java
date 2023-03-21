package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.e0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.h0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.i0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.j;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.p;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.r;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.a;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.config.DefaultAdapterClasses;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConfig;
import com.bytedance.msdk.api.v2.GMAdConfig;
import com.bytedance.msdk.api.v2.GMPrivacyConfig;
import com.bytedance.msdk.api.v2.IGMLiveTokenInjectionAuth;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: InitHelper.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static long f10975a;
    public static boolean b;
    public static Runnable c = new b();
    public static long d;
    public static j e;

    /* compiled from: InitHelper.java */
    /* loaded from: classes8.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10976a;

        public a(Context context) {
            this.f10976a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.a(this.f10976a);
            r.a(this.f10976a);
        }
    }

    /* compiled from: InitHelper.java */
    /* loaded from: classes8.dex */
    public static class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m1016super = Cgoto.m1016super("--==-- queueSize: ");
            m1016super.append(((ThreadPoolExecutor) ThreadHelper.getMSDKExecutor()).getQueue().size());
            Logger.d("TMe", m1016super.toString());
            ThreadHelper.postDelayOnMSDKThread(d.c, 5000L);
        }
    }

    /* compiled from: InitHelper.java */
    /* loaded from: classes8.dex */
    public static class c implements j.b {
        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.j.b
        public void a() {
            Logger.d("TTMediationSDK", "--==-- AppStateListener on foreground");
            long unused = d.d = SystemClock.elapsedRealtime();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.j.b
        public void b() {
            Logger.d("TTMediationSDK", "--==-- AppStateListener on background");
            h.a(SystemClock.elapsedRealtime() - d.d);
            if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a()) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.b.a();
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.a().a();
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.c().a();
        }
    }

    /* compiled from: InitHelper.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.d$d  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class RunnableC0049d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ StackTraceElement[] f10977a;

        public RunnableC0049d(StackTraceElement[] stackTraceElementArr) {
            this.f10977a = stackTraceElementArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b(this.f10977a);
        }
    }

    public static void b(Context context) {
        int k = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().k();
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.b.a(new a.b().a(new k()).a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a.a(k, k, 172800000L)).a(false).a(new l()).a(m.b).a(), context);
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.b.c();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.b();
    }

    public static long c() {
        return f10975a;
    }

    public static void d() {
        try {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(true);
        } catch (Throwable th) {
            StringBuilder m1016super = Cgoto.m1016super("InitHelper-->initSetting->loadData Exception=");
            m1016super.append(th.toString());
            Logger.e("TTMediationSDK", m1016super.toString());
        }
    }

    public static void e() {
        Context d2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
        if (d2 == null) {
            return;
        }
        try {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.b().a().a(d2, false, true, new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a(d2));
        } catch (Exception unused) {
        }
    }

    public static boolean f() {
        return b;
    }

    public static void g() {
        Application a2 = a.b.a();
        if (a2 == null) {
            Logger.d("TTMediationSDK", "AppStateListener注册失败, app = null");
            return;
        }
        Logger.d("TTMediationSDK", "AppStateListener注册成功");
        j jVar = e;
        if (jVar != null) {
            jVar.a(a2);
        }
        j jVar2 = new j();
        e = jVar2;
        jVar2.a(a2, new c());
    }

    public static void h() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().v()) {
            b(stackTrace);
        } else {
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0049d(stackTrace), ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
        }
    }

    public static void i() {
        ITTAdapterConfiguration value;
        try {
            Map<String, ITTAdapterConfiguration> e2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
            if (e2 == null || e2.size() <= 0) {
                return;
            }
            for (Map.Entry<String, ITTAdapterConfiguration> entry : e2.entrySet()) {
                if (entry != null && (value = entry.getValue()) != null) {
                    value.setPrivacyConfig(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(Context context) {
        if (!e.d()) {
            Logger.d("TMe", "-----==---- 延时上报sdk_init");
            e.e();
        } else {
            Logger.d("TMe", "-----==---- 正常上报sdk_init");
            h.b(-1L);
        }
        if (i0.b(context)) {
            h.a();
        }
    }

    @Deprecated
    public static void a(@NonNull TTAdConfig tTAdConfig, Context context) {
        a(null, tTAdConfig, context);
    }

    public static void a(@NonNull GMAdConfig gMAdConfig, Context context) {
        a(gMAdConfig, null, context);
    }

    public static void a(GMAdConfig gMAdConfig, TTAdConfig tTAdConfig, Context context) {
        Logger.e("TTMediationSDK_SDK_Init", "msdk_init.............");
        b = true;
        f10975a = SystemClock.elapsedRealtime();
        a(context);
        e0.a(context);
        h0.c();
        e.a(context.getApplicationContext());
        e();
        if (gMAdConfig != null) {
            a(gMAdConfig);
        } else if (tTAdConfig != null) {
            a(tTAdConfig);
        }
        ThreadHelper.runOnThreadPool(new a(context));
        v.m(context);
        g.c().b();
        d();
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a()) {
            b(context);
        } else {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.a().b();
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.c().b();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().b(true);
        b();
        g();
        c(context);
        h();
        if (Logger.isDebug()) {
            ThreadHelper.runOnMSDKThread(c);
        }
    }

    public static void b() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()).a();
    }

    public static void b(StackTraceElement[] stackTraceElementArr) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().s()) {
            Map<String, String> g = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().g();
            h.a((TTBaseAd) null, (AdSlot) null, t.a(stackTraceElementArr), 1);
            h.b(t.a(g));
        }
    }

    public static void a(GMPrivacyConfig gMPrivacyConfig) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMPrivacyConfig);
        i();
    }

    @Deprecated
    public static void a(TTAdConfig tTAdConfig) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(System.currentTimeMillis());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getAppId());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b(tTAdConfig.getAppName());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().d(tTAdConfig.isPangleAllowShowNotify());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().e(tTAdConfig.isPangleAllowShowPageWhenScreenLock());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b(tTAdConfig.getPangleTitleBarTheme());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getPangleDirectDownloadNetworkType());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getPangleNeedClearTaskReset());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().g(tTAdConfig.isPangleUseTextureView());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().f(tTAdConfig.isPanglePaid());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().f(tTAdConfig.getPublisherDid());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().c(tTAdConfig.isOpenAdnTest());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().d(tTAdConfig.getPangleData());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getExtraData());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getPrivacyConfig());
        i();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getAdapterConfigurationClasses());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().c(tTAdConfig.getMediatedNetworkConfigurations());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().d(tTAdConfig.getRequestOptions());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getUserInfoForSegment(), true);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(tTAdConfig.getPanglePluginUpdateConfig());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().e(tTAdConfig.getPangleKeywords());
    }

    public static void a(GMAdConfig gMAdConfig) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(System.currentTimeMillis());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getAppId());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b(gMAdConfig.getAppName());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().d(gMAdConfig.getGMPangleOption().isAllowShowNotify());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().e(gMAdConfig.getGMPangleOption().isAllowShowPageWhenScreenLock());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b(gMAdConfig.getGMPangleOption().getTitleBarTheme());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getGMPangleOption().getDirectDownloadNetworkType());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getGMPangleOption().getNeedClearTaskReset());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().g(gMAdConfig.getGMPangleOption().isIsUseTextureView());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().f(gMAdConfig.getGMPangleOption().isPaid());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().f(gMAdConfig.getPublisherDid());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().c(gMAdConfig.isOpenAdnTest());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().d(gMAdConfig.getGMPangleOption().getData());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getGMPangleOption().getExtraData());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getPrivacyConfig());
        i();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getGMConfigUserInfoForSegment(), true);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getGMPangleOption().getPluginUpdateConfig());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().e(gMAdConfig.getGMPangleOption().getKeywords());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b(gMAdConfig.getLocalExtra());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.isHttps());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b(gMAdConfig.isOpenPangleCustom());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().a(gMAdConfig.getCutstomLocalConfig());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().j(gMAdConfig.getGMGdtOption().isWxInstalled());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().c(gMAdConfig.getGMGdtOption().getOpensdkVer());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().h(gMAdConfig.getGMGdtOption().isSupportH265());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().i(gMAdConfig.getGMGdtOption().isSupportSplashZoomout());
        a(gMAdConfig.getGmLiveTokenInjectionAuth());
    }

    public static void a(IGMLiveTokenInjectionAuth iGMLiveTokenInjectionAuth) {
        ITTAdapterConfiguration iTTAdapterConfiguration;
        try {
            Map<String, ITTAdapterConfiguration> e2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
            if (e2 == null || e2.size() <= 0 || (iTTAdapterConfiguration = e2.get(DefaultAdapterClasses.getClassNameByAdnName("pangle"))) == null) {
                return;
            }
            iTTAdapterConfiguration.setInjectionAuth(iGMLiveTokenInjectionAuth);
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context) {
        if (context != null) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.b(context);
        }
    }
}
