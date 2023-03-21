package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.umeng.analytics.pro.b;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: SamsungDeviceIdSupplier.java */
/* loaded from: classes7.dex */
public class ag implements z {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12138a = "DeviceIdService";
    public static final String b = "com.samsung.android.deviceidservice";
    public static final String c = "com.samsung.android.deviceidservice.DeviceIdService";
    public CountDownLatch e;
    public String d = "";
    public final ServiceConnection f = new ServiceConnection() { // from class: com.umeng.analytics.pro.ag.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                b a2 = b.a.a(iBinder);
                ag.this.d = a2.a();
            } catch (RemoteException | NullPointerException e) {
                e.getMessage();
            }
            ag.this.e.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClassName(b, c);
            if (context.bindService(intent, this.f, 1)) {
                return;
            }
            throw new UnsupportedOperationException("not supported service");
        } catch (Error | Exception e) {
            e.getMessage();
            this.e.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.f);
        } catch (Error | Exception e) {
            e.getMessage();
        }
    }

    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        this.e = new CountDownLatch(1);
        try {
            try {
                b(context);
                this.e.await(500L, TimeUnit.MILLISECONDS);
                return this.d;
            } catch (InterruptedException e) {
                e.getMessage();
                c(context);
                return null;
            }
        } finally {
            c(context);
        }
    }
}
