package com.apk;
/* compiled from: AlwaysCacheRequestPolicy.java */
/* loaded from: classes8.dex */
public class zw implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ww f6269do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ yw f6270if;

    public zw(yw ywVar, ww wwVar) {
        this.f6270if = ywVar;
        this.f6269do = wwVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        yw ywVar = this.f6270if;
        ywVar.f191case.onStart(ywVar.f192do);
        try {
            this.f6270if.m127goto();
            ww wwVar = this.f6269do;
            if (wwVar != null) {
                iy m1291try = iy.m1291try(true, wwVar.f5407new, this.f6270if.f197try, null);
                this.f6270if.f191case.onCacheSuccess(m1291try);
                if (!this.f6269do.f5408try) {
                    this.f6270if.f191case.onFinish(m1291try);
                    return;
                }
            }
            this.f6270if.m128this();
        } catch (Throwable th) {
            this.f6270if.f191case.onError(iy.m1290if(false, this.f6270if.f197try, null, th));
        }
    }
}
