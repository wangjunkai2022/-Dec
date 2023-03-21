package com.apk;

/* compiled from: FirstCacheRequestPolicy.java */
/* loaded from: classes8.dex */
public class ex<T> extends ax<T> {

    /* compiled from: FirstCacheRequestPolicy.java */
    /* renamed from: com.apk.ex$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f1133do;

        public Cdo(iy iyVar) {
            this.f1133do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ex.this.f191case.onSuccess(this.f1133do);
            ex.this.f191case.onFinish(this.f1133do);
        }
    }

    /* compiled from: FirstCacheRequestPolicy.java */
    /* renamed from: com.apk.ex$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f1135do;

        public Cif(iy iyVar) {
            this.f1135do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ex.this.f191case.onError(this.f1135do);
            ex.this.f191case.onFinish(null);
        }
    }

    public ex(qy<T, ? extends qy> qyVar) {
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
            if (wwVar != null) {
                iy.m1291try(true, wwVar.f5407new, this.f197try, null);
            }
            iy<T> m121break = m121break();
            return (m121break.m1293for() || wwVar == null) ? m121break : iy.m1291try(true, wwVar.f5407new, this.f197try, m121break.f2265new);
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
        m124class(new fx(this, wwVar));
    }

    @Override // com.apk.bx
    /* renamed from: try */
    public void mo284try(ww<T> wwVar, mx<T> mxVar) {
        this.f191case = mxVar;
        mxVar.onStart(this.f192do);
        try {
            m127goto();
            if (wwVar != null) {
                this.f191case.onCacheSuccess(iy.m1291try(true, wwVar.f5407new, this.f197try, null));
            }
            m123catch();
        } catch (Throwable th) {
            this.f191case.onError(iy.m1290if(false, this.f197try, null, th));
        }
    }
}
