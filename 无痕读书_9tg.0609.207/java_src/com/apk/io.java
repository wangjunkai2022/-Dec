package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* compiled from: FitCenter.java */
/* loaded from: classes8.dex */
public class io extends wn {

    /* renamed from: if  reason: not valid java name */
    public static final byte[] f2210if = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(kj.f2575do);

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f2210if);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        return obj instanceof io;
    }

    @Override // com.apk.wn
    /* renamed from: for */
    public Bitmap mo77for(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2) {
        return so.m2517new(plVar, bitmap, i, i2);
    }

    @Override // com.apk.kj
    public int hashCode() {
        return 1572326941;
    }
}
