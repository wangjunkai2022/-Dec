package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.annotation.TargetApi;
import android.app.ActivityManager;

/* compiled from: JellyBeanV16Compat.java */
/* loaded from: classes8.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static final b f11061a = new c();

    /* compiled from: JellyBeanV16Compat.java */
    /* loaded from: classes8.dex */
    public static class b {
        public b() {
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    /* compiled from: JellyBeanV16Compat.java */
    @TargetApi(16)
    /* loaded from: classes8.dex */
    public static class c extends b {
        public c() {
            super();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.g.b
        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return f11061a.a(memoryInfo);
    }
}
