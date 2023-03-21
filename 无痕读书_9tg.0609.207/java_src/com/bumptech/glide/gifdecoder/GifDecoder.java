package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public interface GifDecoder {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes8.dex */
    public @interface GifDecodeStatus {
    }

    /* renamed from: com.bumptech.glide.gifdecoder.GifDecoder$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    /* renamed from: case */
    int mo3069case();

    void clear();

    @Nullable
    /* renamed from: do */
    Bitmap mo3070do();

    /* renamed from: else */
    int mo3071else();

    /* renamed from: for */
    int mo3072for();

    @NonNull
    ByteBuffer getData();

    /* renamed from: if */
    void mo3074if();

    /* renamed from: new */
    int mo3075new();

    /* renamed from: try */
    void mo3077try();
}
