package com.ss.android.downloadlib.f;

import com.ss.android.socialbase.appdownloader.c.i;
import com.ss.android.socialbase.appdownloader.c.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public class c implements j {

    /* renamed from: a  reason: collision with root package name */
    public static volatile c f11715a;
    public List<j> b;

    public c() {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(new b());
        this.b.add(new a());
    }

    public static c a() {
        if (f11715a == null) {
            synchronized (c.class) {
                if (f11715a == null) {
                    f11715a = new c();
                }
            }
        }
        return f11715a;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.j
    public void a(DownloadInfo downloadInfo, i iVar) {
        if (downloadInfo != null && this.b.size() != 0) {
            a(downloadInfo, 0, iVar);
        } else if (iVar != null) {
            iVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final DownloadInfo downloadInfo, final int i, final i iVar) {
        if (i != this.b.size() && i >= 0) {
            this.b.get(i).a(downloadInfo, new i() { // from class: com.ss.android.downloadlib.f.c.1
                @Override // com.ss.android.socialbase.appdownloader.c.i
                public void a() {
                    c.this.a(downloadInfo, i + 1, iVar);
                }
            });
        } else {
            iVar.a();
        }
    }
}
