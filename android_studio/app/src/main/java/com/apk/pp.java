package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapBytesTranscoder.java */
/* loaded from: classes8.dex */
public class pp implements tp<Bitmap, byte[]> {

    /* renamed from: do  reason: not valid java name */
    public final Bitmap.CompressFormat f3722do = Bitmap.CompressFormat.JPEG;

    /* renamed from: if  reason: not valid java name */
    public final int f3723if = 100;

    @Override // com.apk.tp
    @Nullable
    /* renamed from: do  reason: not valid java name */
    public gl<byte[]> mo2069do(@NonNull gl<Bitmap> glVar, @NonNull mj mjVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        glVar.get().compress(this.f3722do, this.f3723if, byteArrayOutputStream);
        glVar.mo65do();
        return new xo(byteArrayOutputStream.toByteArray());
    }
}
