package com.apk;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferEncoder.java */
/* loaded from: classes8.dex */
public class nm implements gj<ByteBuffer> {
    @Override // com.apk.gj
    /* renamed from: do */
    public boolean mo652do(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull mj mjVar) {
        try {
            wr.m2941new(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
