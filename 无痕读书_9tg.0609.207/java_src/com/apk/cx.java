package com.apk;
/* compiled from: DefaultCachePolicy.java */
/* loaded from: classes8.dex */
public class cx<T> extends ax<T> {

    /* compiled from: DefaultCachePolicy.java */
    /* renamed from: com.apk.cx$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f792do;

        public Cdo(iy iyVar) {
            this.f792do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            cx.this.f191case.onSuccess(this.f792do);
            cx.this.f191case.onFinish(this.f792do);
        }
    }

    /* compiled from: DefaultCachePolicy.java */
    /* renamed from: com.apk.cx$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f794do;

        public Cfor(iy iyVar) {
            this.f794do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            cx.this.f191case.onError(this.f794do);
            cx.this.f191case.onFinish(null);
        }
    }

    /* compiled from: DefaultCachePolicy.java */
    /* renamed from: com.apk.cx$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f796do;

        public Cif(iy iyVar) {
            this.f796do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            cx.this.f191case.onError(this.f796do);
            cx.this.f191case.onFinish(null);
        }
    }

    /* compiled from: DefaultCachePolicy.java */
    /* renamed from: com.apk.cx$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ iy f798do;

        public Cnew(iy iyVar) {
            this.f798do = iyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            cx.this.f191case.onCacheSuccess(this.f798do);
            cx.this.f191case.onFinish(this.f798do);
        }
    }

    public cx(qy<T, ? extends qy> qyVar) {
        super(qyVar);
    }

    @Override // com.apk.ax
    /* renamed from: case */
    public boolean mo122case(zf0 zf0Var, ch0 ch0Var) {
        if (ch0Var.f618try != 304) {
            return false;
        }
        ww<T> wwVar = this.f193else;
        if (wwVar == null) {
            m124class(new Cfor(iy.m1290if(true, zf0Var, ch0Var, zx.m3263do(this.f192do.f3962else))));
        } else {
            m124class(new Cnew(iy.m1291try(true, wwVar.f5407new, zf0Var, ch0Var)));
        }
        return true;
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
            iy<T> m121break = m121break();
            if (m121break.m1293for() && m121break.m1292do() == 304) {
                if (wwVar == null) {
                    return iy.m1290if(true, this.f197try, m121break.f2265new, zx.m3263do(this.f192do.f3962else));
                }
                return iy.m1291try(true, wwVar.f5407new, this.f197try, m121break.f2265new);
            }
            return m121break;
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
        m124class(new dx(this));
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
