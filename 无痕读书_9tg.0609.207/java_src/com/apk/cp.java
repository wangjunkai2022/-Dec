package com.apk;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: UnitDrawableDecoder.java */
/* loaded from: classes8.dex */
public class cp implements oj<Drawable, Drawable> {
    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull Drawable drawable, @NonNull mj mjVar) throws IOException {
        return true;
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: if */
    public gl<Drawable> mo259if(@NonNull Drawable drawable, int i, int i2, @NonNull mj mjVar) throws IOException {
        Drawable drawable2 = drawable;
        if (drawable2 != null) {
            return new ap(drawable2);
        }
        return null;
    }
}
