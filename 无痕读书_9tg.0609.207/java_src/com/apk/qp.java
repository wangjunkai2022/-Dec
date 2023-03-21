package com.apk;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: BitmapDrawableTranscoder.java */
/* loaded from: classes8.dex */
public class qp implements tp<Bitmap, BitmapDrawable> {

    /* renamed from: do  reason: not valid java name */
    public final Resources f3912do;

    public qp(@NonNull Resources resources) {
        eg.m593else(resources, "Argument must not be null");
        this.f3912do = resources;
    }

    @Override // com.apk.tp
    @Nullable
    /* renamed from: do */
    public gl<BitmapDrawable> mo2069do(@NonNull gl<Bitmap> glVar, @NonNull mj mjVar) {
        return mo.m1738try(this.f3912do, glVar);
    }
}
