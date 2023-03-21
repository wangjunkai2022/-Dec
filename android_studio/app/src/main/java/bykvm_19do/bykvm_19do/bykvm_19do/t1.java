package bykvm_19do.bykvm_19do.bykvm_19do;

/* loaded from: classes8.dex */
public abstract class t1 {

    /* renamed from: a  reason: collision with root package name */
    public final v1 f10649a;
    public int b = 0;
    public boolean c;

    public t1(v1 v1Var) {
        this.f10649a = v1Var;
    }

    public abstract boolean a();

    public abstract long b();

    public abstract long[] c();

    public abstract boolean d();

    public abstract String e();

    public void f() {
        this.c = true;
    }

    public boolean g() {
        return this.c;
    }

    public final long h() {
        boolean z;
        long j;
        if (!a() || h0.a(this.f10649a.a())) {
            long b = b();
            long currentTimeMillis = System.currentTimeMillis();
            if (b <= 1000 + currentTimeMillis) {
                try {
                    z = d();
                } catch (Exception e) {
                    l0.a(e);
                    z = false;
                }
                if (z) {
                    this.b = 0;
                    j = b() - System.currentTimeMillis();
                } else {
                    long[] c = c();
                    int i = this.b;
                    this.b = i + 1;
                    j = c[i % c.length];
                }
                l0.d(e() + " worked:" + z + " " + j, null);
                return j;
            }
            return b - currentTimeMillis;
        }
        return 60000L;
    }
}
