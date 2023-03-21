package com.apk;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* compiled from: StrictLineReader.java */
/* loaded from: classes8.dex */
public class ti implements Closeable {

    /* renamed from: do  reason: not valid java name */
    public final InputStream f4707do;

    /* renamed from: for  reason: not valid java name */
    public byte[] f4708for;

    /* renamed from: if  reason: not valid java name */
    public final Charset f4709if;

    /* renamed from: new  reason: not valid java name */
    public int f4710new;

    /* renamed from: try  reason: not valid java name */
    public int f4711try;

    /* compiled from: StrictLineReader.java */
    /* renamed from: com.apk.ti$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i <= 0 || ((ByteArrayOutputStream) this).buf[i + (-1)] != 13) ? ((ByteArrayOutputStream) this).count : i - 1, ti.this.f4709if.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public ti(InputStream inputStream, Charset charset) {
        if (charset != null) {
            if (charset.equals(ui.f4896do)) {
                this.f4707do = inputStream;
                this.f4709if = charset;
                this.f4708for = new byte[8192];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f4707do) {
            if (this.f4708for != null) {
                this.f4708for = null;
                this.f4707do.close();
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2604for() throws IOException {
        InputStream inputStream = this.f4707do;
        byte[] bArr = this.f4708for;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f4710new = 0;
            this.f4711try = read;
            return;
        }
        throw new EOFException();
    }

    /* renamed from: try  reason: not valid java name */
    public String m2605try() throws IOException {
        int i;
        int i2;
        synchronized (this.f4707do) {
            if (this.f4708for != null) {
                if (this.f4710new >= this.f4711try) {
                    m2604for();
                }
                for (int i3 = this.f4710new; i3 != this.f4711try; i3++) {
                    if (this.f4708for[i3] == 10) {
                        if (i3 != this.f4710new) {
                            i2 = i3 - 1;
                            if (this.f4708for[i2] == 13) {
                                String str = new String(this.f4708for, this.f4710new, i2 - this.f4710new, this.f4709if.name());
                                this.f4710new = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(this.f4708for, this.f4710new, i2 - this.f4710new, this.f4709if.name());
                        this.f4710new = i3 + 1;
                        return str2;
                    }
                }
                Cdo cdo = new Cdo((this.f4711try - this.f4710new) + 80);
                loop1: while (true) {
                    cdo.write(this.f4708for, this.f4710new, this.f4711try - this.f4710new);
                    this.f4711try = -1;
                    m2604for();
                    i = this.f4710new;
                    while (i != this.f4711try) {
                        if (this.f4708for[i] == 10) {
                            break loop1;
                        }
                        i++;
                    }
                }
                if (i != this.f4710new) {
                    cdo.write(this.f4708for, this.f4710new, i - this.f4710new);
                }
                this.f4710new = i + 1;
                return cdo.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }
}
