package com.ss.android.socialbase.downloader.impls;

import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.downloader.c;
import com.ss.android.socialbase.downloader.downloader.t;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.h.h;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.swl.gg.ggs.SwlAdSplashView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes7.dex */
public class d implements com.ss.android.socialbase.downloader.downloader.j {
    public t b;
    public volatile boolean c;
    public volatile boolean d;
    public com.ss.android.socialbase.downloader.h.h f;
    public h.a e = new h.a() { // from class: com.ss.android.socialbase.downloader.impls.d.1
        @Override // com.ss.android.socialbase.downloader.h.h.a
        public void a(Message message) {
            if (message.what == 1) {
                com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.d.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            d.this.i();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final k f11958a = new k();

    public d() {
        this.f = null;
        if (com.ss.android.socialbase.downloader.g.a.c().a("fix_sigbus_downloader_db")) {
            if (!com.ss.android.socialbase.downloader.i.f.a() && com.ss.android.socialbase.downloader.downloader.c.S()) {
                this.b = com.ss.android.socialbase.downloader.downloader.c.T().a(new c.a.InterfaceC0169a() { // from class: com.ss.android.socialbase.downloader.impls.d.2
                    @Override // com.ss.android.socialbase.downloader.downloader.c.a.InterfaceC0169a
                    public void a() {
                        d.this.b = new com.ss.android.socialbase.downloader.b.e();
                    }
                });
            } else {
                this.b = new com.ss.android.socialbase.downloader.b.e();
            }
        } else {
            this.b = new com.ss.android.socialbase.downloader.b.e();
        }
        this.c = false;
        this.f = new com.ss.android.socialbase.downloader.h.h(Looper.getMainLooper(), this.e);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        synchronized (this) {
            this.c = true;
            notifyAll();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> c(String str) {
        return this.f11958a.c(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean d() {
        return this.c;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean e() {
        if (this.c) {
            return true;
        }
        synchronized (this) {
            if (!this.c) {
                com.ss.android.socialbase.downloader.c.a.d("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting start!!!!");
                try {
                    wait(5000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                com.ss.android.socialbase.downloader.c.a.d("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting end!!!!");
            }
        }
        return this.c;
    }

    public t f() {
        return this.b;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo g(int i) {
        DownloadInfo g = this.f11958a.g(i);
        c(g);
        return g;
    }

    public void h() {
        long j;
        if (com.ss.android.socialbase.downloader.g.a.c().a("task_resume_delay")) {
            j = SwlAdSplashView.SPLASH_AD_TIMEOUT;
        } else {
            j = Build.VERSION.SDK_INT >= 23 ? 1000L : 5000L;
        }
        this.f.sendMessageDelayed(this.f.obtainMessage(1), j);
    }

    public void i() {
        List<String> list;
        ArrayList arrayList;
        DownloadInfo downloadInfo;
        DownloadInfo downloadInfo2;
        if (this.c) {
            if (this.d) {
                com.ss.android.socialbase.downloader.c.a.b("DefaultDownloadCache", "resumeUnCompleteTask: has resumed, return!!!");
                return;
            }
            this.d = true;
            if (com.ss.android.socialbase.downloader.i.f.a()) {
                com.ss.android.socialbase.downloader.downloader.l w = com.ss.android.socialbase.downloader.downloader.c.w();
                if (w != null) {
                    list = w.a();
                    arrayList = (list == null || list.isEmpty()) ? null : new ArrayList();
                } else {
                    list = null;
                    arrayList = null;
                }
                SparseArray sparseArray = new SparseArray();
                synchronized (this) {
                    SparseArray<DownloadInfo> a2 = this.f11958a.a();
                    for (int i = 0; i < a2.size(); i++) {
                        int keyAt = a2.keyAt(i);
                        if (keyAt != 0 && (downloadInfo2 = a2.get(keyAt)) != null) {
                            sparseArray.put(keyAt, downloadInfo2);
                        }
                    }
                }
                if (sparseArray.size() == 0) {
                    return;
                }
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    int keyAt2 = sparseArray.keyAt(i2);
                    if (keyAt2 != 0 && (downloadInfo = (DownloadInfo) sparseArray.get(keyAt2)) != null) {
                        int realStatus = downloadInfo.getRealStatus();
                        int statusAtDbInit = downloadInfo.getStatusAtDbInit();
                        if (statusAtDbInit >= 1 && statusAtDbInit <= 11) {
                            com.ss.android.socialbase.downloader.d.a.a(com.ss.android.socialbase.downloader.downloader.c.g(), downloadInfo, (BaseException) null, -5);
                        }
                        if (list != null && arrayList != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).b("enable_notification_ui") >= 2 || realStatus != -2 || downloadInfo.isPauseReserveOnWifi())) {
                            downloadInfo.setDownloadFromReserveWifi(false);
                            arrayList.add(downloadInfo);
                        }
                    }
                }
                if (w == null || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                w.a(arrayList, 1);
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public Map<Long, com.ss.android.socialbase.downloader.f.i> l(int i) {
        Map<Long, com.ss.android.socialbase.downloader.f.i> l = this.f11958a.l(i);
        if (l == null || l.isEmpty()) {
            Map<Long, com.ss.android.socialbase.downloader.f.i> l2 = this.b.l(i);
            this.f11958a.a(i, l2);
            return l2;
        }
        return l;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void m(int i) {
        this.f11958a.m(i);
        this.b.m(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<com.ss.android.socialbase.downloader.f.i> n(int i) {
        List<com.ss.android.socialbase.downloader.f.i> n = this.f11958a.n(i);
        return (n == null || n.size() == 0) ? this.b.n(i) : n;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo b(int i) {
        return this.f11958a.b(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<com.ss.android.socialbase.downloader.model.b> c(int i) {
        return this.f11958a.c(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> d(String str) {
        return this.f11958a.d(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean f(int i) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.p(i);
            } else {
                this.b.f(i);
            }
        } else {
            this.b.f(i);
        }
        return this.f11958a.f(i);
    }

    public k a() {
        return this.f11958a;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> b(String str) {
        return this.f11958a.b(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void c() {
        try {
            this.f11958a.c();
        } catch (SQLiteException e) {
            e.printStackTrace();
        }
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.f();
                return;
            } else {
                this.b.c();
                return;
            }
        }
        this.b.c();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void d(int i) {
        this.f11958a.d(i);
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.o(i);
                return;
            } else {
                this.b.d(i);
                return;
            }
        }
        this.b.d(i);
    }

    public void g() {
        List<com.ss.android.socialbase.downloader.model.b> list;
        DownloadInfo downloadInfo;
        com.ss.android.socialbase.downloader.downloader.c.a(com.ss.android.socialbase.downloader.constants.d.SYNC_START);
        final SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        final SparseArray<List<com.ss.android.socialbase.downloader.model.b>> sparseArray2 = new SparseArray<>();
        synchronized (this.f11958a) {
            SparseArray<DownloadInfo> a2 = this.f11958a.a();
            for (int i = 0; i < a2.size(); i++) {
                int keyAt = a2.keyAt(i);
                if (keyAt != 0 && (downloadInfo = a2.get(keyAt)) != null) {
                    sparseArray.put(keyAt, downloadInfo);
                }
            }
            SparseArray<List<com.ss.android.socialbase.downloader.model.b>> f = this.f11958a.f();
            for (int i2 = 0; i2 < f.size(); i2++) {
                int keyAt2 = f.keyAt(i2);
                if (keyAt2 != 0 && (list = f.get(keyAt2)) != null) {
                    sparseArray2.put(keyAt2, new CopyOnWriteArrayList(list));
                }
            }
        }
        this.b.a(sparseArray, sparseArray2, new com.ss.android.socialbase.downloader.b.d() { // from class: com.ss.android.socialbase.downloader.impls.d.3
            @Override // com.ss.android.socialbase.downloader.b.d
            public void a() {
                synchronized (d.this.f11958a) {
                    SparseArray<DownloadInfo> a3 = d.this.f11958a.a();
                    if (sparseArray != null) {
                        for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                            int keyAt3 = sparseArray.keyAt(i3);
                            if (keyAt3 != 0) {
                                a3.put(keyAt3, (DownloadInfo) sparseArray.get(keyAt3));
                            }
                        }
                    }
                    SparseArray<List<com.ss.android.socialbase.downloader.model.b>> f2 = d.this.f11958a.f();
                    if (sparseArray2 != null) {
                        for (int i4 = 0; i4 < sparseArray2.size(); i4++) {
                            int keyAt4 = sparseArray2.keyAt(i4);
                            if (keyAt4 != 0) {
                                f2.put(keyAt4, (List) sparseArray2.get(keyAt4));
                            }
                        }
                    }
                }
                d.this.j();
                d.this.h();
                com.ss.android.socialbase.downloader.downloader.c.a(com.ss.android.socialbase.downloader.constants.d.SYNC_SUCCESS);
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> a(String str) {
        return this.f11958a.a(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> b() {
        return this.f11958a.b();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(com.ss.android.socialbase.downloader.model.b bVar) {
        synchronized (this.f11958a) {
            this.f11958a.a(bVar);
        }
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.a(bVar);
                return;
            } else {
                this.b.a(bVar);
                return;
            }
        }
        this.b.a(bVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(com.ss.android.socialbase.downloader.model.b bVar) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.a(bVar);
                return;
            } else {
                this.b.a(bVar);
                return;
            }
        }
        this.b.a(bVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo h(int i) {
        DownloadInfo h = this.f11958a.h(i);
        c(h);
        return h;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo j(int i) {
        DownloadInfo j = this.f11958a.j(i);
        c(j);
        return j;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo d(int i, long j) {
        DownloadInfo d = this.f11958a.d(i, j);
        b(i, (List<com.ss.android.socialbase.downloader.model.b>) null);
        return d;
    }

    private void c(DownloadInfo downloadInfo) {
        a(downloadInfo, true);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo b(int i, long j) {
        DownloadInfo b = this.f11958a.b(i, j);
        b(i, (List<com.ss.android.socialbase.downloader.model.b>) null);
        return b;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo c(int i, long j) {
        DownloadInfo c = this.f11958a.c(i, j);
        b(i, (List<com.ss.android.socialbase.downloader.model.b>) null);
        return c;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean e(int i) {
        try {
            if (com.ss.android.socialbase.downloader.i.f.b()) {
                com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
                if (a2 != null) {
                    a2.n(i);
                } else {
                    this.b.e(i);
                }
            } else {
                this.b.e(i);
            }
        } catch (SQLiteException e) {
            e.printStackTrace();
        }
        return this.f11958a.e(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.f11958a.a(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(int i, List<com.ss.android.socialbase.downloader.model.b> list) {
        try {
            a(this.f11958a.b(i));
            if (list == null) {
                list = this.f11958a.c(i);
            }
            if (com.ss.android.socialbase.downloader.i.f.b()) {
                com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
                if (a2 != null) {
                    a2.b(i, list);
                    return;
                } else {
                    this.b.b(i, list);
                    return;
                }
            }
            this.b.b(i, list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i, int i2, long j) {
        this.f11958a.a(i, i2, j);
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.a(i, i2, j);
                return;
            } else {
                this.b.a(i, i2, j);
                return;
            }
        }
        this.b.a(i, i2, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i, int i2, int i3, long j) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.a(i, i2, i3, j);
                return;
            } else {
                this.b.a(i, i2, i3, j);
                return;
            }
        }
        this.b.a(i, i2, i3, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i, int i2, int i3, int i4) {
        if (com.ss.android.socialbase.downloader.i.f.b()) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.a(i, i2, i3, i4);
                return;
            } else {
                this.b.a(i, i2, i3, i4);
                return;
            }
        }
        this.b.a(i, i2, i3, i4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i, int i2) {
        DownloadInfo a2 = this.f11958a.a(i, i2);
        c(a2);
        return a2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean a2 = this.f11958a.a(downloadInfo);
        c(downloadInfo);
        return a2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i, long j, String str, String str2) {
        DownloadInfo a2 = this.f11958a.a(i, j, str, str2);
        c(a2);
        return a2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo i(int i) {
        DownloadInfo i2 = this.f11958a.i(i);
        c(i2);
        return i2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i, long j) {
        DownloadInfo a2 = this.f11958a.a(i, j);
        a(a2, false);
        return a2;
    }

    private void a(DownloadInfo downloadInfo, boolean z) {
        if (downloadInfo == null) {
            return;
        }
        if (!com.ss.android.socialbase.downloader.i.f.b()) {
            this.b.a(downloadInfo);
        } else if (z) {
            com.ss.android.socialbase.downloader.downloader.m a2 = l.a(true);
            if (a2 != null) {
                a2.c(downloadInfo);
            } else {
                this.b.a(downloadInfo);
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i, List<com.ss.android.socialbase.downloader.model.b> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f11958a.a(i, list);
        if (com.ss.android.socialbase.downloader.i.f.c()) {
            this.b.b(i, list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(int i, Map<Long, com.ss.android.socialbase.downloader.f.i> map) {
        this.f11958a.a(i, map);
        this.b.a(i, map);
        return false;
    }
}
