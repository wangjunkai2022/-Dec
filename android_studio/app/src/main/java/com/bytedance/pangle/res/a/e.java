package com.bytedance.pangle.res.a;

import java.io.InputStream;

/* loaded from: classes8.dex */
public final class e extends j {

    /* renamed from: a  reason: collision with root package name */
    public long f11368a;

    public e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.bytedance.pangle.res.a.j
    public final synchronized void a(int i) {
        if (i != -1) {
            this.f11368a += i;
        }
    }

    public final synchronized long b() {
        return this.f11368a;
    }

    @Override // com.bytedance.pangle.res.a.j, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        long skip;
        skip = super.skip(j);
        this.f11368a += skip;
        return skip;
    }

    public final int a() {
        long b = b();
        if (b <= 2147483647L) {
            return (int) b;
        }
        throw new ArithmeticException("The byte count " + b + " is too large to be converted to an int");
    }
}
