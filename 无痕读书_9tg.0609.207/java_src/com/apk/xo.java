package com.apk;

import androidx.annotation.NonNull;
/* compiled from: BytesResource.java */
/* loaded from: classes8.dex */
public class xo implements gl<byte[]> {

    /* renamed from: do  reason: not valid java name */
    public final byte[] f5702do;

    public xo(byte[] bArr) {
        eg.m593else(bArr, "Argument must not be null");
        this.f5702do = bArr;
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public void mo65do() {
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public int mo66for() {
        return this.f5702do.length;
    }

    @Override // com.apk.gl
    @NonNull
    public byte[] get() {
        return this.f5702do;
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new */
    public Class<byte[]> mo68new() {
        return byte[].class;
    }
}
