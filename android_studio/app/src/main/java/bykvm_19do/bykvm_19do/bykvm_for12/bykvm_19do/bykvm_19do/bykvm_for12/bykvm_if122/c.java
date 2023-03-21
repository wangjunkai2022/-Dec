package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.d;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.f;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.u;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.z;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: PostExecutor.java */
/* loaded from: classes8.dex */
public class c extends b {
    public z e;

    public c(v vVar) {
        super(vVar);
        this.e = null;
    }

    public void a(String str, byte[] bArr) {
        this.e = z.a(u.a(str), bArr);
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b b() {
        y.a aVar = new y.a();
        if (TextUtils.isEmpty(this.d)) {
            d.a("PostExecutor", "execute: Url is Empty");
            return null;
        }
        try {
            aVar.b(this.d);
            if (this.e == null) {
                d.a("PostExecutor", "RequestBody is null, content type is not support!!");
                return null;
            }
            a(aVar);
            aVar.a((Object) a());
            try {
                a0 i = this.f10675a.a(aVar.a(this.e).a()).i();
                if (i != null) {
                    HashMap hashMap = new HashMap();
                    r m = i.m();
                    if (m != null) {
                        for (int i2 = 0; i2 < m.b(); i2++) {
                            hashMap.put(m.a(i2), m.b(i2));
                        }
                        return new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b(i.n(), i.k(), i.o(), hashMap, i.i().l(), i.t(), i.r());
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        } catch (IllegalArgumentException unused) {
            d.a("PostExecutor", "execute: Url is not a valid HTTP or HTTPS URL");
            return null;
        }
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "{}";
        }
        this.e = z.a(u.a("application/json; charset=utf-8"), str);
    }

    /* compiled from: PostExecutor.java */
    /* loaded from: classes8.dex */
    public class a implements f {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a f10676a;

        public a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a aVar) {
            this.f10676a = aVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.f
        public void a(e eVar, IOException iOException) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a aVar = this.f10676a;
            if (aVar != null) {
                aVar.a(c.this, iOException);
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.f
        public void a(e eVar, a0 a0Var) throws IOException {
            if (this.f10676a != null) {
                HashMap hashMap = new HashMap();
                if (a0Var != null) {
                    r m = a0Var.m();
                    if (m != null) {
                        for (int i = 0; i < m.b(); i++) {
                            hashMap.put(m.a(i), m.b(i));
                        }
                    }
                    this.f10676a.a(c.this, new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b(a0Var.n(), a0Var.k(), a0Var.o(), hashMap, a0Var.i().l(), a0Var.t(), a0Var.r()));
                }
            }
        }
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a aVar) {
        y.a aVar2 = new y.a();
        if (TextUtils.isEmpty(this.d)) {
            aVar.a(this, new IOException("Url is Empty"));
            return;
        }
        try {
            aVar2.b(this.d);
            if (this.e == null) {
                if (aVar != null) {
                    aVar.a(this, new IOException("RequestBody is null, content type is not support!!"));
                    return;
                }
                return;
            }
            a(aVar2);
            aVar2.a((Object) a());
            this.f10675a.a(aVar2.a(this.e).a()).a(new a(aVar));
        } catch (IllegalArgumentException unused) {
            aVar.a(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }
}
