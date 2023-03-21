package com.apk;
/* compiled from: TrAdConfig.java */
/* loaded from: classes7.dex */
public final class w40 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5234do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f5235if;

    public w40(String str, boolean z) {
        this.f5234do = str;
        this.f5235if = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = this.f5234do;
        if (this.f5235if) {
            k40.m1447final(str);
        }
    }
}
