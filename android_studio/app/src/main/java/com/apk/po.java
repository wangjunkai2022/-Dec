package com.apk;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: ResourceBitmapDecoder.java */
/* loaded from: classes8.dex */
public class po implements oj<Uri, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final bp f3720do;

    /* renamed from: if  reason: not valid java name */
    public final pl f3721if;

    public po(bp bpVar, pl plVar) {
        this.f3720do = bpVar;
        this.f3721if = plVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull Uri uri, @NonNull mj mjVar) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) throws IOException {
        gl m258for = this.f3720do.m258for(uri);
        if (m258for == null) {
            return null;
        }
        return fo.m867do(this.f3721if, (Drawable) m258for.get(), i, i2);
    }
}
