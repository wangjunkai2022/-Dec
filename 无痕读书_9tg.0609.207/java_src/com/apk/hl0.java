package com.apk;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: SegmentPool.kt */
/* loaded from: classes7.dex */
public final class hl0 {

    /* renamed from: for  reason: not valid java name */
    public static final AtomicReference<gl0>[] f1893for;

    /* renamed from: if  reason: not valid java name */
    public static final int f1894if;

    /* renamed from: new  reason: not valid java name */
    public static final hl0 f1895new = new hl0();

    /* renamed from: do  reason: not valid java name */
    public static final gl0 f1892do = new gl0(new byte[0], 0, 0, false, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f1894if = highestOneBit;
        AtomicReference<gl0>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        f1893for = atomicReferenceArr;
    }

    @JvmStatic
    /* renamed from: do  reason: not valid java name */
    public static final void m1139do(@NotNull gl0 gl0Var) {
        nd0.m1875new(gl0Var, "segment");
        if (gl0Var.f1602case == null && gl0Var.f1604else == null) {
            if (gl0Var.f1607new) {
                return;
            }
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            AtomicReference<gl0> atomicReference = f1893for[(int) (currentThread.getId() & (f1894if - 1))];
            gl0 gl0Var2 = atomicReference.get();
            if (gl0Var2 == f1892do) {
                return;
            }
            int i = gl0Var2 != null ? gl0Var2.f1605for : 0;
            if (i >= 65536) {
                return;
            }
            gl0Var.f1602case = gl0Var2;
            gl0Var.f1606if = 0;
            gl0Var.f1605for = i + 8192;
            if (atomicReference.compareAndSet(gl0Var2, gl0Var)) {
                return;
            }
            gl0Var.f1602case = null;
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @JvmStatic
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public static final gl0 m1140if() {
        Thread currentThread = Thread.currentThread();
        nd0.m1872for(currentThread, "Thread.currentThread()");
        AtomicReference<gl0> atomicReference = f1893for[(int) (currentThread.getId() & (f1894if - 1))];
        gl0 andSet = atomicReference.getAndSet(f1892do);
        if (andSet == f1892do) {
            return new gl0();
        }
        if (andSet == null) {
            atomicReference.set(null);
            return new gl0();
        }
        atomicReference.set(andSet.f1602case);
        andSet.f1602case = null;
        andSet.f1605for = 0;
        return andSet;
    }
}
