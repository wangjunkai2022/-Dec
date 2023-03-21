package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import com.apk.Cgoto;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Timeout.java */
/* loaded from: classes8.dex */
public class t {
    public static final t d = new a();

    /* renamed from: a  reason: collision with root package name */
    public boolean f10699a;
    public long b;
    public long c;

    /* compiled from: Timeout.java */
    /* loaded from: classes8.dex */
    public static class a extends t {
        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
        public t a(long j) {
            return this;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
        public t a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t
        public void e() throws IOException {
        }
    }

    public t a(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit != null) {
                this.c = timeUnit.toNanos(j);
                return this;
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException(Cgoto.m1000for("timeout < 0: ", j));
    }

    public t b() {
        this.c = 0L;
        return this;
    }

    public long c() {
        if (this.f10699a) {
            return this.b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f10699a;
    }

    public void e() throws IOException {
        if (!Thread.interrupted()) {
            if (this.f10699a && this.b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        Thread.currentThread().interrupt();
        throw new InterruptedIOException("interrupted");
    }

    public long f() {
        return this.c;
    }

    public t a(long j) {
        this.f10699a = true;
        this.b = j;
        return this;
    }

    public t a() {
        this.f10699a = false;
        return this;
    }
}
