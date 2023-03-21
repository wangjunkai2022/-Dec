package com.ss.android.socialbase.downloader.impls;

/* loaded from: classes7.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static volatile com.ss.android.socialbase.downloader.downloader.m f11968a;
    public static volatile com.ss.android.socialbase.downloader.downloader.m b;

    public static com.ss.android.socialbase.downloader.downloader.m a(boolean z) {
        if (z && com.ss.android.socialbase.downloader.downloader.c.S()) {
            if (b == null) {
                synchronized (l.class) {
                    if (b == null) {
                        b = com.ss.android.socialbase.downloader.downloader.c.T().b();
                    }
                }
            }
            return b;
        }
        if (f11968a == null) {
            synchronized (l.class) {
                if (f11968a == null) {
                    f11968a = new p();
                }
            }
        }
        return f11968a;
    }
}
