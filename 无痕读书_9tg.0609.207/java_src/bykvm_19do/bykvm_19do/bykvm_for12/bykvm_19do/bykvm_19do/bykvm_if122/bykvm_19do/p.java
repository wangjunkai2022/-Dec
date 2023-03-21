package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;
/* compiled from: SegmentPool.java */
/* loaded from: classes8.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static o f10698a;
    public static long b;

    public static o a() {
        synchronized (p.class) {
            if (f10698a != null) {
                o oVar = f10698a;
                f10698a = oVar.f;
                oVar.f = null;
                b -= 8192;
                return oVar;
            }
            return new o();
        }
    }

    public static void a(o oVar) {
        if (oVar.f == null && oVar.g == null) {
            if (oVar.d) {
                return;
            }
            synchronized (p.class) {
                if (b + 8192 > 65536) {
                    return;
                }
                b += 8192;
                oVar.f = f10698a;
                oVar.c = 0;
                oVar.b = 0;
                f10698a = oVar;
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
