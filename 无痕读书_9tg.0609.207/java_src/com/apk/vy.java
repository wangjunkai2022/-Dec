package com.apk;
/* compiled from: DownloadTask.java */
/* loaded from: classes8.dex */
public class vy implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ hy f5209do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ty f5210if;

    public vy(ty tyVar, hy hyVar) {
        this.f5210if = tyVar;
        this.f5209do = hyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (sy syVar : this.f5210if.f4779if.values()) {
            syVar.mo303for(this.f5209do);
        }
    }
}
