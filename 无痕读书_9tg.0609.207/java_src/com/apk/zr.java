package com.apk;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* compiled from: ExceptionCatchingInputStream.java */
/* loaded from: classes8.dex */
public class zr extends InputStream {

    /* renamed from: for  reason: not valid java name */
    public static final Queue<zr> f6234for = gs.m1041new(0);

    /* renamed from: do  reason: not valid java name */
    public InputStream f6235do;

    /* renamed from: if  reason: not valid java name */
    public IOException f6236if;

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f6235do.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6235do.close();
    }

    /* renamed from: for  reason: not valid java name */
    public void m3245for() {
        this.f6236if = null;
        this.f6235do = null;
        synchronized (f6234for) {
            f6234for.offer(this);
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f6235do.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f6235do.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f6235do.read(bArr);
        } catch (IOException e) {
            this.f6236if = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f6235do.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f6235do.skip(j);
        } catch (IOException e) {
            this.f6236if = e;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f6235do.read(bArr, i, i2);
        } catch (IOException e) {
            this.f6236if = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f6235do.read();
        } catch (IOException e) {
            this.f6236if = e;
            return -1;
        }
    }
}
