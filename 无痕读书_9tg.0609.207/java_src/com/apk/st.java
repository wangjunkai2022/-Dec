package com.apk;

import java.util.HashSet;
import java.util.LinkedList;
/* compiled from: MemoryCache.java */
/* loaded from: classes8.dex */
public final class st<KO, VO> {

    /* renamed from: do  reason: not valid java name */
    public final LinkedList<Cfor<KO, VO>> f4576do = new LinkedList<>();

    /* renamed from: if  reason: not valid java name */
    public final HashSet<KO> f4578if = new HashSet<>();

    /* renamed from: for  reason: not valid java name */
    public volatile int f4577for = 10;

    /* renamed from: new  reason: not valid java name */
    public volatile int f4579new = 100;

    /* renamed from: try  reason: not valid java name */
    public volatile boolean f4580try = false;

    /* compiled from: MemoryCache.java */
    /* renamed from: com.apk.st$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor<KI, VI> {

        /* renamed from: do  reason: not valid java name */
        public final KI f4581do;

        /* renamed from: if  reason: not valid java name */
        public VI f4582if;

        /* JADX WARN: Multi-variable type inference failed */
        public Cfor(Object obj, Object obj2, Cdo cdo) {
            this.f4581do = obj;
            this.f4582if = obj2;
        }

        /* renamed from: if  reason: not valid java name */
        public static void m2549if(Cfor cfor) {
            KI ki = cfor.f4581do;
            if (ki instanceof Cif) {
                ((Cif) ki).m2550do();
            }
            VI vi = cfor.f4582if;
            if (vi instanceof Cif) {
                ((Cif) vi).m2550do();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update(VI vi) {
            VI vi2 = this.f4582if;
            if (vi2 instanceof Cif) {
                ((Cif) vi2).m2550do();
            }
            this.f4582if = vi;
        }
    }

    /* compiled from: MemoryCache.java */
    /* renamed from: com.apk.st$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do  reason: not valid java name */
        void m2550do();
    }

    /* renamed from: do  reason: not valid java name */
    public synchronized void m2547do(int i) {
        if (i >= 0) {
            try {
                synchronized (this) {
                    if (i < this.f4576do.size()) {
                        Cfor<KO, VO> remove = this.f4576do.remove(i);
                        this.f4578if.remove(remove.f4581do);
                        Cfor.m2549if(remove);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
