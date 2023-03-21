package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import java.io.IOException;
/* compiled from: ForwardingSource.java */
/* loaded from: classes8.dex */
public abstract class h implements s {

    /* renamed from: a  reason: collision with root package name */
    public final s f10689a;

    public h(s sVar) {
        if (sVar != null) {
            this.f10689a = sVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public t b() {
        return this.f10689a.b();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10689a.close();
    }

    public final s h() {
        return this.f10689a;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f10689a.toString() + ")";
    }
}
