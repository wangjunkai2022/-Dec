package com.apk;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: MarkEnforcingInputStream.java */
/* loaded from: classes8.dex */
public class es extends FilterInputStream {

    /* renamed from: do  reason: not valid java name */
    public int f1119do;

    public es(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f1119do = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f1119do;
        if (i == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i, super.available());
    }

    /* renamed from: for  reason: not valid java name */
    public final long m674for(long j) {
        int i = this.f1119do;
        if (i == 0) {
            return -1L;
        }
        return (i == Integer.MIN_VALUE || j <= ((long) i)) ? j : i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.f1119do = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (m674for(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m675try(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f1119do = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long m674for = m674for(j);
        if (m674for == -1) {
            return 0L;
        }
        long skip = super.skip(m674for);
        m675try(skip);
        return skip;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m675try(long j) {
        int i = this.f1119do;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f1119do = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int m674for = (int) m674for(i2);
        if (m674for == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m674for);
        m675try(read);
        return read;
    }
}
