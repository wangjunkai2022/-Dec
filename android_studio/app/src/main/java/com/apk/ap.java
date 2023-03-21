package com.apk;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* compiled from: NonOwnedDrawableResource.java */
/* loaded from: classes8.dex */
public final class ap extends zo<Drawable> {
    public ap(Drawable drawable) {
        super(drawable);
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public void mo65do() {
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public int mo66for() {
        return Math.max(1, this.f6222do.getIntrinsicHeight() * this.f6222do.getIntrinsicWidth() * 4);
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new */
    public Class<Drawable> mo68new() {
        return this.f6222do.getClass();
    }
}
