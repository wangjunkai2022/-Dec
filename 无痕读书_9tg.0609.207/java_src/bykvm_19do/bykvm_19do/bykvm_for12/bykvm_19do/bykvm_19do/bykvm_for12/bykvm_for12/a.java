package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.g;
import com.apk.Cgoto;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: AppConfig.java */
/* loaded from: classes8.dex */
public class a implements g.a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10664a;
    public final Context i;
    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a k;
    public int l;
    public volatile boolean b = false;
    public boolean c = true;
    public boolean d = false;
    public long e = 0;
    public long f = 0;
    public ThreadPoolExecutor g = null;
    public AtomicBoolean h = new AtomicBoolean(false);
    public volatile boolean j = false;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.g m = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.g(Looper.getMainLooper(), this);

    /* compiled from: AppConfig.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0021a implements Runnable {
        public RunnableC0021a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c();
        }
    }

    /* compiled from: AppConfig.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f10666a;

        public b(boolean z) {
            this.f10666a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c(this.f10666a);
        }
    }

    public a(Context context, int i) {
        this.i = context;
        this.f10664a = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.f.b(context);
        this.l = i;
    }

    private void d(boolean z) {
        if (this.d) {
            return;
        }
        if (this.c) {
            this.c = false;
            this.e = 0L;
            this.f = 0L;
        }
        long j = z ? 10800000L : 43200000L;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.e <= j || currentTimeMillis - this.f <= 120000) {
            return;
        }
        boolean a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.e.a(this.i);
        if (!this.j || a2) {
            a(a2);
        }
    }

    private boolean g() {
        String[] a2 = a();
        if (a2 != null && a2.length != 0) {
            a(0);
        }
        return false;
    }

    private bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a h() {
        if (this.k == null) {
            this.k = new a.b().a(10L, TimeUnit.SECONDS).b(10L, TimeUnit.SECONDS).c(10L, TimeUnit.SECONDS).a();
        }
        return this.k;
    }

    public synchronized void c() {
        if (System.currentTimeMillis() - this.e > 3600000) {
            this.e = System.currentTimeMillis();
            try {
                if (h.a().a(this.l).d() != null) {
                    h.a().a(this.l).d().c();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void e() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            if (this.f10664a) {
                d();
            } else {
                c();
            }
        } catch (Throwable unused) {
        }
    }

    public void f() {
        b(false);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.g.a
    public void handleMsg(Message message) {
        int i = message.what;
        if (i == 101) {
            this.d = false;
            this.e = System.currentTimeMillis();
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b.a("TNCManager", "doRefresh, succ");
            if (this.c) {
                f();
            }
            this.h.set(false);
        } else if (i != 102) {
        } else {
            this.d = false;
            if (this.c) {
                f();
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b.a("TNCManager", "doRefresh, error");
            this.h.set(false);
        }
    }

    public synchronized void b(boolean z) {
        if (this.f10664a) {
            d(z);
        } else if (this.e <= 0) {
            try {
                b().execute(new RunnableC0021a());
            } catch (Throwable unused) {
            }
        }
    }

    public boolean a(boolean z) {
        StringBuilder m1016super = Cgoto.m1016super("doRefresh: updating state ");
        m1016super.append(this.h.get());
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b.a("TNCManager", m1016super.toString());
        if (!this.h.compareAndSet(false, true)) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b.a("TNCManager", "doRefresh, already running");
            return false;
        }
        if (z) {
            this.f = System.currentTimeMillis();
        }
        b().execute(new b(z));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.g gVar = this.m;
        if (gVar != null) {
            gVar.sendEmptyMessage(i);
        }
    }

    public void c(boolean z) {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b.a("TNCManager", "doRefresh, actual request");
        d();
        this.d = true;
        if (!z) {
            this.m.sendEmptyMessage(102);
            return;
        }
        try {
            g();
        } catch (Exception unused) {
            this.h.set(false);
        }
    }

    public String[] a() {
        String[] c2 = h.a().a(this.l).b() != null ? h.a().a(this.l).b().c() : null;
        return (c2 == null || c2.length <= 0) ? new String[0] : c2;
    }

    public ThreadPoolExecutor b() {
        if (this.g == null) {
            synchronized (a.class) {
                if (this.g == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    this.g = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return this.g;
    }

    /* compiled from: AppConfig.java */
    /* loaded from: classes8.dex */
    public class c extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int f10667a;

        public c(int i) {
            this.f10667a = i;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b bVar2) {
            JSONObject jSONObject;
            if (bVar2 == null || !bVar2.e()) {
                a.this.a(this.f10667a + 1);
                return;
            }
            String str = null;
            try {
                jSONObject = new JSONObject(bVar2.a());
            } catch (Exception unused) {
                jSONObject = null;
            }
            if (jSONObject == null) {
                a.this.a(this.f10667a + 1);
                return;
            }
            try {
                str = jSONObject.getString("message");
            } catch (Exception unused2) {
            }
            if (!"success".equals(str)) {
                a.this.a(this.f10667a + 1);
                return;
            }
            try {
                if (a.this.a(jSONObject)) {
                    a.this.b(101);
                } else {
                    a.this.a(this.f10667a + 1);
                }
            } catch (Exception unused3) {
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, IOException iOException) {
            a.this.a(this.f10667a + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            jSONObject = new JSONObject(str);
            if (!"success".equals(jSONObject.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor edit = this.i.getSharedPreferences("m_ss_app_config", 0).edit();
            edit.putLong("last_refresh_time", System.currentTimeMillis());
            edit.apply();
        }
        if (h.a().a(this.l).d() != null) {
            h.a().a(this.l).d().a(jSONObject2);
            return true;
        }
        return true;
    }

    public synchronized void d() {
        if (this.j) {
            return;
        }
        this.j = true;
        long j = this.i.getSharedPreferences("m_ss_app_config", 0).getLong("last_refresh_time", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (j > currentTimeMillis) {
            j = currentTimeMillis;
        }
        this.e = j;
        if (h.a().a(this.l).d() != null) {
            h.a().a(this.l).d().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        String[] a2 = a();
        if (a2 != null && a2.length > i) {
            String str = a2[i];
            if (TextUtils.isEmpty(str)) {
                b(102);
                return;
            }
            try {
                String a3 = a(str);
                if (TextUtils.isEmpty(a3)) {
                    b(102);
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.a a4 = h().a();
                a4.b(a3);
                a(a4);
                a4.a(new c(i));
                return;
            } catch (Throwable th) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b.a("AppConfig", "try app config exception: " + th);
                return;
            }
        }
        b(102);
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Cgoto.m996else("https://", str, "/get_domains/v4/");
    }

    private void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.a aVar) {
        if (aVar == null) {
            return;
        }
        Address a2 = h.a().a(this.l).b() != null ? h.a().a(this.l).b().a(this.i) : null;
        if (a2 != null && a2.hasLatitude() && a2.hasLongitude()) {
            aVar.b("latitude", a2.getLatitude() + "");
            aVar.b("longitude", a2.getLongitude() + "");
            String locality = a2.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                aVar.b("city", Uri.encode(locality));
            }
        }
        if (this.b) {
            aVar.b(TTDownloadField.TT_FORCE, "1");
        }
        try {
            aVar.b("abi", Build.SUPPORTED_ABIS[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (h.a().a(this.l).b() != null) {
            aVar.b("aid", h.a().a(this.l).b().a() + "");
            aVar.b("device_platform", h.a().a(this.l).b().d());
            aVar.b("channel", h.a().a(this.l).b().e());
            aVar.b("version_code", h.a().a(this.l).b().b() + "");
            aVar.b("custom_info_1", h.a().a(this.l).b().f());
        }
    }
}
