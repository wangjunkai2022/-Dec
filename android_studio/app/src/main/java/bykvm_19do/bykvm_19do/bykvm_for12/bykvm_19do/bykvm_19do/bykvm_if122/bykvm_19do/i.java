package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout.java */
/* loaded from: classes8.dex */
public class i extends t {
    public t e;

    public i(t tVar) {
        if (tVar != null) {
            this.e = tVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final i a(t tVar) {
        if (tVar != null) {
            this.e = tVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public t b() {
        return this.e.b();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public long c() {
        return this.e.c();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public boolean d() {
        return this.e.d();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public void e() throws IOException {
        this.e.e();
    }

    public final t g() {
        return this.e;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public t a(long j, TimeUnit timeUnit) {
        return this.e.a(j, timeUnit);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public t a(long j) {
        return this.e.a(j);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
    public t a() {
        return this.e.a();
    }
}
