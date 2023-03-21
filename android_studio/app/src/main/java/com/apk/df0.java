package com.apk;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: ZipInputStream.java */
/* loaded from: classes7.dex */
public class df0 extends InputStream {

    /* renamed from: do  reason: not valid java name */
    public cf0 f856do;

    public df0(cf0 cf0Var) {
        this.f856do = cf0Var;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f856do.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f856do.close();
            if (this.f856do.mo171try() != null) {
                this.f856do.mo171try().m2444do();
            }
        } catch (af0 e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f856do.read();
        if (read != -1) {
            this.f856do.mo171try().f4340case.update(read);
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.f856do.skip(j);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f856do.read(bArr, i, i2);
        if (read > 0 && this.f856do.mo171try() != null) {
            sf0 mo171try = this.f856do.mo171try();
            if (mo171try == null) {
                throw null;
            }
            if (bArr != null) {
                mo171try.f4340case.update(bArr, i, read);
            }
        }
        return read;
    }
}
