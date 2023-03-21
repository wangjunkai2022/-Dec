package com.ss.android.socialbase.downloader.e;

import com.ss.android.socialbase.downloader.i.f;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    public final InputStream f11869a;
    public final com.ss.android.socialbase.downloader.f.a b;

    public c(InputStream inputStream, int i) {
        this.f11869a = inputStream;
        this.b = new com.ss.android.socialbase.downloader.f.a(i);
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public com.ss.android.socialbase.downloader.f.a a() throws IOException {
        com.ss.android.socialbase.downloader.f.a aVar = this.b;
        aVar.c = this.f11869a.read(aVar.f11875a);
        return this.b;
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public void a(com.ss.android.socialbase.downloader.f.a aVar) {
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public void b() {
        f.a(this.f11869a);
    }
}
