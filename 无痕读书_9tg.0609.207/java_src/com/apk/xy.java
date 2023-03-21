package com.apk;
/* compiled from: DownloadTask.java */
/* loaded from: classes8.dex */
public class xy implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ hy f5817do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ty f5818if;

    public xy(ty tyVar, hy hyVar) {
        this.f5818if = tyVar;
        this.f5817do = hyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (sy syVar : this.f5818if.f4779if.values()) {
            syVar.mo303for(this.f5817do);
        }
    }
}
