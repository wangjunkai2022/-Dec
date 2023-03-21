package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
/* compiled from: UnitBitmapDecoder.java */
/* loaded from: classes8.dex */
public final class to implements oj<Bitmap, Bitmap> {

    /* compiled from: UnitBitmapDecoder.java */
    /* renamed from: com.apk.to$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements gl<Bitmap> {

        /* renamed from: do  reason: not valid java name */
        public final Bitmap f4739do;

        public Cdo(@NonNull Bitmap bitmap) {
            this.f4739do = bitmap;
        }

        @Override // com.apk.gl
        /* renamed from: do */
        public void mo65do() {
        }

        @Override // com.apk.gl
        /* renamed from: for */
        public int mo66for() {
            return gs.m1031case(this.f4739do);
        }

        @Override // com.apk.gl
        @NonNull
        public Bitmap get() {
            return this.f4739do;
        }

        @Override // com.apk.gl
        @NonNull
        /* renamed from: new */
        public Class<Bitmap> mo68new() {
            return Bitmap.class;
        }
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull Bitmap bitmap, @NonNull mj mjVar) throws IOException {
        return true;
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull Bitmap bitmap, int i, int i2, @NonNull mj mjVar) throws IOException {
        return new Cdo(bitmap);
    }
}
