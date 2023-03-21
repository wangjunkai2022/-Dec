package com.apk;

import androidx.exifinterface.media.ExifInterface;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* compiled from: InflaterInputStream.java */
/* loaded from: classes7.dex */
public class bf0 extends cf0 {

    /* renamed from: catch  reason: not valid java name */
    public Inflater f303catch;

    /* renamed from: class  reason: not valid java name */
    public byte[] f304class;

    /* renamed from: const  reason: not valid java name */
    public byte[] f305const;

    /* renamed from: final  reason: not valid java name */
    public sf0 f306final;

    /* renamed from: super  reason: not valid java name */
    public long f307super;

    /* renamed from: throw  reason: not valid java name */
    public long f308throw;

    public bf0(RandomAccessFile randomAccessFile, long j, long j2, sf0 sf0Var) {
        super(randomAccessFile, j2, sf0Var);
        this.f305const = new byte[1];
        this.f303catch = new Inflater(true);
        this.f304class = new byte[4096];
        this.f306final = sf0Var;
        this.f307super = 0L;
        this.f308throw = sf0Var.f4343if.f2076case;
    }

    @Override // com.apk.cf0, java.io.InputStream
    public int available() {
        return !this.f303catch.finished();
    }

    @Override // com.apk.cf0, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f303catch.end();
        this.f589do.close();
    }

    @Override // com.apk.cf0, java.io.InputStream
    public int read() throws IOException {
        if (read(this.f305const, 0, 1) == -1) {
            return -1;
        }
        return this.f305const[0] & ExifInterface.MARKER;
    }

    @Override // com.apk.cf0, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j >= 0) {
            int min = (int) Math.min(j, 2147483647L);
            byte[] bArr = new byte[512];
            int i = 0;
            while (i < min) {
                int i2 = min - i;
                if (i2 > 512) {
                    i2 = 512;
                }
                int read = read(bArr, 0, i2);
                if (read == -1) {
                    break;
                }
                i += read;
            }
            return i;
        }
        throw new IllegalArgumentException("negative skip length");
    }

    @Override // com.apk.cf0
    /* renamed from: try  reason: not valid java name */
    public sf0 mo171try() {
        return this.f594new;
    }

    @Override // com.apk.cf0, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (bArr != null) {
            return read(bArr, 0, bArr.length);
        }
        throw new NullPointerException("input buffer is null");
    }

    @Override // com.apk.cf0, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr != null) {
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            try {
                if (this.f307super >= this.f308throw) {
                    while (super.read(new byte[1024], 0, 1024) != -1) {
                    }
                    m331for();
                    return -1;
                }
                while (true) {
                    int inflate = this.f303catch.inflate(bArr, i, i2);
                    if (inflate == 0) {
                        if (this.f303catch.finished() || this.f303catch.needsDictionary()) {
                            break;
                        } else if (this.f303catch.needsInput()) {
                            byte[] bArr2 = this.f304class;
                            int read = super.read(bArr2, 0, bArr2.length);
                            if (read != -1) {
                                this.f303catch.setInput(this.f304class, 0, read);
                            } else {
                                throw new EOFException("Unexpected end of ZLIB input stream");
                            }
                        }
                    } else {
                        this.f307super += inflate;
                        return inflate;
                    }
                }
                while (super.read(new byte[1024], 0, 1024) != -1) {
                }
                m331for();
                return -1;
            } catch (DataFormatException e) {
                String message = e.getMessage() != null ? e.getMessage() : "Invalid ZLIB data format";
                sf0 sf0Var = this.f306final;
                if (sf0Var != null) {
                    jf0 jf0Var = sf0Var.f4344new;
                    if (jf0Var.f2323goto && jf0Var.f2326this == 0) {
                        message = Cgoto.m989case(message, " - Wrong Password?");
                    }
                }
                throw new IOException(message);
            }
        }
        throw new NullPointerException("input buffer is null");
    }
}
