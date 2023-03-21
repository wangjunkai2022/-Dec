package com.ss.android.socialbase.downloader.model;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.i.f;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes7.dex */
public class e implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public BufferedOutputStream f11988a;
    public FileDescriptor b;
    public RandomAccessFile c;

    public e(File file, int i) throws BaseException {
        BufferedOutputStream bufferedOutputStream;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.c = randomAccessFile;
            this.b = randomAccessFile.getFD();
            if (i > 0) {
                if (i < 8192) {
                    i = 8192;
                } else if (i > 131072) {
                    i = 131072;
                }
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this.c.getFD()), i);
            } else {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this.c.getFD()));
            }
            this.f11988a = bufferedOutputStream;
        } catch (IOException e) {
            throw new BaseException(1039, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x000f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String e1656423271105dc(java.lang.String r2) {
        /*
        L0:
            r0 = 74
            r1 = 55
        L4:
            switch(r0) {
                case 72: goto L0;
                case 73: goto L8;
                case 74: goto Lb;
                default: goto L7;
            }
        L7:
            goto L2b
        L8:
            switch(r1) {
                case 94: goto L26;
                case 95: goto Lf;
                case 96: goto Lf;
                default: goto Lb;
            }
        Lb:
            switch(r1) {
                case 55: goto L26;
                case 56: goto L26;
                case 57: goto Lf;
                default: goto Le;
            }
        Le:
            goto L26
        Lf:
            char[] r2 = r2.toCharArray()
            r0 = 0
        L14:
            int r1 = r2.length
            if (r0 >= r1) goto L20
            char r1 = r2[r0]
            r1 = r1 ^ r0
            char r1 = (char) r1
            r2[r0] = r1
            int r0 = r0 + 1
            goto L14
        L20:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            return r0
        L26:
            r0 = 73
            r1 = 96
            goto L4
        L2b:
            r0 = 72
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.model.e.e1656423271105dc(java.lang.String):java.lang.String");
    }

    public void a() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.f11988a;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
        FileDescriptor fileDescriptor = this.b;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void a(long j) throws IOException {
        this.c.seek(j);
    }

    public void a(byte[] bArr, int i, int i2) throws IOException {
        this.f11988a.write(bArr, i, i2);
    }

    public void b() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.f11988a;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
    }

    public void b(long j) throws IOException {
        this.c.setLength(j);
    }

    public void c() throws IOException {
        FileDescriptor fileDescriptor = this.b;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        f.a(this.c, this.f11988a);
    }
}
