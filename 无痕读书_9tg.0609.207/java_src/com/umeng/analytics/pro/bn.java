package com.umeng.analytics.pro;

import com.apk.Cgoto;
/* compiled from: TField.java */
/* loaded from: classes7.dex */
public class bn {

    /* renamed from: a  reason: collision with root package name */
    public final String f12169a;
    public final byte b;
    public final short c;

    public bn() {
        this("", (byte) 0, (short) 0);
    }

    public boolean a(bn bnVar) {
        return this.b == bnVar.b && this.c == bnVar.c;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("<TField name:'");
        m1016super.append(this.f12169a);
        m1016super.append("' type:");
        m1016super.append((int) this.b);
        m1016super.append(" field-id:");
        return Cgoto.m1019this(m1016super, this.c, ">");
    }

    public bn(String str, byte b, short s) {
        this.f12169a = str;
        this.b = b;
        this.c = s;
    }
}
