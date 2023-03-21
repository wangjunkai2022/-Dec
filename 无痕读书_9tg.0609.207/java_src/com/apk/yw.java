package com.apk;
/* compiled from: AlwaysCacheRequestPolicy.java */
/* loaded from: classes8.dex */
public class yw<T> extends ax<T> {

    /* compiled from: AlwaysCacheRequestPolicy.java */
    /* renamed from: com.apk.yw$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f6075do;

        public Cdo(iy iyVar) {
            this.f6075do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            yw.this.f191case.onSuccess(this.f6075do);
            yw.this.f191case.onFinish(this.f6075do);
        }
    }

    /* compiled from: AlwaysCacheRequestPolicy.java */
    /* renamed from: com.apk.yw$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f6077do;

        public Cif(iy iyVar) {
            this.f6077do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            yw ywVar = yw.this;
            if (ywVar.f193else == null) {
                ywVar.f191case.onError(this.f6077do);
            }
            yw ywVar2 = yw.this;
            ww<T> wwVar = ywVar2.f193else;
            if (wwVar != null) {
                yw.this.f191case.onFinish(iy.m1291try(true, wwVar.f5407new, ywVar2.f197try, null));
                return;
            }
            ywVar2.f191case.onFinish(null);
        }
    }

    public yw(qy<T, ? extends qy> qyVar) {
        super(qyVar);
    }

    @Override // com.apk.bx
    /* renamed from: do */
    public void mo280do(iy<T> iyVar) {
        m124class(new Cif(iyVar));
    }

    @Override // com.apk.bx
    /* renamed from: for */
    public iy<T> mo281for(ww<T> wwVar) {
        try {
            m127goto();
            iy<T> m1291try = (wwVar == null || wwVar.f5408try) ? null : iy.m1291try(true, wwVar.f5407new, this.f197try, null);
            if (m1291try == null) {
                m1291try = m121break();
            }
            return (m1291try.m1293for() || wwVar == null) ? m1291try : iy.m1291try(true, wwVar.f5407new, this.f197try, null);
        } catch (Throwable th) {
            return iy.m1290if(false, this.f197try, null, th);
        }
    }

    @Override // com.apk.bx
    /* renamed from: if */
    public void mo282if(iy<T> iyVar) {
        m124class(new Cdo(iyVar));
    }

    @Override // com.apk.bx
    /* renamed from: new */
    public void mo283new(ww<T> wwVar, mx<T> mxVar) {
        this.f191case = mxVar;
        m124class(new zw(this, wwVar));
    }

    @Override // com.apk.bx
    /* renamed from: try */
    public void mo284try(ww<T> wwVar, mx<T> mxVar) {
        this.f191case = mxVar;
        mxVar.onStart(this.f192do);
        try {
            m127goto();
            if (wwVar != null) {
                iy<T> m1291try = iy.m1291try(true, wwVar.f5407new, this.f197try, null);
                this.f191case.onCacheSuccess(m1291try);
                if (!wwVar.f5408try) {
                    this.f191case.onFinish(m1291try);
                    return;
                }
            }
            m123catch();
        } catch (Throwable th) {
            this.f191case.onError(iy.m1290if(false, this.f197try, null, th));
        }
    }
}
