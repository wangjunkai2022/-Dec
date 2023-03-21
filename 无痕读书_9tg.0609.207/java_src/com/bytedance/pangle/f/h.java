package com.bytedance.pangle.f;

import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class h implements k {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f11331a;

    public h(ByteBuffer byteBuffer) {
        this.f11331a = byteBuffer.slice();
    }

    @Override // com.bytedance.pangle.f.k
    public final long a() {
        return this.f11331a.capacity();
    }

    @Override // com.bytedance.pangle.f.k
    public final void a(j jVar, long j, int i) {
        ByteBuffer slice;
        synchronized (this.f11331a) {
            this.f11331a.position(0);
            int i2 = (int) j;
            this.f11331a.limit(i + i2);
            this.f11331a.position(i2);
            slice = this.f11331a.slice();
        }
        jVar.a(slice);
    }
}
