package com.apk;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputStreamBitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes8.dex */
public final class lo implements oj<InputStream, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final un f2847do = new un();

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull InputStream inputStream, @NonNull mj mjVar) throws IOException {
        return true;
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull InputStream inputStream, int i, int i2, @NonNull mj mjVar) throws IOException {
        return this.f2847do.mo259if(ImageDecoder.createSource(wr.m2940if(inputStream)), i, i2, mjVar);
    }
}
