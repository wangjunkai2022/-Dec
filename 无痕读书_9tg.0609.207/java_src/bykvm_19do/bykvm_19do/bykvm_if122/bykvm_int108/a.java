package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.j;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.m;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.config.IGMInitAdnResult;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.ad.custom.init.GMCustomAdapterConfiguration;
import com.swl.gg.ggs.SwlAdSplashView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: InitADNHelper.java */
/* loaded from: classes8.dex */
public class a {
    public static final bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.a d = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.a();
    public static Map<String, Pair<Boolean, String>> e = new ConcurrentHashMap();
    public static final CountDownLatch f = new CountDownLatch(1);

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f10965a = new AtomicBoolean(false);
    public final AtomicBoolean b = new AtomicBoolean(false);
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.b c;

    /* compiled from: InitADNHelper.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class RunnableC0048a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (a.e.containsKey("pangle")) {
                a.k();
            }
            Logger.i("TTMediationSDK_SDK_Init", "------------------ GroMore 支持ADN初始化信息 start ---------------------");
            for (Map.Entry entry : a.e.entrySet()) {
                if (entry.getValue() != null) {
                    if (((Boolean) ((Pair) entry.getValue()).first).booleanValue()) {
                        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().g((String) entry.getKey())) {
                            StringBuilder m1016super = Cgoto.m1016super("adnName = ");
                            m1016super.append((String) entry.getKey());
                            m1016super.append(" 自定义ADN调用初始化方法成功，请开发者确保接入的自定义ADN初始化结果");
                            Logger.e("TTMediationSDK_SDK_Init", m1016super.toString());
                        } else {
                            StringBuilder m1016super2 = Cgoto.m1016super("adnName = ");
                            m1016super2.append((String) entry.getKey());
                            m1016super2.append(" 初始化成功");
                            Logger.i("TTMediationSDK_SDK_Init", m1016super2.toString());
                        }
                    } else {
                        StringBuilder m1016super3 = Cgoto.m1016super("adnName = ");
                        m1016super3.append((String) entry.getKey());
                        m1016super3.append(" 初始化失败 ");
                        m1016super3.append((String) ((Pair) entry.getValue()).second);
                        Logger.e("TTMediationSDK_SDK_Init", m1016super3.toString());
                    }
                }
            }
            Logger.i("TTMediationSDK_SDK_Init", "------------------ GroMore 支持ADN初始化信息 end ---------------------");
        }
    }

    /* compiled from: InitADNHelper.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10966a;

        public b(Context context) {
            this.f10966a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.i(this.f10966a);
            a.this.f(this.f10966a);
            a.this.h(this.f10966a);
            a.this.f10965a.set(true);
            a.this.h();
        }
    }

    /* compiled from: InitADNHelper.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10967a;

        public c(Context context) {
            this.f10967a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b(this.f10967a);
            a.this.a(this.f10967a);
            a.this.c(this.f10967a);
            a.this.j(this.f10967a);
            a.this.g(this.f10967a);
            a.k(this.f10967a);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.c.a(this.f10967a);
            a.this.b.set(true);
            a.this.h();
        }
    }

    /* compiled from: InitADNHelper.java */
    /* loaded from: classes8.dex */
    public class d implements IGMInitAdnResult {
        public d(a aVar) {
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void fail(@NonNull AdError adError) {
            a.j();
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void success() {
            a.j();
        }
    }

    /* compiled from: InitADNHelper.java */
    /* loaded from: classes8.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10968a;

        public e(Context context) {
            this.f10968a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.d(this.f10968a);
            a.this.e(this.f10968a);
        }
    }

    /* compiled from: InitADNHelper.java */
    /* loaded from: classes8.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f10965a.get() && a.this.b.get() && a.this.c != null) {
                a.this.c.a();
            }
        }
    }

    public static void k() {
        try {
            f.await(SwlAdSplashView.SPLASH_AD_TIMEOUT, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    public static Map<String, ITTAdapterConfiguration> e() {
        return d.a();
    }

    public static String f() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a("pangle");
        String a3 = a2 != null ? a2.a() : null;
        return TextUtils.isEmpty(a3) ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b() : a3;
    }

    public static boolean g() {
        return f.getCount() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(Context context) {
        new h(context).e();
    }

    public static synchronized void i() {
        synchronized (a.class) {
            ThreadHelper.runOnThreadPool(new RunnableC0048a());
        }
    }

    public static void j() {
        f.countDown();
    }

    public static int c() {
        return e.size();
    }

    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.a d() {
        return d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        ThreadHelper.runOnThreadPool(new c(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Context context) {
        new g(context).e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ThreadHelper.runOnUiThread(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Context context) {
        j.a(context).a(new d(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Context context) {
        new l(context).e();
    }

    public static void k(Context context) {
        new m(context).e();
    }

    public static void a(String str, Pair<Boolean, String> pair) {
        e.put(str, pair);
    }

    public static Map<String, Object> b(Map<String, Object> map, String str) {
        return d.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), map, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) {
        new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.e(context).e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        b bVar = new b(context);
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            bVar.run();
        } else {
            ThreadHelper.runOnUiThread(bVar);
        }
    }

    public static String a(Map<String, Object> map, String str) {
        return d.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), map, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.b(context).e();
    }

    public static GMCustomAdapterConfiguration a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return d.b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context) {
        new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.f(context).e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.a(context).e();
    }

    public void a(Context context, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_int108.b bVar) {
        this.c = bVar;
        this.f10965a.set(false);
        this.b.set(false);
        ThreadHelper.runOnUiThread(new e(context));
    }
}
