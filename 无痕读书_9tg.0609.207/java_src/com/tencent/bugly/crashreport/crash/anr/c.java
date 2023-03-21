package com.tencent.bugly.crashreport.crash.anr;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public String f12051a = "";
    public long b;
    public String c;
    public boolean d;

    public c(String str, long j) {
        this.c = "";
        this.d = false;
        this.c = str == null ? "" : str;
        this.b = j;
        this.d = false;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.f12051a;
    }

    public final long c() {
        return this.b;
    }

    public final boolean d() {
        return this.d;
    }

    public final void a(String str) {
        if (str == null) {
            str = "";
        }
        this.f12051a = str;
    }

    public final void a(boolean z) {
        this.d = z;
    }
}
