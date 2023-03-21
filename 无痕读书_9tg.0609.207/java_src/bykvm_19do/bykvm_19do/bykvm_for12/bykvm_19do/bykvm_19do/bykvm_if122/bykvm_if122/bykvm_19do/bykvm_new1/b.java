package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;
/* compiled from: ErrorCode.java */
/* loaded from: classes8.dex */
public enum b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f10736a;

    b(int i) {
        this.f10736a = i;
    }

    public static b a(int i) {
        b[] values;
        for (b bVar : values()) {
            if (bVar.f10736a == i) {
                return bVar;
            }
        }
        return null;
    }
}
