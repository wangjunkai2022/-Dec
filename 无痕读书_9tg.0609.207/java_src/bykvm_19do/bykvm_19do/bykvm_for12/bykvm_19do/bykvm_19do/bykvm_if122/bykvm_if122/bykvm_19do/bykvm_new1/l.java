package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import java.util.concurrent.CountDownLatch;
/* compiled from: Ping.java */
/* loaded from: classes8.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f10754a = new CountDownLatch(1);
    public long b = -1;
    public long c = -1;

    public void a() {
        if (this.c == -1) {
            long j = this.b;
            if (j != -1) {
                this.c = j - 1;
                this.f10754a.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }

    public void b() {
        if (this.c == -1 && this.b != -1) {
            this.c = System.nanoTime();
            this.f10754a.countDown();
            return;
        }
        throw new IllegalStateException();
    }

    public void c() {
        if (this.b == -1) {
            this.b = System.nanoTime();
            return;
        }
        throw new IllegalStateException();
    }
}
