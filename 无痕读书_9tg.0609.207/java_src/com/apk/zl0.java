package com.apk;
/* compiled from: PendingPostQueue.java */
/* loaded from: classes7.dex */
public final class zl0 {

    /* renamed from: do  reason: not valid java name */
    public yl0 f6217do;

    /* renamed from: if  reason: not valid java name */
    public yl0 f6218if;

    /* renamed from: do  reason: not valid java name */
    public synchronized void m3208do(yl0 yl0Var) {
        if (this.f6218if != null) {
            this.f6218if.f6001for = yl0Var;
            this.f6218if = yl0Var;
        } else if (this.f6217do == null) {
            this.f6218if = yl0Var;
            this.f6217do = yl0Var;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    /* renamed from: if  reason: not valid java name */
    public synchronized yl0 m3209if() {
        yl0 yl0Var;
        yl0Var = this.f6217do;
        if (this.f6217do != null) {
            yl0 yl0Var2 = this.f6217do.f6001for;
            this.f6217do = yl0Var2;
            if (yl0Var2 == null) {
                this.f6218if = null;
            }
        }
        return yl0Var;
    }
}
