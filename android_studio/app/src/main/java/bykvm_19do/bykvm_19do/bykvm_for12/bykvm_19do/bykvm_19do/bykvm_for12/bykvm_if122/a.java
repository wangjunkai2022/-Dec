package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122;

import android.net.Uri;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.f;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: GetExecutor.java */
/* loaded from: classes8.dex */
public class a extends b {
    public static final d g = new d.a().b().a();
    public d e;
    public Map<String, String> f;

    static {
        new d.a().a();
    }

    public a(v vVar) {
        super(vVar);
        this.e = g;
        this.f = new HashMap();
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a aVar) {
        y.a aVar2 = new y.a();
        s.a aVar3 = new s.a();
        try {
            Uri parse = Uri.parse(this.d);
            aVar3.e(parse.getScheme());
            aVar3.c(parse.getHost());
            String encodedPath = parse.getEncodedPath();
            if (!TextUtils.isEmpty(encodedPath)) {
                if (encodedPath.startsWith("/")) {
                    encodedPath = encodedPath.substring(1);
                }
                aVar3.a(encodedPath);
            }
            Set<String> queryParameterNames = parse.getQueryParameterNames();
            if (queryParameterNames != null && queryParameterNames.size() > 0) {
                for (String str : queryParameterNames) {
                    this.f.put(str, parse.getQueryParameter(str));
                }
            }
            for (Map.Entry<String, String> entry : this.f.entrySet()) {
                aVar3.a(entry.getKey(), entry.getValue());
            }
            a(aVar2);
            aVar2.a(this.e);
            aVar2.a((Object) a());
            this.f10675a.a(aVar2.a(aVar3.a()).b().a()).a(new C0022a(aVar));
        } catch (Throwable th) {
            th.printStackTrace();
            aVar.a(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    public void b(String str, String str2) {
        if (str == null) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.d.a("GetExecutor", "name cannot be null !!!");
        } else {
            this.f.put(str, str2);
        }
    }

    /* compiled from: GetExecutor.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0022a implements f {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a f10674a;

        public C0022a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a aVar) {
            this.f10674a = aVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.f
        public void a(e eVar, IOException iOException) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a aVar = this.f10674a;
            if (aVar != null) {
                aVar.a(a.this, iOException);
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.f
        public void a(e eVar, a0 a0Var) throws IOException {
            if (this.f10674a != null) {
                HashMap hashMap = new HashMap();
                if (a0Var != null) {
                    r m = a0Var.m();
                    if (m != null) {
                        for (int i = 0; i < m.b(); i++) {
                            hashMap.put(m.a(i), m.b(i));
                        }
                    }
                    this.f10674a.a(a.this, new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b(a0Var.n(), a0Var.k(), a0Var.o(), hashMap, a0Var.i().l(), a0Var.t(), a0Var.r()));
                }
            }
        }
    }
}
