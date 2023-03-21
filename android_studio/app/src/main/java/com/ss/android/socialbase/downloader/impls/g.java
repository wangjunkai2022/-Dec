package com.ss.android.socialbase.downloader.impls;

import android.net.Uri;
import android.text.TextUtils;
import com.apk.ch0;
import com.apk.dh0;
import com.apk.mg0;
import com.apk.nd0;
import com.apk.ng0;
import com.apk.xg0;
import com.apk.xh0;
import com.apk.zf0;
import com.apk.zg0;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collections;
import java.util.List;
import java.util.zip.GZIPInputStream;

/* loaded from: classes7.dex */
public class g implements IDownloadHttpService {

    /* renamed from: a  reason: collision with root package name */
    public final com.ss.android.socialbase.downloader.i.h<String, xg0> f11964a = new com.ss.android.socialbase.downloader.i.h<>(4, 8);

    private xg0 a(String str, final String str2) {
        try {
            final String host = Uri.parse(str).getHost();
            if (!TextUtils.isEmpty(host) && !TextUtils.isEmpty(str2)) {
                String str3 = host + "_" + str2;
                synchronized (this.f11964a) {
                    xg0 xg0Var = this.f11964a.get(str3);
                    if (xg0Var != null) {
                        return xg0Var;
                    }
                    xg0.Cdo t = com.ss.android.socialbase.downloader.downloader.c.t();
                    ng0 ng0Var = new ng0() { // from class: com.ss.android.socialbase.downloader.impls.g.2
                        @Override // com.apk.ng0
                        public List<InetAddress> lookup(String str4) throws UnknownHostException {
                            if (TextUtils.equals(host, str4)) {
                                return Collections.singletonList(InetAddress.getByName(str2));
                            }
                            return ((mg0) ng0.f3226do).lookup(str4);
                        }
                    };
                    if (t != null) {
                        nd0.m1875new(ng0Var, "dns");
                        if (!nd0.m1870do(ng0Var, t.f5575catch)) {
                            t.f5581extends = null;
                        }
                        t.f5575catch = ng0Var;
                        xg0 xg0Var2 = new xg0(t);
                        synchronized (this.f11964a) {
                            this.f11964a.put(str3, xg0Var2);
                        }
                        return xg0Var2;
                    }
                    throw null;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return com.ss.android.socialbase.downloader.downloader.c.s();
    }

    @Override // com.ss.android.socialbase.downloader.network.IDownloadHttpService
    public com.ss.android.socialbase.downloader.network.i downloadWithConnection(int i, String str, List<com.ss.android.socialbase.downloader.model.c> list) throws IOException {
        String str2;
        xg0 s;
        zg0.Cdo cdo = new zg0.Cdo();
        cdo.m3203goto(str);
        if (list == null || list.size() <= 0) {
            str2 = null;
        } else {
            str2 = null;
            for (com.ss.android.socialbase.downloader.model.c cVar : list) {
                String a2 = cVar.a();
                if (str2 == null && "ss_d_request_host_ip_114".equals(a2)) {
                    str2 = cVar.b();
                } else {
                    cdo.m3200do(a2, com.ss.android.socialbase.downloader.i.f.g(cVar.b()));
                }
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            s = a(str, str2);
        } else {
            s = com.ss.android.socialbase.downloader.downloader.c.s();
        }
        if (s != null) {
            final zf0 m2991do = s.m2991do(cdo.m3204if());
            final ch0 mo3007throw = ((xh0) m2991do).mo3007throw();
            if (mo3007throw != null) {
                final dh0 dh0Var = mo3007throw.f614goto;
                if (dh0Var != null) {
                    InputStream m456for = dh0Var.m456for();
                    String m339try = mo3007throw.m339try(AsyncHttpClient.HEADER_CONTENT_ENCODING);
                    final GZIPInputStream gZIPInputStream = (m339try == null || !AsyncHttpClient.ENCODING_GZIP.equalsIgnoreCase(m339try) || (m456for instanceof GZIPInputStream)) ? m456for : new GZIPInputStream(m456for);
                    return new com.ss.android.socialbase.downloader.network.e() { // from class: com.ss.android.socialbase.downloader.impls.g.1
                        @Override // com.ss.android.socialbase.downloader.network.i
                        public InputStream a() throws IOException {
                            return gZIPInputStream;
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

                        @Override // com.ss.android.socialbase.downloader.network.i
                        public void d() {
                            try {
                                if (dh0Var != null) {
                                    dh0Var.close();
                                }
                                if (m2991do == null || m2991do.mo2997break()) {
                                    return;
                                }
                                m2991do.cancel();
                            } catch (Throwable unused) {
                            }
                        }

                        @Override // com.ss.android.socialbase.downloader.network.a
                        public String e() {
                            return "";
                        }

                        @Override // com.ss.android.socialbase.downloader.network.g
                        public String a(String str3) {
                            return mo3007throw.m339try(str3);
                        }
                    };
                }
                return null;
            }
            throw new IOException("can't get response");
        }
        throw new IOException("can't get httpClient");
    }
}
