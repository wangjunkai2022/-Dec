package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.l;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.m;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.u;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.z;
import com.baidu.tts.loopj.AsyncHttpClient;
import java.io.IOException;
import java.util.List;
/* compiled from: BridgeInterceptor.java */
/* loaded from: classes8.dex */
public final class a implements t {

    /* renamed from: a  reason: collision with root package name */
    public final m f10717a;

    public a(m mVar) {
        this.f10717a = mVar;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.t
    public a0 a(t.a aVar) throws IOException {
        y b = aVar.b();
        y.a f = b.f();
        z a2 = b.a();
        if (a2 != null) {
            u b2 = a2.b();
            if (b2 != null) {
                f.b(AsyncHttpClient.HEADER_CONTENT_TYPE, b2.toString());
            }
            long a3 = a2.a();
            if (a3 != -1) {
                f.b("Content-Length", Long.toString(a3));
                f.a("Transfer-Encoding");
            } else {
                f.b("Transfer-Encoding", "chunked");
                f.a("Content-Length");
            }
        }
        boolean z = false;
        if (b.a("Host") == null) {
            f.b("Host", bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(b.g(), false));
        }
        if (b.a("Connection") == null) {
            f.b("Connection", "Keep-Alive");
        }
        if (b.a(AsyncHttpClient.HEADER_ACCEPT_ENCODING) == null && b.a("Range") == null) {
            z = true;
            f.b(AsyncHttpClient.HEADER_ACCEPT_ENCODING, AsyncHttpClient.ENCODING_GZIP);
        }
        List<l> a4 = this.f10717a.a(b.g());
        if (!a4.isEmpty()) {
            f.b("Cookie", a(a4));
        }
        if (b.a("User-Agent") == null) {
            f.b("User-Agent", bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.d.a());
        }
        a0 a5 = aVar.a(f.a());
        e.a(this.f10717a, b.g(), a5.m());
        a0.a a6 = a5.p().a(b);
        if (z && AsyncHttpClient.ENCODING_GZIP.equalsIgnoreCase(a5.b(AsyncHttpClient.HEADER_CONTENT_ENCODING)) && e.b(a5)) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.j jVar = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.j(a5.i().k());
            a6.a(a5.m().a().b(AsyncHttpClient.HEADER_CONTENT_ENCODING).b("Content-Length").a());
            a6.a(new h(a5.b(AsyncHttpClient.HEADER_CONTENT_TYPE), -1L, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.l.a(jVar)));
        }
        return a6.a();
    }

    private String a(List<l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            l lVar = list.get(i);
            sb.append(lVar.a());
            sb.append('=');
            sb.append(lVar.b());
        }
        return sb.toString();
    }
}
