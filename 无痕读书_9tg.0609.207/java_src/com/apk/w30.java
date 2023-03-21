package com.apk;
/* compiled from: Pair.java */
/* loaded from: classes8.dex */
public final class w30<A, B> {

    /* renamed from: do  reason: not valid java name */
    public final A f5232do;

    /* renamed from: if  reason: not valid java name */
    public final B f5233if;

    public w30(A a2, B b) {
        this.f5232do = a2;
        this.f5233if = b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && w30.class == obj.getClass()) {
            w30 w30Var = (w30) obj;
            A a2 = this.f5232do;
            if (a2 == null) {
                if (w30Var.f5232do != null) {
                    return false;
                }
            } else if (!a2.equals(w30Var.f5232do)) {
                return false;
            }
            B b = this.f5233if;
            if (b == null) {
                if (w30Var.f5233if != null) {
                    return false;
                }
            } else if (!b.equals(w30Var.f5233if)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        A a2 = this.f5232do;
        int hashCode = ((a2 == null ? 0 : a2.hashCode()) + 31) * 31;
        B b = this.f5233if;
        return hashCode + (b != null ? b.hashCode() : 0);
    }
}
