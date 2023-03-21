package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import java.io.IOException;
/* compiled from: ForwardingSink.java */
/* loaded from: classes8.dex */
public abstract class g implements r {

    /* renamed from: a  reason: collision with root package name */
    public final r f10688a;

    public g(r rVar) {
        if (rVar != null) {
            this.f10688a = rVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
    public void b(c cVar, long j) throws IOException {
        this.f10688a.b(cVar, j);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10688a.close();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
    public void flush() throws IOException {
        this.f10688a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f10688a.toString() + ")";
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
    public t b() {
        return this.f10688a.b();
    }
}
