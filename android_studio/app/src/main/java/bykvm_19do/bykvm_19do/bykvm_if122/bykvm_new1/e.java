package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* compiled from: AdLocationUtils.java */
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static long f10986a = 1800000;
    public static Handler b = new Handler(Looper.getMainLooper());

    /* compiled from: AdLocationUtils.java */
    /* loaded from: classes8.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10987a;
        public final /* synthetic */ LocationManager b;

        public a(Context context, LocationManager locationManager) {
            this.f10987a = context;
            this.b = locationManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.b(this.f10987a, this.b);
        }
    }

    /* compiled from: AdLocationUtils.java */
    /* loaded from: classes8.dex */
    public static class b implements LocationListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10988a;
        public final /* synthetic */ LocationManager b;

        public b(Context context, LocationManager locationManager) {
            this.f10988a = context;
            this.b = locationManager;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null && e.b(location)) {
                e.b(this.f10988a, location);
            }
            e.b(this.b, this);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    /* compiled from: AdLocationUtils.java */
    /* loaded from: classes8.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ LocationManager f10989a;
        public final /* synthetic */ LocationListener b;

        public c(LocationManager locationManager, LocationListener locationListener) {
            this.f10989a = locationManager;
            this.b = locationListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.b(this.f10989a, this.b);
        }
    }

    /* compiled from: AdLocationUtils.java */
    /* loaded from: classes8.dex */
    public static class d implements Callable<Location> {

        /* renamed from: a  reason: collision with root package name */
        public LocationManager f10990a;
        public String b;

        public d(LocationManager locationManager, String str) {
            this.f10990a = locationManager;
            this.b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Location call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            Location lastKnownLocation = this.f10990a.getLastKnownLocation(this.b);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            Logger.d("AdLocationUtils", "location:" + lastKnownLocation + ",getLastKnownLocation use time :" + currentTimeMillis2);
            return lastKnownLocation;
        }
    }

    @Nullable
    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d b(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseLocation()) {
            Context d2 = context == null ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() : context.getApplicationContext();
            if (d2 == null) {
                return null;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d a2 = a(d2);
            if (c(d2)) {
                int a3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.c.a(d2, "android.permission.ACCESS_FINE_LOCATION");
                int a4 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.c.a(d2, "android.permission.ACCESS_COARSE_LOCATION");
                if (a3 == 0 || a4 == 0) {
                    return d(d2);
                }
                return null;
            }
            return a2;
        }
        return null;
    }

    public static boolean c(Context context) {
        long a2 = c0.a((String) null, context).a("lbstime", -1L);
        return a2 == -1 || System.currentTimeMillis() - a2 > f10986a;
    }

    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d d(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d dVar = null;
        if (locationManager != null) {
            try {
                Location a2 = a(locationManager);
                if (a2 != null && b(a2)) {
                    b(context, a2);
                    dVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d((float) a2.getLatitude(), (float) a2.getLongitude());
                }
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    new Handler(Looper.getMainLooper()).post(new a(context, locationManager));
                } else {
                    b(context, locationManager);
                }
            } catch (Throwable th) {
                if (Logger.isDebug()) {
                    th.printStackTrace();
                }
            }
        }
        return dVar;
    }

    @Nullable
    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d a(Context context) {
        c0 a2 = c0.a((String) null, context);
        float a3 = a2.a("latitude", -1.0f);
        float a4 = a2.a("longitude", -1.0f);
        if (a3 == -1.0f || a4 == -1.0f) {
            return null;
        }
        return new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d(a3, a4);
    }

    public static String b(LocationManager locationManager) {
        if (locationManager.isProviderEnabled("gps")) {
            return "gps";
        }
        if (locationManager.isProviderEnabled("network")) {
            return "network";
        }
        if (locationManager.isProviderEnabled("passive")) {
            return "passive";
        }
        return null;
    }

    public static Location a(LocationManager locationManager) {
        Location a2 = a(locationManager, "gps");
        if (a2 == null) {
            a2 = a(locationManager, "network");
        }
        return a2 == null ? a(locationManager, "passive") : a2;
    }

    public static void b(Context context, LocationManager locationManager) {
        if (context == null || locationManager == null) {
            return;
        }
        b bVar = new b(context, locationManager);
        try {
            String b2 = b(locationManager);
            if (TextUtils.isEmpty(b2)) {
                return;
            }
            locationManager.requestSingleUpdate(b2, bVar, Looper.getMainLooper());
            b.postDelayed(new c(locationManager, bVar), 30000L);
        } catch (Throwable th) {
            if (Logger.isDebug()) {
                th.printStackTrace();
            }
            b(locationManager, bVar);
        }
    }

    public static Location a(LocationManager locationManager, String str) {
        try {
            FutureTask futureTask = new FutureTask(new d(locationManager, str));
            ThreadHelper.runOnThreadPool(futureTask);
            Location location = (Location) futureTask.get(1L, TimeUnit.SECONDS);
            Logger.d("AdLocationUtils", "location:" + location);
            return location;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void b(LocationManager locationManager, LocationListener locationListener) {
        if (locationManager == null || locationListener == null) {
            return;
        }
        try {
            locationManager.removeUpdates(locationListener);
        } catch (Throwable th) {
            if (Logger.isDebug()) {
                th.printStackTrace();
            }
        }
    }

    public static void b(Context context, Location location) {
        if (b(location)) {
            c0 a2 = c0.a((String) null, context);
            a2.b("latitude", (float) location.getLatitude());
            a2.b("longitude", (float) location.getLongitude());
            a2.b("lbstime", System.currentTimeMillis());
        }
    }

    public static boolean b(Location location) {
        return (location.getLatitude() == 0.0d || location.getLongitude() == 0.0d) ? false : true;
    }
}
