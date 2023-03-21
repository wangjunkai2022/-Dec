package com.apk;

/* compiled from: CacheCall.java */
/* loaded from: classes8.dex */
public class uw<T> implements vw<T> {

    /* renamed from: do  reason: not valid java name */
    public bx<T> f4968do;

    /* renamed from: if  reason: not valid java name */
    public qy<T, ? extends qy> f4969if;

    public uw(qy<T, ? extends qy> qyVar) {
        this.f4968do = null;
        this.f4969if = qyVar;
        int ordinal = qyVar.f3957case.ordinal();
        if (ordinal == 0) {
            this.f4968do = new cx(this.f4969if);
        } else if (ordinal == 1) {
            this.f4968do = new gx(this.f4969if);
        } else if (ordinal == 2) {
            this.f4968do = new kx(this.f4969if);
        } else if (ordinal == 3) {
            this.f4968do = new ix(this.f4969if);
        } else if (ordinal == 4) {
            this.f4968do = new ex(this.f4969if);
        } else if (ordinal == 5) {
            this.f4968do = new yw(this.f4969if);
        }
        if (this.f4969if != null) {
            this.f4968do = this.f4968do;
            return;
        }
        throw null;
    }

    public Object clone() throws CloneNotSupportedException {
        return new uw(this.f4969if);
    }
}
