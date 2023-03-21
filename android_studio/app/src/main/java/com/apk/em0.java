package com.apk;

/* compiled from: Subscription.java */
/* loaded from: classes7.dex */
public final class em0 {

    /* renamed from: do  reason: not valid java name */
    public final Object f1094do;

    /* renamed from: for  reason: not valid java name */
    public volatile boolean f1095for = true;

    /* renamed from: if  reason: not valid java name */
    public final cm0 f1096if;

    public em0(Object obj, cm0 cm0Var) {
        this.f1094do = obj;
        this.f1096if = cm0Var;
    }

    public boolean equals(Object obj) {
        if (obj instanceof em0) {
            em0 em0Var = (em0) obj;
            return this.f1094do == em0Var.f1094do && this.f1096if.equals(em0Var.f1096if);
        }
        return false;
    }

    public int hashCode() {
        return this.f1096if.f669case.hashCode() + this.f1094do.hashCode();
    }
}
