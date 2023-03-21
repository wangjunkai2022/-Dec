package com.ss.android.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes8.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    public final RandomAccessFile f11546a;

    public a(File file) throws FileNotFoundException {
        this.f11546a = new RandomAccessFile(file, "r");
    }

    @Override // com.ss.android.a.b
    public long a() throws IOException {
        return this.f11546a.length();
    }

    @Override // com.ss.android.a.b
    public void b() throws IOException {
        this.f11546a.close();
    }

    @Override // com.ss.android.a.b
    public int a(byte[] bArr, int i, int i2) throws IOException {
        return this.f11546a.read(bArr, i, i2);
    }

    @Override // com.ss.android.a.b
    public void a(long j, long j2) throws IOException {
        this.f11546a.seek(j);
    }
}
