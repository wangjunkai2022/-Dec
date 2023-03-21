package com.apk;

import com.apk.kk;
/* compiled from: ActiveResources.java */
/* loaded from: classes8.dex */
public class lk implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ kk f2825do;

    public lk(kk kkVar) {
        this.f2825do = kkVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        kk kkVar = this.f2825do;
        if (kkVar == null) {
            throw null;
        }
        while (true) {
            try {
                kkVar.m1513if((kk.Cif) kkVar.f2578for.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
