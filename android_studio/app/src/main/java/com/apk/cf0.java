package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* compiled from: PartInputStream.java */
/* loaded from: classes7.dex */
public class cf0 extends InputStream {

    /* renamed from: do  reason: not valid java name */
    public RandomAccessFile f589do;

    /* renamed from: for  reason: not valid java name */
    public long f591for;

    /* renamed from: new  reason: not valid java name */
    public sf0 f594new;

    /* renamed from: this  reason: not valid java name */
    public boolean f595this;

    /* renamed from: try  reason: not valid java name */
    public te0 f596try;

    /* renamed from: case  reason: not valid java name */
    public byte[] f588case = new byte[1];

    /* renamed from: else  reason: not valid java name */
    public byte[] f590else = new byte[16];

    /* renamed from: goto  reason: not valid java name */
    public int f592goto = 0;

    /* renamed from: break  reason: not valid java name */
    public int f587break = -1;

    /* renamed from: if  reason: not valid java name */
    public long f593if = 0;

    public cf0(RandomAccessFile randomAccessFile, long j, sf0 sf0Var) {
        boolean z = true;
        this.f595this = false;
        this.f589do = randomAccessFile;
        this.f594new = sf0Var;
        this.f596try = sf0Var.f4345try;
        this.f591for = j;
        if0 if0Var = sf0Var.f4343if;
        this.f595this = (if0Var.f2079const && if0Var.f2082final == 99) ? false : false;
    }

    @Override // java.io.InputStream
    public int available() {
        long j = this.f591for - this.f593if;
        return j > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f589do.close();
    }

    /* renamed from: for  reason: not valid java name */
    public void m331for() throws IOException {
        te0 te0Var;
        if (this.f595this && (te0Var = this.f596try) != null && (te0Var instanceof se0) && ((se0) te0Var).f4326break == null) {
            byte[] bArr = new byte[10];
            int read = this.f589do.read(bArr);
            if (read != 10) {
                if (this.f594new.f4341do.f3411try) {
                    this.f589do.close();
                    RandomAccessFile m2442catch = this.f594new.m2442catch();
                    this.f589do = m2442catch;
                    m2442catch.read(bArr, read, 10 - read);
                } else {
                    throw new IOException("Error occured while reading stored AES authentication bytes");
                }
            }
            ((se0) this.f594new.f4345try).f4326break = bArr;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f593if >= this.f591for) {
            return -1;
        }
        if (this.f595this) {
            int i = this.f592goto;
            if (i == 0 || i == 16) {
                if (read(this.f590else) == -1) {
                    return -1;
                }
                this.f592goto = 0;
            }
            byte[] bArr = this.f590else;
            int i2 = this.f592goto;
            this.f592goto = i2 + 1;
            return bArr[i2] & ExifInterface.MARKER;
        } else if (read(this.f588case, 0, 1) == -1) {
            return -1;
        } else {
            return this.f588case[0] & ExifInterface.MARKER;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j >= 0) {
            long j2 = this.f591for;
            long j3 = this.f593if;
            if (j > j2 - j3) {
                j = j2 - j3;
            }
            this.f593if += j;
            return j;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: try */
    public sf0 mo171try() {
        return this.f594new;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.f591for - this.f593if;
        if (i2 > j && (i2 = (int) j) == 0) {
            m331for();
            return -1;
        }
        if ((this.f594new.f4345try instanceof se0) && this.f593if + i2 < this.f591for && (i3 = i2 % 16) != 0) {
            i2 -= i3;
        }
        synchronized (this.f589do) {
            int read = this.f589do.read(bArr, i, i2);
            this.f587break = read;
            if (read < i2 && this.f594new.f4341do.f3411try) {
                this.f589do.close();
                this.f589do = this.f594new.m2442catch();
                if (this.f587break < 0) {
                    this.f587break = 0;
                }
                int read2 = this.f589do.read(bArr, this.f587break, i2 - this.f587break);
                if (read2 > 0) {
                    this.f587break += read2;
                }
            }
        }
        int i4 = this.f587break;
        if (i4 > 0) {
            te0 te0Var = this.f596try;
            if (te0Var != null) {
                try {
                    te0Var.mo2439do(bArr, i, i4);
                } catch (af0 e) {
                    throw new IOException(e.getMessage());
                }
            }
            this.f593if += this.f587break;
        }
        if (this.f593if >= this.f591for) {
            m331for();
        }
        return this.f587break;
    }
}
