package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.xh0;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dispatcher.kt */
/* loaded from: classes7.dex */
public final class lg0 {

    /* renamed from: for  reason: not valid java name */
    public ExecutorService f2801for;

    /* renamed from: do  reason: not valid java name */
    public int f2800do = 64;

    /* renamed from: if  reason: not valid java name */
    public int f2802if = 5;

    /* renamed from: new  reason: not valid java name */
    public final ArrayDeque<xh0.Cdo> f2803new = new ArrayDeque<>();

    /* renamed from: try  reason: not valid java name */
    public final ArrayDeque<xh0.Cdo> f2804try = new ArrayDeque<>();

    /* renamed from: case  reason: not valid java name */
    public final ArrayDeque<xh0> f2799case = new ArrayDeque<>();

    /* renamed from: do  reason: not valid java name */
    public final <T> void m1629do(Deque<T> deque, T t) {
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        m1630for();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1630for() {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lg0.m1630for():boolean");
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1631if(@NotNull xh0.Cdo cdo) {
        nd0.m1875new(cdo, NotificationCompat.CATEGORY_CALL);
        cdo.f5620do.decrementAndGet();
        m1629do(this.f2804try, cdo);
    }
}
