package com.apk;
/* compiled from: DownloadTask.java */
/* loaded from: classes8.dex */
public class wy implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ hy f5414do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ty f5415if;

    public wy(ty tyVar, hy hyVar) {
        this.f5415if = tyVar;
        this.f5414do = hyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (sy syVar : this.f5415if.f4779if.values()) {
            syVar.mo303for(this.f5414do);
        }
    }
}
