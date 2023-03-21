package com.apk;
/* compiled from: NoneCacheRequestPolicy.java */
/* loaded from: classes8.dex */
public class jx implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ww f2433do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ix f2434if;

    public jx(ix ixVar, ww wwVar) {
        this.f2434if = ixVar;
        this.f2433do = wwVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ix ixVar = this.f2434if;
        ixVar.f191case.onStart(ixVar.f192do);
        try {
            this.f2434if.m127goto();
            ww wwVar = this.f2433do;
            if (wwVar != null) {
                iy m1291try = iy.m1291try(true, wwVar.f5407new, this.f2434if.f197try, null);
                this.f2434if.f191case.onCacheSuccess(m1291try);
                this.f2434if.f191case.onFinish(m1291try);
                return;
            }
            this.f2434if.m128this();
        } catch (Throwable th) {
            this.f2434if.f191case.onError(iy.m1290if(false, this.f2434if.f197try, null, th));
        }
    }
}
