package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import java.io.Closeable;
/* compiled from: IoUtil.java */
/* loaded from: classes8.dex */
public final class f {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }
}
