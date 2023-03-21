package com.apk;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

/* compiled from: LazyJVM.kt */
/* loaded from: classes7.dex */
public final class kc0<T> implements ic0<T>, Serializable {

    /* renamed from: do  reason: not valid java name */
    public hd0<? extends T> f2513do;

    /* renamed from: for  reason: not valid java name */
    public final Object f2514for;

    /* renamed from: if  reason: not valid java name */
    public volatile Object f2515if;

    public kc0(hd0 hd0Var, Object obj, int i) {
        int i2 = i & 2;
        nd0.m1875new(hd0Var, "initializer");
        this.f2513do = hd0Var;
        this.f2515if = lc0.f2782do;
        this.f2514for = this;
    }

    @Override // com.apk.ic0
    public T getValue() {
        T t;
        T t2 = (T) this.f2515if;
        if (t2 != lc0.f2782do) {
            return t2;
        }
        synchronized (this.f2514for) {
            t = (T) this.f2515if;
            if (t == lc0.f2782do) {
                hd0<? extends T> hd0Var = this.f2513do;
                nd0.m1874if(hd0Var);
                t = hd0Var.mo51do();
                this.f2515if = t;
                this.f2513do = null;
            }
        }
        return t;
    }

    @NotNull
    public String toString() {
        return this.f2515if != lc0.f2782do ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
