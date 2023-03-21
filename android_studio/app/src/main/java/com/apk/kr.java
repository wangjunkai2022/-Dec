package com.apk;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: ImageViewTarget.java */
/* loaded from: classes8.dex */
public abstract class kr<Z> extends qr<ImageView, Z> {
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public Animatable f2655try;

    public kr(ImageView imageView) {
        super(imageView);
    }

    /* renamed from: case  reason: not valid java name */
    public final void m1554case(@Nullable Z z) {
        mo1166new(z);
        if (z instanceof Animatable) {
            Animatable animatable = (Animatable) z;
            this.f2655try = animatable;
            animatable.start();
            return;
        }
        this.f2655try = null;
    }

    @Override // com.apk.gr, com.apk.pr
    /* renamed from: else */
    public void mo272else(@Nullable Drawable drawable) {
        m1554case(null);
        ((ImageView) this.f3918if).setImageDrawable(drawable);
    }

    @Override // com.apk.pr
    /* renamed from: if */
    public void mo275if(@NonNull Z z, @Nullable sr<? super Z> srVar) {
        m1554case(z);
    }

    /* renamed from: new */
    public abstract void mo1166new(@Nullable Z z);

    @Override // com.apk.gr, com.apk.eq
    public void onStart() {
        Animatable animatable = this.f2655try;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.apk.gr, com.apk.eq
    public void onStop() {
        Animatable animatable = this.f2655try;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.apk.gr, com.apk.pr
    /* renamed from: this */
    public void mo277this(@Nullable Drawable drawable) {
        this.f3917for.m2178do();
        Animatable animatable = this.f2655try;
        if (animatable != null) {
            animatable.stop();
        }
        m1554case(null);
        ((ImageView) this.f3918if).setImageDrawable(drawable);
    }

    @Override // com.apk.gr, com.apk.pr
    /* renamed from: try */
    public void mo278try(@Nullable Drawable drawable) {
        m1554case(null);
        ((ImageView) this.f3918if).setImageDrawable(drawable);
    }
}
