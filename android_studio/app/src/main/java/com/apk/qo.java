package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: RoundedCorners.java */
/* loaded from: classes8.dex */
public final class qo extends wn {

    /* renamed from: for  reason: not valid java name */
    public static final byte[] f3897for = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(kj.f2575do);

    /* renamed from: if  reason: not valid java name */
    public final int f3898if;

    public qo(int i) {
        eg.m620try(i > 0, "roundingRadius must be greater than 0.");
        this.f3898if = i;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f3897for);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f3898if).array());
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        return (obj instanceof qo) && this.f3898if == ((qo) obj).f3898if;
    }

    @Override // com.apk.wn
    /* renamed from: for */
    public Bitmap mo77for(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2) {
        return so.m2514else(plVar, bitmap, this.f3898if);
    }

    @Override // com.apk.kj
    public int hashCode() {
        return (gs.m1042this(this.f3898if) * 31) - 569625254;
    }
}
