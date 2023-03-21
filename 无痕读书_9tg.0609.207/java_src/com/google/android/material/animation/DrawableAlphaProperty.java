package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.WeakHashMap;
/* loaded from: classes8.dex */
public class DrawableAlphaProperty extends Property<Drawable, Integer> {
    public static final Property<Drawable, Integer> DRAWABLE_ALPHA_COMPAT = new DrawableAlphaProperty();
    public final WeakHashMap<Drawable, Integer> alphaCache;

    public DrawableAlphaProperty() {
        super(Integer.class, "drawableAlphaCompat");
        this.alphaCache = new WeakHashMap<>();
    }

    @Override // android.util.Property
    @Nullable
    public Integer get(@NonNull Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public void set(@NonNull Drawable drawable, @NonNull Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
