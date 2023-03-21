package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.umeng.analytics.pro.a;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: CoolpadDeviceIdSupplier.java */
/* loaded from: classes7.dex */
public class ab implements z {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12132a = "Coolpad";
    public static final String b = "com.coolpad.deviceidsupport";
    public static final String c = "com.coolpad.deviceidsupport.DeviceIdService";
    public static a d;
    public CountDownLatch f;
    public Context g;
    public String e = "";
    public final ServiceConnection h = new ServiceConnection() { // from class: com.umeng.analytics.pro.ab.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                a unused = ab.d = a.AbstractBinderC0184a.a(iBinder);
                ab.this.e = ab.d.b(ab.this.g.getPackageName());
                String unused2 = ab.this.e;
            } catch (RemoteException | NullPointerException e) {
                e.getMessage();
            }
            ab.this.f.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            a unused = ab.d = null;
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(b, c));
            context.bindService(intent, this.h, 1);
        } catch (Throwable th) {
            th.getMessage();
            this.f.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.h);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        this.g = context.getApplicationContext();
        this.f = new CountDownLatch(1);
        try {
            b(context);
            this.f.await(500L, TimeUnit.MILLISECONDS);
            return this.e;
        } catch (InterruptedException e) {
            e.getMessage();
            return null;
        } finally {
            c(context);
        }
    }
}
