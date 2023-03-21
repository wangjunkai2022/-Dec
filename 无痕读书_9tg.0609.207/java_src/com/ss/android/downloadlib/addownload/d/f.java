package com.ss.android.downloadlib.addownload.d;

import android.content.Context;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static f f11647a;
    public List<d> b;

    public f() {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(new e());
        this.b.add(new g());
        this.b.add(new b());
        this.b.add(new a());
    }

    public static f a() {
        if (f11647a == null) {
            synchronized (f.class) {
                if (f11647a == null) {
                    f11647a = new f();
                }
            }
        }
        return f11647a;
    }

    public void a(com.ss.android.downloadad.api.a.b bVar, int i, c cVar) {
        List<d> list = this.b;
        if (list != null && list.size() != 0 && bVar != null) {
            DownloadInfo a2 = com.ss.android.downloadlib.g.a((Context) null).a(bVar.a());
            if (a2 != null && AdBaseConstants.MIME_APK.equals(a2.getMimeType())) {
                boolean z = com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("pause_optimise_switch", 0) == 1;
                for (d dVar : this.b) {
                    if (z || (dVar instanceof g)) {
                        if (dVar.a(bVar, i, cVar)) {
                            return;
                        }
                    }
                }
                cVar.a(bVar);
                return;
            }
            cVar.a(bVar);
            return;
        }
        cVar.a(bVar);
    }
}
