package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122;

/* compiled from: PolicyConfig.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f11036a;
    public final int b;

    public a(int i, int i2, long j) {
        if (i2 >= i) {
            this.f11036a = i;
            this.b = i2;
            return;
        }
        throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
    }

    public int a() {
        return this.b;
    }

    public int b() {
        return this.f11036a;
    }

    public static a a(int i, int i2, long j) {
        return new a(i, i2, j);
    }
}
