package com.umeng.analytics.pro;

import java.io.Serializable;

/* compiled from: FieldValueMetaData.java */
/* loaded from: classes7.dex */
public class bg implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f12159a;
    public final byte b;
    public final String c;
    public final boolean d;

    public bg(byte b, boolean z) {
        this.b = b;
        this.f12159a = false;
        this.c = null;
        this.d = z;
    }

    public boolean a() {
        return this.f12159a;
    }

    public String b() {
        return this.c;
    }

    public boolean c() {
        return this.b == 12;
    }

    public boolean d() {
        byte b = this.b;
        return b == 15 || b == 13 || b == 14;
    }

    public boolean e() {
        return this.d;
    }

    public bg(byte b) {
        this(b, false);
    }

    public bg(byte b, String str) {
        this.b = b;
        this.f12159a = true;
        this.c = str;
        this.d = false;
    }
}
