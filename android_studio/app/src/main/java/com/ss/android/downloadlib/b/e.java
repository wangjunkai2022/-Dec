package com.ss.android.downloadlib.b;

import androidx.recyclerview.widget.FastScroller;
import com.ss.android.socialbase.downloader.a.a;

/* loaded from: classes7.dex */
public class e implements a.InterfaceC0150a {

    /* renamed from: a  reason: collision with root package name */
    public long f11673a;

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static e f11675a = new e();
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0150a
    public void b() {
        this.f11673a = System.currentTimeMillis();
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0150a
    public void c() {
    }

    public e() {
        this.f11673a = 0L;
        com.ss.android.socialbase.downloader.a.a.a().a(this);
    }

    public static e a() {
        return a.f11675a;
    }

    public void b(d dVar) {
        if (dVar == null) {
            return;
        }
        int i = FastScroller.HIDE_DELAY_AFTER_DRAGGING_MS;
        int optInt = com.ss.android.downloadlib.addownload.j.i().optInt("check_an_result_delay", FastScroller.HIDE_DELAY_AFTER_DRAGGING_MS);
        if (optInt > 0) {
            i = optInt;
        }
        a(dVar, i);
    }

    public void a(final d dVar, final long j) {
        if (dVar == null) {
            return;
        }
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.b.e.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.ss.android.socialbase.downloader.a.a.a().c() && System.currentTimeMillis() - e.this.f11673a > j) {
                    dVar.a(false);
                } else {
                    dVar.a(true);
                }
            }
        }, j);
    }

    public void a(d dVar) {
        a(dVar, 5000L);
    }
}
