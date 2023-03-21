package com.apk;

import com.apk.xl;
import java.util.Queue;

/* compiled from: BaseKeyPool.java */
/* loaded from: classes8.dex */
public abstract class ol<T extends xl> {

    /* renamed from: do  reason: not valid java name */
    public final Queue<T> f3456do = gs.m1041new(20);

    /* renamed from: do  reason: not valid java name */
    public abstract T mo1970do();

    /* renamed from: for  reason: not valid java name */
    public void m1971for(T t) {
        if (this.f3456do.size() < 20) {
            this.f3456do.offer(t);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public T m1972if() {
        T poll = this.f3456do.poll();
        return poll == null ? mo1970do() : poll;
    }
}
