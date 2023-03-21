package com.apk;

import com.apk.tw;
import java.io.IOException;
import java.net.SocketTimeoutException;
/* compiled from: BaseCachePolicy.java */
/* loaded from: classes8.dex */
public abstract class ax<T> implements bx<T> {

    /* renamed from: case  reason: not valid java name */
    public mx<T> f191case;

    /* renamed from: do  reason: not valid java name */
    public qy<T, ? extends qy> f192do;

    /* renamed from: else  reason: not valid java name */
    public ww<T> f193else;

    /* renamed from: for  reason: not valid java name */
    public volatile int f194for = 0;

    /* renamed from: if  reason: not valid java name */
    public volatile boolean f195if;

    /* renamed from: new  reason: not valid java name */
    public boolean f196new;

    /* renamed from: try  reason: not valid java name */
    public zf0 f197try;

    /* compiled from: BaseCachePolicy.java */
    /* renamed from: com.apk.ax$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ag0 {
        public Cdo() {
        }

        @Override // com.apk.ag0
        /* renamed from: for */
        public void mo46for(zf0 zf0Var, ch0 ch0Var) throws IOException {
            int i = ch0Var.f618try;
            if (i != 404 && i < 500) {
                if (ax.this.mo122case(zf0Var, ch0Var)) {
                    return;
                }
                try {
                    T convertResponse = ax.this.f192do.m2196this().convertResponse(ch0Var);
                    ax.this.m125const(ch0Var.f611else, convertResponse);
                    ax.this.mo282if(iy.m1291try(false, convertResponse, zf0Var, ch0Var));
                    return;
                } catch (Throwable th) {
                    ax.this.mo280do(iy.m1290if(false, zf0Var, ch0Var, th));
                    return;
                }
            }
            ax.this.mo280do(iy.m1290if(false, zf0Var, ch0Var, ay.m129do()));
        }

        @Override // com.apk.ag0
        /* renamed from: new */
        public void mo47new(zf0 zf0Var, IOException iOException) {
            if (iOException instanceof SocketTimeoutException) {
                int i = ax.this.f194for;
                ax axVar = ax.this;
                if (i < axVar.f192do.f3969try) {
                    axVar.f194for++;
                    ax axVar2 = ax.this;
                    axVar2.f197try = axVar2.f192do.m2188break();
                    if (ax.this.f195if) {
                        ax.this.f197try.cancel();
                        return;
                    } else {
                        ax.this.f197try.mo3008try(this);
                        return;
                    }
                }
            }
            if (zf0Var.mo2997break()) {
                return;
            }
            ax.this.mo280do(iy.m1290if(false, zf0Var, null, iOException));
        }
    }

    public ax(qy<T, ? extends qy> qyVar) {
        this.f192do = qyVar;
    }

    /* renamed from: break  reason: not valid java name */
    public iy<T> m121break() {
        try {
            ch0 mo3007throw = this.f197try.mo3007throw();
            int i = mo3007throw.f618try;
            if (i != 404 && i < 500) {
                T convertResponse = this.f192do.m2196this().convertResponse(mo3007throw);
                m125const(mo3007throw.f611else, convertResponse);
                return iy.m1291try(false, convertResponse, this.f197try, mo3007throw);
            }
            return iy.m1290if(false, this.f197try, mo3007throw, ay.m129do());
        } catch (Throwable th) {
            if ((th instanceof SocketTimeoutException) && this.f194for < this.f192do.f3969try) {
                this.f194for++;
                this.f197try = this.f192do.m2188break();
                m121break();
            }
            return iy.m1290if(false, this.f197try, null, th);
        }
    }

    /* renamed from: case  reason: not valid java name */
    public boolean mo122case(zf0 zf0Var, ch0 ch0Var) {
        return false;
    }

    /* renamed from: catch  reason: not valid java name */
    public void m123catch() {
        try {
            ch0 mo3007throw = this.f197try.mo3007throw();
            int i = mo3007throw.f618try;
            if (i != 404 && i < 500) {
                T convertResponse = this.f192do.m2196this().convertResponse(mo3007throw);
                m125const(mo3007throw.f611else, convertResponse);
                iy<T> m1291try = iy.m1291try(false, convertResponse, this.f197try, mo3007throw);
                if (this.f191case != null) {
                    this.f191case.onSuccess(m1291try);
                    this.f191case.onFinish(m1291try);
                    return;
                }
                return;
            }
            mo280do(iy.m1290if(false, this.f197try, mo3007throw, ay.m129do()));
        } catch (Throwable th) {
            if ((th instanceof SocketTimeoutException) && this.f194for < this.f192do.f3969try) {
                this.f194for++;
                this.f197try = this.f192do.m2188break();
                m123catch();
            }
            iy<T> m1290if = iy.m1290if(false, this.f197try, null, th);
            mx<T> mxVar = this.f191case;
            if (mxVar != null) {
                if (this.f193else == null) {
                    mxVar.onError(m1290if);
                }
                ww<T> wwVar = this.f193else;
                if (wwVar != null) {
                    this.f191case.onFinish(iy.m1291try(true, wwVar.f5407new, this.f197try, null));
                    return;
                }
                this.f191case.onFinish(null);
            }
        }
    }

    /* renamed from: class  reason: not valid java name */
    public void m124class(Runnable runnable) {
        tw.Cif.f4772do.f4769if.post(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0134  */
    /* renamed from: const  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m125const(com.apk.sg0 r19, T r20) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ax.m125const(com.apk.sg0, java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.apk.ww<T> m126else() {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ax.m126else():com.apk.ww");
    }

    /* renamed from: goto  reason: not valid java name */
    public synchronized zf0 m127goto() throws Throwable {
        zf0 m2188break;
        if (!this.f196new) {
            this.f196new = true;
            m2188break = this.f192do.m2188break();
            this.f197try = m2188break;
        } else {
            throw new ay("Already executed!");
        }
        return m2188break;
    }

    /* renamed from: this  reason: not valid java name */
    public void m128this() {
        this.f197try.mo3008try(new Cdo());
    }
}
