package com.ss.android.downloadlib.a.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.ss.android.downloadlib.a.b.c;
import com.ss.android.downloadlib.addownload.j;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class a {
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static volatile a g;

    /* renamed from: a  reason: collision with root package name */
    public c f11572a;
    public Context k;
    public boolean h = true;
    public boolean i = false;
    public volatile boolean j = false;
    public final List<Pair<b, d>> l = new ArrayList();
    public final List<InterfaceC0134a> b = new ArrayList();
    public final ServiceConnection m = new ServiceConnection() { // from class: com.ss.android.downloadlib.a.b.a.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (a.this.c) {
                a.this.a(false);
                a.this.f11572a = c.a.a(iBinder);
                a.this.c();
                for (InterfaceC0134a interfaceC0134a : a.this.b) {
                    interfaceC0134a.a();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (a.this.c) {
                a.this.a(false);
                a.this.f11572a = null;
                for (InterfaceC0134a interfaceC0134a : a.this.b) {
                    interfaceC0134a.b();
                }
            }
        }
    };
    public String n = "";
    public final Object c = new Object();

    /* renamed from: com.ss.android.downloadlib.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0134a {
        void a();

        void b();
    }

    public static a a() {
        if (g == null) {
            synchronized (a.class) {
                if (g == null) {
                    g = new a();
                }
            }
        }
        return g;
    }

    public void b() {
        if (this.f11572a != null) {
            this.k.unbindService(this.m);
            this.f11572a = null;
        }
        this.b.clear();
        this.l.clear();
    }

    public void c() {
        for (Pair<b, d> pair : this.l) {
            try {
                this.f11572a.a((b) pair.first, (d) pair.second);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
        this.l.clear();
    }

    public boolean d() {
        return this.j;
    }

    public boolean a(Context context, boolean z) {
        if (TextUtils.isEmpty(d)) {
            JSONObject i = j.i();
            String optString = i.optString(ak.aB);
            d = com.ss.android.socialbase.appdownloader.f.c.a(i.optString("q"), optString);
            e = com.ss.android.socialbase.appdownloader.f.c.a(i.optString(ak.aG), optString);
            f = com.ss.android.socialbase.appdownloader.f.c.a(i.optString("w"), optString);
        }
        this.i = z;
        if (context != null) {
            this.k = context.getApplicationContext();
            if (TextUtils.isEmpty(f)) {
                f = this.k.getPackageName();
            }
            if (this.f11572a != null || d()) {
                return true;
            }
            return this.k.bindService(a(context), this.m, 33);
        }
        return true;
    }

    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setAction(d);
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() != 1) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            if (e.equals(str)) {
                ComponentName componentName = new ComponentName(str, str2);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    public void a(b bVar, d dVar) {
        synchronized (this.c) {
            bVar.e = f;
            if (TextUtils.isEmpty(bVar.f)) {
                bVar.f = this.n;
            }
            if (this.f11572a != null) {
                try {
                    this.f11572a.a(bVar, dVar);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            } else if (d() || a(this.k, this.i)) {
                this.l.add(Pair.create(bVar, dVar));
            }
        }
    }

    public void a(boolean z) {
        this.j = z;
    }
}
