package com.ss.android.socialbase.downloader.impls;

import com.apk.ch0;
import com.apk.xg0;
import com.apk.xh0;
import com.apk.zf0;
import com.apk.zg0;
import java.io.IOException;
import java.util.List;

/* loaded from: classes7.dex */
public class f implements com.ss.android.socialbase.downloader.network.h {
    @Override // com.ss.android.socialbase.downloader.network.h
    public com.ss.android.socialbase.downloader.network.g a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws IOException {
        xg0 s = com.ss.android.socialbase.downloader.downloader.c.s();
        if (s != null) {
            zg0.Cdo cdo = new zg0.Cdo();
            cdo.m3203goto(str);
            cdo.m3207try("HEAD", null);
            if (list != null && list.size() > 0) {
                for (com.ss.android.socialbase.downloader.model.c cVar : list) {
                    cdo.m3200do(cVar.a(), com.ss.android.socialbase.downloader.i.f.g(cVar.b()));
                }
            }
            final zf0 m2991do = s.m2991do(cdo.m3204if());
            final ch0 mo3007throw = ((xh0) m2991do).mo3007throw();
            if (mo3007throw != null) {
                if (com.ss.android.socialbase.downloader.i.a.a(2097152)) {
                    mo3007throw.close();
                }
                return new com.ss.android.socialbase.downloader.network.g() { // from class: com.ss.android.socialbase.downloader.impls.f.1
                    @Override // com.ss.android.socialbase.downloader.network.g
                    public String a(String str2) {
                        return mo3007throw.m339try(str2);
                    }

                    @Override // com.ss.android.socialbase.downloader.network.g
                    public int b() throws IOException {
                        return mo3007throw.f618try;
                    }

                    @Override // com.ss.android.socialbase.downloader.network.g
                    public void c() {
                        zf0 zf0Var = m2991do;
                        if (zf0Var == null || zf0Var.mo2997break()) {
                            return;
                        }
                        m2991do.cancel();
                    }
                };
            }
            throw new IOException("can't get response");
        }
        throw new IOException("can't get httpClient");
    }
}
