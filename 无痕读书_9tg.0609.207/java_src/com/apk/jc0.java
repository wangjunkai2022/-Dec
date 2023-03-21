package com.apk;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tuples.kt */
/* loaded from: classes7.dex */
public final class jc0<A, B> implements Serializable {

    /* renamed from: do  reason: not valid java name */
    public final A f2309do;

    /* renamed from: if  reason: not valid java name */
    public final B f2310if;

    public jc0(A a2, B b) {
        this.f2309do = a2;
        this.f2310if = b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof jc0) {
                jc0 jc0Var = (jc0) obj;
                return nd0.m1870do(this.f2309do, jc0Var.f2309do) && nd0.m1870do(this.f2310if, jc0Var.f2310if);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a2 = this.f2309do;
        int hashCode = (a2 != null ? a2.hashCode() : 0) * 31;
        B b = this.f2310if;
        return hashCode + (b != null ? b.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + this.f2309do + ", " + this.f2310if + ')';
    }
}
