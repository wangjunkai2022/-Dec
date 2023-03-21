package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapDecoder.java */
/* loaded from: classes8.dex */
public class xn implements oj<ByteBuffer, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final eo f5701do;

    public xn(eo eoVar) {
        this.f5701do = eoVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull ByteBuffer byteBuffer, @NonNull mj mjVar) throws IOException {
        if (this.f5701do != null) {
            return true;
        }
        throw null;
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull mj mjVar) throws IOException {
        return this.f5701do.m664if(wr.m2942try(byteBuffer), i, i2, mjVar, eo.f1104catch);
    }
}
