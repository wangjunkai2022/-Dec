package com.apk;
/* compiled from: RequestFailedCachePolicy.java */
/* loaded from: classes8.dex */
public class kx<T> extends ax<T> {

    /* compiled from: RequestFailedCachePolicy.java */
    /* renamed from: com.apk.kx$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f2726do;

        public Cdo(iy iyVar) {
            this.f2726do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            kx.this.f191case.onSuccess(this.f2726do);
            kx.this.f191case.onFinish(this.f2726do);
        }
    }

    /* compiled from: RequestFailedCachePolicy.java */
    /* renamed from: com.apk.kx$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f2728do;

        public Cfor(iy iyVar) {
            this.f2728do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            kx.this.f191case.onError(this.f2728do);
            kx.this.f191case.onFinish(null);
        }
    }

    /* compiled from: RequestFailedCachePolicy.java */
    /* renamed from: com.apk.kx$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f2730do;

        public Cif(iy iyVar) {
            this.f2730do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            kx.this.f191case.onCacheSuccess(this.f2730do);
            kx.this.f191case.onFinish(this.f2730do);
        }
    }

    public kx(qy<T, ? extends qy> qyVar) {
        super(qyVar);
    }

    @Override // com.apk.bx
    /* renamed from: do */
    public void mo280do(iy<T> iyVar) {
        ww<T> wwVar = this.f193else;
        if (wwVar != null) {
            m124class(new Cif(iy.m1291try(true, wwVar.f5407new, iyVar.f2263for, iyVar.f2265new)));
        } else {
            m124class(new Cfor(iyVar));
        }
    }

    @Override // com.apk.bx
    /* renamed from: for */
    public iy<T> mo281for(ww<T> wwVar) {
        try {
            m127goto();
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
        m124class(new lx(this));
    }

    @Override // com.apk.bx
    /* renamed from: try */
    public void mo284try(ww<T> wwVar, mx<T> mxVar) {
        this.f191case = mxVar;
        mxVar.onStart(this.f192do);
        try {
            m127goto();
            m123catch();
        } catch (Throwable th) {
            this.f191case.onError(iy.m1290if(false, this.f197try, null, th));
        }
    }
}
