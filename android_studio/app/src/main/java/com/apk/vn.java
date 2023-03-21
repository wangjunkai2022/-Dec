package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: BitmapResource.java */
/* loaded from: classes8.dex */
public class vn implements gl<Bitmap>, cl {

    /* renamed from: do  reason: not valid java name */
    public final Bitmap f5179do;

    /* renamed from: if  reason: not valid java name */
    public final pl f5180if;

    public vn(@NonNull Bitmap bitmap, @NonNull pl plVar) {
        eg.m593else(bitmap, "Bitmap must not be null");
        this.f5179do = bitmap;
        eg.m593else(plVar, "BitmapPool must not be null");
        this.f5180if = plVar;
    }

    @Nullable
    /* renamed from: try  reason: not valid java name */
    public static vn m2827try(@Nullable Bitmap bitmap, @NonNull pl plVar) {
        if (bitmap == null) {
            return null;
        }
        return new vn(bitmap, plVar);
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public void mo65do() {
        this.f5180if.mo868do(this.f5179do);
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public int mo66for() {
        return gs.m1031case(this.f5179do);
    }

    @Override // com.apk.gl
    @NonNull
    public Bitmap get() {
        return this.f5179do;
    }

    @Override // com.apk.cl
    /* renamed from: if */
    public void mo353if() {
        this.f5179do.prepareToDraw();
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new */
    public Class<Bitmap> mo68new() {
        return Bitmap.class;
    }
}
