package com.apk;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
/* compiled from: DrawableResource.java */
/* loaded from: classes8.dex */
public abstract class zo<T extends Drawable> implements gl<T>, cl {

    /* renamed from: do  reason: not valid java name */
    public final T f6222do;

    public zo(T t) {
        eg.m593else(t, "Argument must not be null");
        this.f6222do = t;
    }

    @Override // com.apk.gl
    @NonNull
    public Object get() {
        Drawable.ConstantState constantState = this.f6222do.getConstantState();
        if (constantState == null) {
            return this.f6222do;
        }
        return constantState.newDrawable();
    }

    /* renamed from: if */
    public void mo353if() {
        T t = this.f6222do;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof hp) {
            ((hp) t).m1152if().prepareToDraw();
        }
    }
}
