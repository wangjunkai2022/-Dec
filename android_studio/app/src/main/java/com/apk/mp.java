package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.io.IOException;

/* compiled from: GifFrameResourceDecoder.java */
/* loaded from: classes8.dex */
public final class mp implements oj<GifDecoder, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final pl f3077do;

    public mp(pl plVar) {
        this.f3077do = plVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull GifDecoder gifDecoder, @NonNull mj mjVar) throws IOException {
        return true;
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull GifDecoder gifDecoder, int i, int i2, @NonNull mj mjVar) throws IOException {
        return vn.m2827try(gifDecoder.mo3070do(), this.f3077do);
    }
}
