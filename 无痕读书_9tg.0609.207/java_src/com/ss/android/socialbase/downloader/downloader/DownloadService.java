package com.ss.android.socialbase.downloader.downloader;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.apk.Cgoto;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
/* loaded from: classes7.dex */
public class DownloadService extends Service {
    public static final String b = DownloadService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public o f11853a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String str = b;
        StringBuilder m1016super = Cgoto.m1016super("onBind downloadServiceHandler != null:");
        m1016super.append(this.f11853a != null);
        com.ss.android.socialbase.downloader.c.a.b(str, m1016super.toString());
        o oVar = this.f11853a;
        if (oVar != null) {
            return oVar.a(intent);
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c.a(this);
        o y = c.y();
        this.f11853a = y;
        y.a(new WeakReference(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (com.ss.android.socialbase.downloader.c.a.a()) {
            com.ss.android.socialbase.downloader.c.a.b(b, "Service onDestroy");
        }
        o oVar = this.f11853a;
        if (oVar != null) {
            oVar.d();
            this.f11853a = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, final int i, final int i2) {
        if (com.ss.android.socialbase.downloader.c.a.a()) {
            com.ss.android.socialbase.downloader.c.a.b(b, "DownloadService onStartCommand");
        }
        this.f11853a.c();
        ExecutorService l = c.l();
        if (l != null) {
            l.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.DownloadService.1
                @Override // java.lang.Runnable
                public void run() {
                    o oVar = DownloadService.this.f11853a;
                    if (oVar != null) {
                        oVar.a(intent, i, i2);
                    }
                }
            });
        }
        return c.j() ? 2 : 3;
    }
}
