package com.ss.android.downloadlib.g;

import java.lang.ref.SoftReference;
/* loaded from: classes7.dex */
public class c<P, R> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public P f11727a;
    public R b;
    public int c;
    public SoftReference<a<P, R>> d;
    public c<?, P> e;
    public c<R, ?> f;

    /* loaded from: classes7.dex */
    public interface a<PARAM, RESULT> {
        RESULT a(PARAM param);
    }

    public c(int i, a<P, R> aVar, P p) {
        this.c = i;
        this.d = new SoftReference<>(aVar);
        this.f11727a = p;
    }

    public static <P, R> c<P, R> a(a<P, R> aVar, P p) {
        return new c<>(2, aVar, p);
    }

    private R b() {
        return this.b;
    }

    @Override // java.lang.Runnable
    public void run() {
        c<?, P> cVar;
        if (this.c == 0 && !l.a()) {
            com.ss.android.downloadlib.f.a().b().post(this);
        } else if (this.c == 1 && l.a()) {
            com.ss.android.downloadlib.d.a().a(this);
        } else if (this.c == 2 && l.a()) {
            com.ss.android.downloadlib.d.a().b(this);
        } else {
            if (this.f11727a == null && (cVar = this.e) != null) {
                this.f11727a = cVar.b();
            }
            a<P, R> aVar = this.d.get();
            if (aVar == null) {
                return;
            }
            this.b = aVar.a(this.f11727a);
            c<R, ?> cVar2 = this.f;
            if (cVar2 != null) {
                cVar2.run();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <NR> c<R, NR> a(int i, a<R, NR> aVar) {
        c cVar = (c<R, ?>) new c(i, aVar, null);
        this.f = cVar;
        cVar.e = this;
        return cVar;
    }

    public <NR> c<R, NR> a(a<R, NR> aVar) {
        return a(0, aVar);
    }

    public void a() {
        c<?, P> cVar = this.e;
        if (cVar != null) {
            cVar.a();
        } else {
            run();
        }
    }
}
