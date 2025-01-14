package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.SparseArray;
import com.apk.Cgoto;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public abstract class a implements o {
    public static final String e = "a";
    public volatile boolean c;
    public WeakReference<Service> f;

    /* renamed from: a  reason: collision with root package name */
    public final SparseArray<List<DownloadTask>> f11856a = new SparseArray<>();
    public volatile boolean b = false;
    public volatile boolean d = false;
    public Handler g = new Handler(Looper.getMainLooper());
    public Runnable h = new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.a.1
        @Override // java.lang.Runnable
        public void run() {
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b(a.e, "tryDownload: 2 try");
            }
            if (a.this.b) {
                return;
            }
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b(a.e, "tryDownload: 2 error");
            }
            a.this.startService(c.N(), null);
        }
    };

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(Intent intent, int i, int i2) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(n nVar) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(WeakReference weakReference) {
        this.f = weakReference;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean b() {
        String str = e;
        StringBuilder m1016super = Cgoto.m1016super("isServiceForeground = ");
        m1016super.append(this.c);
        com.ss.android.socialbase.downloader.c.a.c(str, m1016super.toString());
        return this.c;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void c() {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void c(DownloadTask downloadTask) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d() {
        this.b = false;
    }

    public void e() {
        SparseArray<List<DownloadTask>> clone;
        synchronized (this.f11856a) {
            String str = e;
            com.ss.android.socialbase.downloader.c.a.b(str, "resumePendingTask pendingTasks.size:" + this.f11856a.size());
            clone = this.f11856a.clone();
            this.f11856a.clear();
        }
        com.ss.android.socialbase.downloader.impls.a C = c.C();
        if (C != null) {
            for (int i = 0; i < clone.size(); i++) {
                List<DownloadTask> list = clone.get(clone.keyAt(i));
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        String str2 = e;
                        StringBuilder m1016super = Cgoto.m1016super("resumePendingTask key:");
                        m1016super.append(downloadTask.getDownloadId());
                        com.ss.android.socialbase.downloader.c.a.b(str2, m1016super.toString());
                        C.a(downloadTask);
                    }
                }
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void startService() {
        if (this.b) {
            return;
        }
        if (com.ss.android.socialbase.downloader.c.a.a()) {
            com.ss.android.socialbase.downloader.c.a.b(e, "startService");
        }
        startService(c.N(), null);
    }

    public void startService(Context context, ServiceConnection serviceConnection) {
    }

    public void stopService(Context context, ServiceConnection serviceConnection) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean a() {
        return this.b;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public IBinder a(Intent intent) {
        com.ss.android.socialbase.downloader.c.a.b(e, "onBind Abs");
        return new Binder();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void b(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if (!this.b) {
            if (com.ss.android.socialbase.downloader.c.a.a()) {
                com.ss.android.socialbase.downloader.c.a.b(e, "tryDownload but service is not alive");
            }
            if (com.ss.android.socialbase.downloader.i.a.a(262144)) {
                a(downloadTask);
                if (!this.d) {
                    if (com.ss.android.socialbase.downloader.c.a.a()) {
                        com.ss.android.socialbase.downloader.c.a.b(e, "tryDownload: 1");
                    }
                    startService(c.N(), null);
                    this.d = true;
                    return;
                }
                this.g.removeCallbacks(this.h);
                this.g.postDelayed(this.h, 10L);
                return;
            }
            a(downloadTask);
            startService(c.N(), null);
            return;
        }
        com.ss.android.socialbase.downloader.c.a.b(e, "tryDownload when isServiceAlive");
        e();
        com.ss.android.socialbase.downloader.impls.a C = c.C();
        if (C != null) {
            String str = e;
            StringBuilder m1016super = Cgoto.m1016super("tryDownload current task: ");
            m1016super.append(downloadTask.getDownloadId());
            com.ss.android.socialbase.downloader.c.a.b(str, m1016super.toString());
            C.a(downloadTask);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(int i, Notification notification) {
        WeakReference<Service> weakReference = this.f;
        if (weakReference != null && weakReference.get() != null) {
            String str = e;
            StringBuilder m1020throw = Cgoto.m1020throw("startForeground  id = ", i, ", service = ");
            m1020throw.append(this.f.get());
            m1020throw.append(",  isServiceAlive = ");
            m1020throw.append(this.b);
            com.ss.android.socialbase.downloader.c.a.c(str, m1020throw.toString());
            try {
                this.f.get().startForeground(i, notification);
                this.c = true;
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        com.ss.android.socialbase.downloader.c.a.d(e, "startForeground: downloadService is null, do nothing!");
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(boolean z) {
        WeakReference<Service> weakReference = this.f;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        String str = e;
        StringBuilder m1016super = Cgoto.m1016super("stopForeground  service = ");
        m1016super.append(this.f.get());
        m1016super.append(",  isServiceAlive = ");
        m1016super.append(this.b);
        com.ss.android.socialbase.downloader.c.a.c(str, m1016super.toString());
        try {
            this.c = false;
            this.f.get().stopForeground(z);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        int downloadId = downloadTask.getDownloadId();
        synchronized (this.f11856a) {
            String str = e;
            com.ss.android.socialbase.downloader.c.a.b(str, "pendDownloadTask pendingTasks.size:" + this.f11856a.size() + " downloadId:" + downloadId);
            List<DownloadTask> list = this.f11856a.get(downloadId);
            if (list == null) {
                list = new ArrayList<>();
                this.f11856a.put(downloadId, list);
            }
            String str2 = e;
            com.ss.android.socialbase.downloader.c.a.b(str2, "before pendDownloadTask taskArray.size:" + list.size());
            list.add(downloadTask);
            String str3 = e;
            com.ss.android.socialbase.downloader.c.a.b(str3, "after pendDownloadTask pendingTasks.size:" + this.f11856a.size());
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void a(int i) {
        com.ss.android.socialbase.downloader.c.a.a(i);
    }
}
