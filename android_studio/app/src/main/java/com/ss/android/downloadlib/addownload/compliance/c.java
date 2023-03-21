package com.ss.android.downloadlib.addownload.compliance;

import com.ss.android.socialbase.downloader.i.h;

/* loaded from: classes7.dex */
public class c extends h<Long, com.ss.android.downloadlib.addownload.b.b> {

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static c f11631a = new c();
    }

    public static c a() {
        return a.f11631a;
    }

    public c() {
        super(16, 16);
    }

    public void a(com.ss.android.downloadlib.addownload.b.b bVar) {
        if (bVar == null) {
            return;
        }
        put(Long.valueOf(bVar.a()), bVar);
    }

    public com.ss.android.downloadlib.addownload.b.b a(long j, long j2) {
        return get(get(Long.valueOf(j)) != null ? Long.valueOf(j) : Long.valueOf(j2));
    }

    public com.ss.android.downloadlib.addownload.b.b a(long j) {
        return get(Long.valueOf(j));
    }
}
