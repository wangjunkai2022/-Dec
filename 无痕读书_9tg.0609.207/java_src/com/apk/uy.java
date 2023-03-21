package com.apk;
/* compiled from: DownloadTask.java */
/* loaded from: classes8.dex */
public class uy implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ hy f4971do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ty f4972if;

    public uy(ty tyVar, hy hyVar) {
        this.f4972if = tyVar;
        this.f4971do = hyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (sy syVar : this.f4972if.f4779if.values()) {
            syVar.mo306try(this.f4971do);
        }
    }
}
