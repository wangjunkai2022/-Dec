package com.apk;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: BufferedOutputStream.java */
/* loaded from: classes8.dex */
public final class tj extends OutputStream {
    @NonNull

    /* renamed from: do  reason: not valid java name */
    public final OutputStream f4722do;

    /* renamed from: for  reason: not valid java name */
    public nl f4723for;

    /* renamed from: if  reason: not valid java name */
    public byte[] f4724if;

    /* renamed from: new  reason: not valid java name */
    public int f4725new;

    public tj(@NonNull OutputStream outputStream, @NonNull nl nlVar) {
        this.f4722do = outputStream;
        this.f4723for = nlVar;
        this.f4724if = (byte[]) nlVar.mo1887case(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f4722do.close();
            byte[] bArr = this.f4724if;
            if (bArr != null) {
                this.f4723for.put(bArr);
                this.f4724if = null;
            }
        } catch (Throwable th) {
            this.f4722do.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        int i = this.f4725new;
        if (i > 0) {
            this.f4722do.write(this.f4724if, 0, i);
            this.f4725new = 0;
        }
        this.f4722do.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f4724if;
        int i2 = this.f4725new;
        int i3 = i2 + 1;
        this.f4725new = i3;
        bArr[i2] = (byte) i;
        if (i3 != bArr.length || i3 <= 0) {
            return;
        }
        this.f4722do.write(bArr, 0, i3);
        this.f4725new = 0;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            if (this.f4725new == 0 && i4 >= this.f4724if.length) {
                this.f4722do.write(bArr, i5, i4);
                return;
            }
            int min = Math.min(i4, this.f4724if.length - this.f4725new);
            System.arraycopy(bArr, i5, this.f4724if, this.f4725new, min);
            int i6 = this.f4725new + min;
            this.f4725new = i6;
            i3 += min;
            byte[] bArr2 = this.f4724if;
            if (i6 == bArr2.length && i6 > 0) {
                this.f4722do.write(bArr2, 0, i6);
                this.f4725new = 0;
                continue;
            }
        } while (i3 < i2);
    }
}
