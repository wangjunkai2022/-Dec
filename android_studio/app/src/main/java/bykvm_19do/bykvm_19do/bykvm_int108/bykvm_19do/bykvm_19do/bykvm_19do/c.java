package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do;

/* compiled from: AssertUtils.java */
/* loaded from: classes8.dex */
public class c {
    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        a(str);
        throw null;
    }

    public static void a(String str) {
        throw new IllegalArgumentException(str);
    }
}
