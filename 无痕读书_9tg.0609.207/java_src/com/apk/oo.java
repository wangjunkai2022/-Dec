package com.apk;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: RecyclableBufferedInputStream.java */
/* loaded from: classes8.dex */
public class oo extends FilterInputStream {

    /* renamed from: case  reason: not valid java name */
    public final nl f3478case;

    /* renamed from: do  reason: not valid java name */
    public volatile byte[] f3479do;

    /* renamed from: for  reason: not valid java name */
    public int f3480for;

    /* renamed from: if  reason: not valid java name */
    public int f3481if;

    /* renamed from: new  reason: not valid java name */
    public int f3482new;

    /* renamed from: try  reason: not valid java name */
    public int f3483try;

    /* compiled from: RecyclableBufferedInputStream.java */
    /* renamed from: com.apk.oo$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends IOException {
        public Cdo(String str) {
            super(str);
        }
    }

    public oo(@NonNull InputStream inputStream, @NonNull nl nlVar) {
        super(inputStream);
        this.f3482new = -1;
        this.f3478case = nlVar;
        this.f3479do = (byte[]) nlVar.mo1887case(65536, byte[].class);
    }

    /* renamed from: break  reason: not valid java name */
    public static IOException m1976break() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f3479do != null && inputStream != null) {
        } else {
            m1976break();
            throw null;
        }
        return (this.f3481if - this.f3483try) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f3479do != null) {
            this.f3478case.put(this.f3479do);
            this.f3479do = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final int m1977for(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.f3482new;
        if (i != -1) {
            int i2 = this.f3483try - i;
            int i3 = this.f3480for;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f3481if == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f3478case.mo1887case(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f3479do = bArr2;
                    this.f3478case.put(bArr);
                    bArr = bArr2;
                } else {
                    int i4 = this.f3482new;
                    if (i4 > 0) {
                        System.arraycopy(bArr, i4, bArr, 0, bArr.length - i4);
                    }
                }
                int i5 = this.f3483try - this.f3482new;
                this.f3483try = i5;
                this.f3482new = 0;
                this.f3481if = 0;
                int read = inputStream.read(bArr, i5, bArr.length - i5);
                int i6 = this.f3483try;
                if (read > 0) {
                    i6 += read;
                }
                this.f3481if = i6;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f3482new = -1;
            this.f3483try = 0;
            this.f3481if = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.f3480for = Math.max(this.f3480for, i);
        this.f3482new = this.f3483try;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f3479do;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f3483try < this.f3481if || m1977for(inputStream, bArr) != -1) {
                if (bArr != this.f3479do && (bArr = this.f3479do) == null) {
                    m1976break();
                    throw null;
                }
                if (this.f3481if - this.f3483try > 0) {
                    int i = this.f3483try;
                    this.f3483try = i + 1;
                    return bArr[i] & ExifInterface.MARKER;
                }
                return -1;
            }
            return -1;
        }
        m1976break();
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f3479do != null) {
            if (-1 != this.f3482new) {
                this.f3483try = this.f3482new;
            } else {
                throw new Cdo("Mark has been invalidated, pos: " + this.f3483try + " markLimit: " + this.f3480for);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f3479do;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                if (this.f3481if - this.f3483try >= j) {
                    this.f3483try = (int) (this.f3483try + j);
                    return j;
                }
                long j2 = this.f3481if - this.f3483try;
                this.f3483try = this.f3481if;
                if (this.f3482new != -1 && j <= this.f3480for) {
                    if (m1977for(inputStream, bArr) == -1) {
                        return j2;
                    }
                    if (this.f3481if - this.f3483try >= j - j2) {
                        this.f3483try = (int) ((this.f3483try + j) - j2);
                        return j;
                    }
                    long j3 = (j2 + this.f3481if) - this.f3483try;
                    this.f3483try = this.f3481if;
                    return j3;
                }
                return j2 + inputStream.skip(j - j2);
            }
            m1976break();
            throw null;
        }
        m1976break();
        throw null;
    }

    /* renamed from: try  reason: not valid java name */
    public synchronized void m1978try() {
        if (this.f3479do != null) {
            this.f3478case.put(this.f3479do);
            this.f3479do = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        byte[] bArr2 = this.f3479do;
        if (bArr2 == null) {
            m1976break();
            throw null;
        } else if (i2 == 0) {
            return 0;
        } else {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                if (this.f3483try < this.f3481if) {
                    int i5 = this.f3481if - this.f3483try >= i2 ? i2 : this.f3481if - this.f3483try;
                    System.arraycopy(bArr2, this.f3483try, bArr, i, i5);
                    this.f3483try += i5;
                    if (i5 == i2 || inputStream.available() == 0) {
                        return i5;
                    }
                    i += i5;
                    i3 = i2 - i5;
                } else {
                    i3 = i2;
                }
                while (true) {
                    if (this.f3482new == -1 && i3 >= bArr2.length) {
                        i4 = inputStream.read(bArr, i, i3);
                        if (i4 == -1) {
                            return i3 != i2 ? i2 - i3 : -1;
                        }
                    } else if (m1977for(inputStream, bArr2) == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    } else {
                        if (bArr2 != this.f3479do && (bArr2 = this.f3479do) == null) {
                            m1976break();
                            throw null;
                        }
                        i4 = this.f3481if - this.f3483try >= i3 ? i3 : this.f3481if - this.f3483try;
                        System.arraycopy(bArr2, this.f3483try, bArr, i, i4);
                        this.f3483try += i4;
                    }
                    i3 -= i4;
                    if (i3 == 0) {
                        return i2;
                    }
                    if (inputStream.available() == 0) {
                        return i2 - i3;
                    }
                    i += i4;
                }
            } else {
                m1976break();
                throw null;
            }
        }
    }
}
