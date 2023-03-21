package com.apk;
/* compiled from: NoCachePolicy.java */
/* loaded from: classes8.dex */
public class hx implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ gx f2000do;

    public hx(gx gxVar) {
        this.f2000do = gxVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        gx gxVar = this.f2000do;
        gxVar.f191case.onStart(gxVar.f192do);
        try {
            this.f2000do.m127goto();
            this.f2000do.m128this();
        } catch (Throwable th) {
            this.f2000do.f191case.onError(iy.m1290if(false, this.f2000do.f197try, null, th));
        }
    }
}
