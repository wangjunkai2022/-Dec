package com.apk;

/* compiled from: RequestFailedCachePolicy.java */
/* loaded from: classes8.dex */
public class lx implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ kx f2947do;

    public lx(kx kxVar) {
        this.f2947do = kxVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        kx kxVar = this.f2947do;
        kxVar.f191case.onStart(kxVar.f192do);
        try {
            this.f2947do.m127goto();
            this.f2947do.m128this();
        } catch (Throwable th) {
            this.f2947do.f191case.onError(iy.m1290if(false, this.f2947do.f197try, null, th));
        }
    }
}
