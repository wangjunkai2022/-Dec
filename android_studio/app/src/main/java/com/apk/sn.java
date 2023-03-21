package com.apk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.File;

/* compiled from: BitmapDrawableEncoder.java */
/* loaded from: classes8.dex */
public class sn implements pj<BitmapDrawable> {

    /* renamed from: do  reason: not valid java name */
    public final pl f4468do;

    /* renamed from: if  reason: not valid java name */
    public final pj<Bitmap> f4469if;

    public sn(pl plVar, pj<Bitmap> pjVar) {
        this.f4468do = plVar;
        this.f4469if = pjVar;
    }

    @Override // com.apk.gj
    /* renamed from: do */
    public boolean mo652do(@NonNull Object obj, @NonNull File file, @NonNull mj mjVar) {
        return this.f4469if.mo652do(new vn(((BitmapDrawable) ((gl) obj).get()).getBitmap(), this.f4468do), file, mjVar);
    }

    @Override // com.apk.pj
    @NonNull
    /* renamed from: if */
    public fj mo1258if(@NonNull mj mjVar) {
        return this.f4469if.mo1258if(mjVar);
    }
}
