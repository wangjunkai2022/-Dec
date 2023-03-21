package com.apk;
/* compiled from: ByteArrayAdapter.java */
/* loaded from: classes8.dex */
public final class rl implements ml<byte[]> {
    @Override // com.apk.ml
    /* renamed from: do */
    public int mo1726do() {
        return 1;
    }

    @Override // com.apk.ml
    public String getTag() {
        return "ByteArrayPool";
    }

    @Override // com.apk.ml
    /* renamed from: if */
    public int mo1727if(byte[] bArr) {
        return bArr.length;
    }

    @Override // com.apk.ml
    public byte[] newArray(int i) {
        return new byte[i];
    }
}
