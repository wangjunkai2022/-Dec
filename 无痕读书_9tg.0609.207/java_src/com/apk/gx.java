package com.apk;
/* compiled from: NoCachePolicy.java */
/* loaded from: classes8.dex */
public class gx<T> extends ax<T> {

    /* compiled from: NoCachePolicy.java */
    /* renamed from: com.apk.gx$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f1649do;

        public Cdo(iy iyVar) {
            this.f1649do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            gx.this.f191case.onSuccess(this.f1649do);
            gx.this.f191case.onFinish(this.f1649do);
        }
    }

    /* compiled from: NoCachePolicy.java */
    /* renamed from: com.apk.gx$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f1651do;

        public Cif(iy iyVar) {
            this.f1651do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            gx.this.f191case.onError(this.f1651do);
            gx.this.f191case.onFinish(null);
        }
    }

    public gx(qy<T, ? extends qy> qyVar) {
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
            return m121break();
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
        m124class(new hx(this));
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
