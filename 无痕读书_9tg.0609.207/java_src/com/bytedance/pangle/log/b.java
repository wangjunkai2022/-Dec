package com.bytedance.pangle.log;
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f11345a;
    public String b;
    public String c;
    public long d;
    public long e;

    public b(String str, String str2, String str3) {
        this.f11345a = str;
        this.b = str2;
        this.c = str3;
        long currentTimeMillis = System.currentTimeMillis();
        this.e = currentTimeMillis;
        this.d = currentTimeMillis;
        String str4 = this.f11345a;
        ZeusLogger.i(str4, this.b + String.format(" watcher[%s]-start", str3));
    }

    public static b a(String str, String str2, String str3) {
        return new b(str, str2, str3);
    }

    public final long b(String str) {
        long currentTimeMillis = System.currentTimeMillis() - this.e;
        long currentTimeMillis2 = System.currentTimeMillis() - this.d;
        String str2 = this.f11345a;
        ZeusLogger.i(str2, this.b + String.format(" watcher[%s]-%s cost=%s, total=%s", this.c, str, Long.valueOf(currentTimeMillis), Long.valueOf(currentTimeMillis2)));
        return currentTimeMillis2;
    }

    public final long a(String str) {
        long currentTimeMillis = System.currentTimeMillis() - this.e;
        String str2 = this.f11345a;
        ZeusLogger.i(str2, this.b + String.format(" watcher[%s]-%s cost=%s", this.c, str, Long.valueOf(currentTimeMillis)));
        this.e = System.currentTimeMillis();
        return currentTimeMillis;
    }

    public final long a() {
        return System.currentTimeMillis() - this.d;
    }
}
