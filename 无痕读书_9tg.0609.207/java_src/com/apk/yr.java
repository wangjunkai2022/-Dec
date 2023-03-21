package com.apk;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ContentLengthInputStream.java */
/* loaded from: classes8.dex */
public final class yr extends FilterInputStream {

    /* renamed from: do  reason: not valid java name */
    public final long f6055do;

    /* renamed from: if  reason: not valid java name */
    public int f6056if;

    public yr(@NonNull InputStream inputStream, long j) {
        super(inputStream);
        this.f6055do = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f6055do - this.f6056if, ((FilterInputStream) this).in.available());
    }

    /* renamed from: for  reason: not valid java name */
    public final int m3112for(int i) throws IOException {
        if (i >= 0) {
            this.f6056if += i;
        } else if (this.f6055do - this.f6056if > 0) {
            StringBuilder m1016super = Cgoto.m1016super("Failed to read all expected data, expected: ");
            m1016super.append(this.f6055do);
            m1016super.append(", but read: ");
            m1016super.append(this.f6056if);
            throw new IOException(m1016super.toString());
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        m3112for(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int read;
        read = super.read(bArr, i, i2);
        m3112for(read);
        return read;
    }
}
