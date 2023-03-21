package com.apk;
/* compiled from: DownloadTask.java */
/* loaded from: classes8.dex */
public class yy implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ hy f6081do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ty f6082if;

    public yy(ty tyVar, hy hyVar) {
        this.f6082if = tyVar;
        this.f6081do = hyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (sy syVar : this.f6082if.f4779if.values()) {
            syVar.mo305new(this.f6081do);
        }
        this.f6082if.f4779if.clear();
    }
}
