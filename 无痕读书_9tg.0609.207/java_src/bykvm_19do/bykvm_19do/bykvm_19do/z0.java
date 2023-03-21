package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import bykvm_19do.bykvm_19do.bykvm_19do.e;
import bykvm_19do.bykvm_19do.bykvm_19do.v0;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public final class z0 {
    public static e i;
    public static String j;
    public a1 b;
    public boolean c;
    public d1 d;
    public final Context e;
    public Map<String, String> g;
    public Long h;

    /* renamed from: a  reason: collision with root package name */
    public final ReentrantLock f10656a = new ReentrantLock();
    public AtomicBoolean f = new AtomicBoolean(false);

    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f10657a;

        public a(boolean z) {
            this.f10657a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            z0.this.b(this.f10657a);
        }
    }

    public z0(Context context) {
        this.e = context;
        a(context);
        this.d = new d1(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        t0.b("Oaid#", "Oaid#initOaid");
        try {
            this.f10656a.lock();
            c1 c1Var = null;
            String str = null;
            if (z) {
                t0.b("Oaid#", "Oaid#initOaid clear");
                this.d.b();
                j = null;
                this.g = null;
            }
            t0.b("Oaid#", "Oaid#initOaid exec");
            c1 a2 = this.d.a();
            t0.b("Oaid#", "Oaid#initOaid fetch=" + a2);
            if (a2 != null) {
                j = a2.f10615a;
                this.g = a2.a();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Pair<String, Boolean> b = b(this.e);
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (b.first != null) {
                int i2 = -1;
                int i3 = 1;
                if (a2 != null) {
                    str = a2.b;
                    i2 = a2.f.intValue() + 1;
                }
                if (TextUtils.isEmpty(str)) {
                    str = UUID.randomUUID().toString();
                }
                String str2 = str;
                if (i2 > 0) {
                    i3 = i2;
                }
                c1 c1Var2 = new c1((String) b.first, str2, (Boolean) b.second, Long.valueOf(elapsedRealtime2), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(i3), this.h);
                this.d.a(c1Var2);
                c1Var = c1Var2;
            }
            if (c1Var != null) {
                j = c1Var.f10615a;
                this.g = c1Var.a();
            }
            t0.b("Oaid#", "Oaid#initOaid oaidModel=" + c1Var);
        } finally {
            this.f10656a.unlock();
            a(new e.a(j));
        }
    }

    private void a(Context context) {
        a1 a2 = b1.a(context);
        this.b = a2;
        if (a2 != null) {
            this.c = a2.a(context);
        } else {
            this.c = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0056, code lost:
        if (r0 != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
        if (r0 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
        r7.f10656a.unlock();
     */
    @androidx.annotation.Nullable
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.String> a(long r8) {
        /*
            r7 = this;
            boolean r0 = r7.c
            if (r0 != 0) goto L6
            r8 = 0
            return r8
        L6:
            r0 = 0
            r7.a(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Oaid#getOaid timeoutMills="
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "Oaid#"
            bykvm_19do.bykvm_19do.bykvm_19do.t0.a(r2, r1)
            java.util.Map<java.lang.String, java.lang.String> r1 = r7.g
            if (r1 != 0) goto L6f
            long r3 = android.os.SystemClock.elapsedRealtime()
            java.util.concurrent.locks.ReentrantLock r1 = r7.f10656a     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            boolean r0 = r1.tryLock(r8, r5)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            r8.<init>()     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.String r9 = "Oaid#getOaid locked="
            r8.append(r9)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            r8.append(r0)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.String r9 = ", took "
            r8.append(r9)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            long r5 = r5 - r3
            r8.append(r5)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.String r9 = " ms"
            r8.append(r9)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            bykvm_19do.bykvm_19do.bykvm_19do.t0.b(r2, r8)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            if (r0 == 0) goto L6f
            goto L61
        L59:
            r8 = move-exception
            goto L67
        L5b:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L59
            if (r0 == 0) goto L6f
        L61:
            java.util.concurrent.locks.ReentrantLock r8 = r7.f10656a
            r8.unlock()
            goto L6f
        L67:
            if (r0 == 0) goto L6e
            java.util.concurrent.locks.ReentrantLock r9 = r7.f10656a
            r9.unlock()
        L6e:
            throw r8
        L6f:
            java.lang.String r8 = "Oaid#getOaid return apiMap="
            java.lang.StringBuilder r8 = com.apk.Cgoto.m1016super(r8)
            java.util.Map<java.lang.String, java.lang.String> r9 = r7.g
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            bykvm_19do.bykvm_19do.bykvm_19do.t0.a(r2, r8)
            java.util.Map<java.lang.String, java.lang.String> r8 = r7.g
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.z0.a(long):java.util.Map");
    }

    public static void a(e eVar) {
        i = eVar;
        String str = j;
        if (str != null) {
            a(new e.a(str));
        }
    }

    public static void a(e.a aVar) {
        e eVar;
        if (aVar == null || (eVar = i) == null) {
            return;
        }
        eVar.a(aVar);
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static <K, V> void a(Map<K, V> map, K k, V v) {
        if (k == null || v == null) {
            return;
        }
        map.put(k, v);
    }

    public void a(boolean z) {
        if (z || this.f.compareAndSet(false, true)) {
            a(new a(z));
        }
    }

    public static void a(Runnable runnable) {
        u0.a("Oaid#-query", runnable);
    }

    @NonNull
    @WorkerThread
    private Pair<String, Boolean> b(Context context) {
        Boolean bool;
        a1.a b;
        a1 a1Var = this.b;
        String str = null;
        if (a1Var == null || (b = a1Var.b(context)) == null) {
            bool = null;
        } else {
            str = b.f10613a;
            bool = Boolean.valueOf(b.b);
            if (b instanceof v0.c) {
                this.h = Long.valueOf(((v0.c) b).c);
            }
        }
        return new Pair<>(str, bool);
    }
}
