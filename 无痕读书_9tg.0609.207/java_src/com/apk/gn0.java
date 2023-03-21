package com.apk;
/* compiled from: ProxyTagNode.java */
/* loaded from: classes7.dex */
public class gn0 extends kn0 {

    /* renamed from: final  reason: not valid java name */
    public tm0 f1613final;

    /* renamed from: super  reason: not valid java name */
    public sm0 f1614super;

    /* renamed from: throw  reason: not valid java name */
    public kn0 f1615throw;

    public gn0(sm0 sm0Var, kn0 kn0Var) {
        super("", false);
        this.f1614super = sm0Var;
        this.f1615throw = kn0Var;
    }

    @Override // com.apk.jm0
    /* renamed from: for  reason: not valid java name */
    public kn0 mo985for() {
        return null;
    }

    @Override // com.apk.kn0
    /* renamed from: return  reason: not valid java name */
    public boolean mo986return() {
        kn0 kn0Var = this.f1615throw;
        Object obj = this.f1613final;
        if (obj == null) {
            obj = this.f1614super;
        }
        kn0Var.m1528public(obj);
        return true;
    }

    public gn0(tm0 tm0Var, kn0 kn0Var) {
        super("", false);
        this.f1613final = tm0Var;
        this.f1615throw = kn0Var;
    }
}
