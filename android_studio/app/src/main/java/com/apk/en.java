package com.apk;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamEncoder.java */
/* loaded from: classes8.dex */
public class en implements gj<InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final nl f1097do;

    public en(nl nlVar) {
        this.f1097do = nlVar;
    }

    @Override // com.apk.gj
    /* renamed from: do  reason: not valid java name */
    public boolean mo652do(@NonNull InputStream inputStream, @NonNull File file, @NonNull mj mjVar) {
        InputStream inputStream2 = inputStream;
        byte[] bArr = (byte[]) this.f1097do.mo1887case(65536, byte[].class);
        boolean z = false;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int read = inputStream2.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (IOException unused) {
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        this.f1097do.put(bArr);
                        return z;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        this.f1097do.put(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                z = true;
                fileOutputStream2.close();
            } catch (IOException unused3) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused4) {
        }
        this.f1097do.put(bArr);
        return z;
    }
}
