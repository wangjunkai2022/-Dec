package com.apk;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* compiled from: DrawableImageViewTarget.java */
/* loaded from: classes8.dex */
public class jr extends kr<Drawable> {
    public jr(ImageView imageView) {
        super(imageView);
    }

    @Override // com.apk.kr
    /* renamed from: new */
    public void mo1166new(@Nullable Drawable drawable) {
        ((ImageView) this.f3918if).setImageDrawable(drawable);
    }
}
