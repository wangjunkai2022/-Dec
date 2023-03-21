package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.annotation.TargetApi;
import android.os.Debug;

/* compiled from: DebugMemInfoCompat.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final C0055b f11058a = new c();

    /* compiled from: DebugMemInfoCompat.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0055b {
        public C0055b() {
        }

        public int a(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int b(Debug.MemoryInfo memoryInfo) {
            return -1;
        }

        public int c(Debug.MemoryInfo memoryInfo) {
            return -1;
        }
    }

    /* compiled from: DebugMemInfoCompat.java */
    @TargetApi(19)
    /* loaded from: classes8.dex */
    public static class c extends C0055b {
        public c() {
            super();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.b.C0055b
        public int a(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalPrivateClean();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.b.C0055b
        public int b(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSharedClean();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.b.C0055b
        public int c(Debug.MemoryInfo memoryInfo) {
            return memoryInfo.getTotalSwappablePss();
        }
    }

    public static int a(Debug.MemoryInfo memoryInfo) {
        return f11058a.a(memoryInfo);
    }

    public static int b(Debug.MemoryInfo memoryInfo) {
        return f11058a.b(memoryInfo);
    }

    public static int c(Debug.MemoryInfo memoryInfo) {
        return f11058a.c(memoryInfo);
    }
}
