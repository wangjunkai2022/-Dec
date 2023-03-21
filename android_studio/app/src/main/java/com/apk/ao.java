package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: CenterInside.java */
/* loaded from: classes8.dex */
public class ao extends wn {

    /* renamed from: if  reason: not valid java name */
    public static final byte[] f127if = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(kj.f2575do);

    @Override // com.apk.kj
    /* renamed from: do  reason: not valid java name */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f127if);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        return obj instanceof ao;
    }

    @Override // com.apk.wn
    /* renamed from: for  reason: not valid java name */
    public Bitmap mo77for(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2) {
        return so.m2515for(plVar, bitmap, i, i2);
    }

    @Override // com.apk.kj
    public int hashCode() {
        return -670243078;
    }
}
