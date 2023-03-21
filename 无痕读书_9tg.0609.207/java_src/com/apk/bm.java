package com.apk;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: DiskCacheWriteLocker.java */
/* loaded from: classes8.dex */
public final class bm {

    /* renamed from: do  reason: not valid java name */
    public final Map<String, Cdo> f358do = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public final Cif f359if = new Cif();

    /* compiled from: DiskCacheWriteLocker.java */
    /* renamed from: com.apk.bm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public final Lock f360do = new ReentrantLock();

        /* renamed from: if  reason: not valid java name */
        public int f361if;
    }

    /* compiled from: DiskCacheWriteLocker.java */
    /* renamed from: com.apk.bm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public final Queue<Cdo> f362do = new ArrayDeque();
    }

    /* renamed from: do  reason: not valid java name */
    public void m210do(String str) {
        Cdo cdo;
        synchronized (this) {
            Cdo cdo2 = this.f358do.get(str);
            eg.m593else(cdo2, "Argument must not be null");
            cdo = cdo2;
            if (cdo.f361if >= 1) {
                int i = cdo.f361if - 1;
                cdo.f361if = i;
                if (i == 0) {
                    Cdo remove = this.f358do.remove(str);
                    if (remove.equals(cdo)) {
                        Cif cif = this.f359if;
                        synchronized (cif.f362do) {
                            if (cif.f362do.size() < 10) {
                                cif.f362do.offer(remove);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + cdo + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + cdo.f361if);
            }
        }
        cdo.f360do.unlock();
    }
}
