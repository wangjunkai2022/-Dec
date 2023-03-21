package com.umeng.analytics.pro;

import com.apk.Cgoto;
/* compiled from: TMessage.java */
/* loaded from: classes7.dex */
public final class bq {

    /* renamed from: a  reason: collision with root package name */
    public final String f12172a;
    public final byte b;
    public final int c;

    public bq() {
        this("", (byte) 0, 0);
    }

    public boolean a(bq bqVar) {
        return this.f12172a.equals(bqVar.f12172a) && this.b == bqVar.b && this.c == bqVar.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof bq) {
            return a((bq) obj);
        }
        return false;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("<TMessage name:'");
        m1016super.append(this.f12172a);
        m1016super.append("' type: ");
        m1016super.append((int) this.b);
        m1016super.append(" seqid:");
        return Cgoto.m1019this(m1016super, this.c, ">");
    }

    public bq(String str, byte b, int i) {
        this.f12172a = str;
        this.b = b;
        this.c = i;
    }
}
