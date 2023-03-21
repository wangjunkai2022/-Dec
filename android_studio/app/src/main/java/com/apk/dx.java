package com.apk;

/* compiled from: DefaultCachePolicy.java */
/* loaded from: classes8.dex */
public class dx implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ cx f964do;

    public dx(cx cxVar) {
        this.f964do = cxVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        cx cxVar = this.f964do;
        cxVar.f191case.onStart(cxVar.f192do);
        try {
            this.f964do.m127goto();
            this.f964do.m128this();
        } catch (Throwable th) {
            this.f964do.f191case.onError(iy.m1290if(false, this.f964do.f197try, null, th));
        }
    }
}
