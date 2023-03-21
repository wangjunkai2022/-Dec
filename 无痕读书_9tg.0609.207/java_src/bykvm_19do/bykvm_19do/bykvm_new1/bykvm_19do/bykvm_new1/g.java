package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: LooperTrace.java */
/* loaded from: classes8.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReference<Long> f11086a = new AtomicReference<>(0L);

    public static void a(long j) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 5) {
                return;
            }
            long longValue = f11086a.get().longValue();
            if (f11086a.compareAndSet(Long.valueOf(longValue), Long.valueOf(longValue | j))) {
                return;
            }
            i = i2;
        }
    }
}
