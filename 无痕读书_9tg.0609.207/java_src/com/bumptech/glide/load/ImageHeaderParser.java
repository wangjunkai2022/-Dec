package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import com.apk.nl;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public interface ImageHeaderParser {

    /* loaded from: classes8.dex */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);
        

        /* renamed from: do  reason: not valid java name */
        public final boolean f8413do;

        ImageType(boolean z) {
            this.f8413do = z;
        }

        public boolean hasAlpha() {
            return this.f8413do;
        }
    }

    /* renamed from: do */
    int mo237do(@NonNull InputStream inputStream, @NonNull nl nlVar) throws IOException;

    @NonNull
    ImageType getType(@NonNull InputStream inputStream) throws IOException;

    @NonNull
    ImageType getType(@NonNull ByteBuffer byteBuffer) throws IOException;
}
