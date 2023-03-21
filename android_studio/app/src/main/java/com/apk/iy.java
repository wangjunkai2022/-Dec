package com.apk;

/* compiled from: Response.java */
/* loaded from: classes8.dex */
public final class iy<T> {

    /* renamed from: do  reason: not valid java name */
    public T f2262do;

    /* renamed from: for  reason: not valid java name */
    public zf0 f2263for;

    /* renamed from: if  reason: not valid java name */
    public Throwable f2264if;

    /* renamed from: new  reason: not valid java name */
    public ch0 f2265new;

    /* renamed from: if  reason: not valid java name */
    public static <T> iy<T> m1290if(boolean z, zf0 zf0Var, ch0 ch0Var, Throwable th) {
        iy<T> iyVar = new iy<>();
        iyVar.f2263for = zf0Var;
        iyVar.f2265new = ch0Var;
        iyVar.f2264if = th;
        return iyVar;
    }

    /* renamed from: try  reason: not valid java name */
    public static <T> iy<T> m1291try(boolean z, T t, zf0 zf0Var, ch0 ch0Var) {
        iy<T> iyVar = new iy<>();
        iyVar.f2262do = t;
        iyVar.f2263for = zf0Var;
        iyVar.f2265new = ch0Var;
        return iyVar;
    }

    /* renamed from: do  reason: not valid java name */
    public int m1292do() {
        ch0 ch0Var = this.f2265new;
        if (ch0Var == null) {
            return -1;
        }
        return ch0Var.f618try;
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m1293for() {
        return this.f2264if == null;
    }

    /* renamed from: new  reason: not valid java name */
    public String m1294new() {
        ch0 ch0Var = this.f2265new;
        if (ch0Var == null) {
            return null;
        }
        return ch0Var.f616new;
    }
}
