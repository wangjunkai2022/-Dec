package com.apk;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ExifOrientationStream.java */
/* loaded from: classes8.dex */
public final class xj extends FilterInputStream {

    /* renamed from: for  reason: not valid java name */
    public static final byte[] f5687for;

    /* renamed from: new  reason: not valid java name */
    public static final int f5688new;

    /* renamed from: try  reason: not valid java name */
    public static final int f5689try;

    /* renamed from: do  reason: not valid java name */
    public final byte f5690do;

    /* renamed from: if  reason: not valid java name */
    public int f5691if;

    static {
        byte[] bArr = {-1, ExifInterface.MARKER_APP1, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f5687for = bArr;
        int length = bArr.length;
        f5688new = length;
        f5689try = length + 2;
    }

    public xj(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f5690do = (byte) i;
            return;
        }
        throw new IllegalArgumentException(Cgoto.m1003implements("Cannot add invalid orientation: ", i));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        int i;
        int i2 = this.f5691if;
        if (i2 < 2 || i2 > (i = f5689try)) {
            read = super.read();
        } else if (i2 == i) {
            read = this.f5690do;
        } else {
            read = f5687for[i2 - 2] & ExifInterface.MARKER;
        }
        if (read != -1) {
            this.f5691if++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f5691if = (int) (this.f5691if + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.f5691if;
        int i5 = f5689try;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f5690do;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f5687for, this.f5691if - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f5691if += i3;
        }
        return i3;
    }
}
