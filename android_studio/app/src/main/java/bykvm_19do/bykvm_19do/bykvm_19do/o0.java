package bykvm_19do.bykvm_19do.bykvm_19do;

/* loaded from: classes8.dex */
public abstract class o0<T> {

    /* renamed from: a  reason: collision with root package name */
    public volatile T f10638a;

    public abstract T a(Object... objArr);

    public final T b(Object... objArr) {
        if (this.f10638a == null) {
            synchronized (this) {
                if (this.f10638a == null) {
                    this.f10638a = a(objArr);
                }
            }
        }
        return this.f10638a;
    }
}
