package com.apk;

/* compiled from: NoneCacheRequestPolicy.java */
/* loaded from: classes8.dex */
public class ix<T> extends ax<T> {

    /* compiled from: NoneCacheRequestPolicy.java */
    /* renamed from: com.apk.ix$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f2258do;

        public Cdo(iy iyVar) {
            this.f2258do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ix.this.f191case.onSuccess(this.f2258do);
            ix.this.f191case.onFinish(this.f2258do);
        }
    }

    /* compiled from: NoneCacheRequestPolicy.java */
    /* renamed from: com.apk.ix$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f2260do;

        public Cif(iy iyVar) {
            this.f2260do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ix.this.f191case.onError(this.f2260do);
            ix.this.f191case.onFinish(null);
        }
    }

    public ix(qy<T, ? extends qy> qyVar) {
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
            iy<T> m1291try = wwVar != null ? iy.m1291try(true, wwVar.f5407new, this.f197try, null) : null;
            return m1291try == null ? m121break() : m1291try;
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
        m124class(new jx(this, wwVar));
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
                this.f191case.onFinish(m1291try);
                return;
            }
            m123catch();
        } catch (Throwable th) {
            this.f191case.onError(iy.m1290if(false, this.f197try, null, th));
        }
    }
}
