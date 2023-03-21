package com.ss.android.socialbase.downloader.f;

import androidx.annotation.NonNull;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;

/* loaded from: classes7.dex */
public class l implements e {

    /* renamed from: a  reason: collision with root package name */
    public final i f11884a;
    public final com.ss.android.socialbase.downloader.model.e b;
    public final e c;

    public l(DownloadInfo downloadInfo, b bVar, i iVar) throws BaseException {
        this.f11884a = iVar;
        this.b = a(downloadInfo, iVar);
        this.c = new h(bVar, this);
    }

    public e a() {
        return this.c;
    }

    @Override // com.ss.android.socialbase.downloader.f.e
    public void b(@NonNull a aVar) throws IOException {
        this.b.a(aVar.f11875a, 0, aVar.c);
        this.f11884a.b(aVar.c);
    }

    public void c() throws IOException {
        this.b.c();
    }

    public void d() {
        com.ss.android.socialbase.downloader.i.f.a(this.b);
    }

    public i e() {
        return this.f11884a;
    }

    private com.ss.android.socialbase.downloader.model.e a(DownloadInfo downloadInfo, i iVar) throws BaseException {
        com.ss.android.socialbase.downloader.model.e a2 = com.ss.android.socialbase.downloader.i.f.a(downloadInfo, downloadInfo.getTempPath(), downloadInfo.getTempName(), com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("flush_buffer_size_byte", -1));
        try {
            a2.a(iVar.e());
            return a2;
        } catch (IOException e) {
            throw new BaseException(1054, e);
        }
    }

    public void b() throws IOException {
        this.b.b();
    }
}
