package com.apk;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes8.dex */
public final class yn implements oj<ByteBuffer, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final un f6008do = new un();

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull ByteBuffer byteBuffer, @NonNull mj mjVar) throws IOException {
        return true;
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull mj mjVar) throws IOException {
        return this.f6008do.mo259if(ImageDecoder.createSource(byteBuffer), i, i2, mjVar);
    }
}
