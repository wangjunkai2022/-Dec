package com.apk;
/* compiled from: FirstCacheRequestPolicy.java */
/* loaded from: classes8.dex */
public class fx implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ww f1474do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ex f1475if;

    public fx(ex exVar, ww wwVar) {
        this.f1475if = exVar;
        this.f1474do = wwVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ex exVar = this.f1475if;
        exVar.f191case.onStart(exVar.f192do);
        try {
            this.f1475if.m127goto();
            ww wwVar = this.f1474do;
            if (wwVar != null) {
                this.f1475if.f191case.onCacheSuccess(iy.m1291try(true, wwVar.f5407new, this.f1475if.f197try, null));
            }
            this.f1475if.m128this();
        } catch (Throwable th) {
            this.f1475if.f191case.onError(iy.m1290if(false, this.f1475if.f197try, null, th));
        }
    }
}
