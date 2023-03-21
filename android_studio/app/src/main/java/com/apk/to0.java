package com.apk;

/* compiled from: ParseError.java */
/* loaded from: classes7.dex */
public class to0 {

    /* renamed from: do  reason: not valid java name */
    public String f4740do;

    /* renamed from: if  reason: not valid java name */
    public String f4741if;

    public to0(qo0 qo0Var, String str) {
        qo0Var.m2158extends();
        this.f4740do = qo0Var.m2159final();
        this.f4741if = str;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("<");
        m1016super.append(this.f4740do);
        m1016super.append(">: ");
        m1016super.append(this.f4741if);
        return m1016super.toString();
    }

    public to0(qo0 qo0Var, String str, Object... objArr) {
        qo0Var.m2158extends();
        this.f4740do = qo0Var.m2159final();
        this.f4741if = String.format(str, objArr);
    }
}
