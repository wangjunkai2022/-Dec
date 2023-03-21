package com.apk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: DrawableBytesTranscoder.java */
/* loaded from: classes8.dex */
public final class rp implements tp<Drawable, byte[]> {

    /* renamed from: do  reason: not valid java name */
    public final pl f4184do;

    /* renamed from: for  reason: not valid java name */
    public final tp<hp, byte[]> f4185for;

    /* renamed from: if  reason: not valid java name */
    public final tp<Bitmap, byte[]> f4186if;

    public rp(@NonNull pl plVar, @NonNull tp<Bitmap, byte[]> tpVar, @NonNull tp<hp, byte[]> tpVar2) {
        this.f4184do = plVar;
        this.f4186if = tpVar;
        this.f4185for = tpVar2;
    }

    @Override // com.apk.tp
    @Nullable
    /* renamed from: do */
    public gl<byte[]> mo2069do(@NonNull gl<Drawable> glVar, @NonNull mj mjVar) {
        Drawable drawable = glVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f4186if.mo2069do(vn.m2827try(((BitmapDrawable) drawable).getBitmap(), this.f4184do), mjVar);
        }
        if (drawable instanceof hp) {
            return this.f4185for.mo2069do(glVar, mjVar);
        }
        return null;
    }
}
