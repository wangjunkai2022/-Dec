package com.apk;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import java.lang.reflect.Method;
import skin.support.appcompat.R$styleable;
/* compiled from: SkinCompatProgressBarHelper.java */
/* loaded from: classes7.dex */
public class as0 extends tr0 {

    /* renamed from: do  reason: not valid java name */
    public final ProgressBar f162do;

    /* renamed from: if  reason: not valid java name */
    public Bitmap f164if;

    /* renamed from: for  reason: not valid java name */
    public int f163for = 0;

    /* renamed from: new  reason: not valid java name */
    public int f165new = 0;

    /* renamed from: try  reason: not valid java name */
    public int f166try = 0;

    public as0(ProgressBar progressBar) {
        this.f162do = progressBar;
    }

    /* renamed from: for  reason: not valid java name */
    public void mo107for(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f162do.getContext().obtainStyledAttributes(attributeSet, R$styleable.SkinCompatProgressBar, i, 0);
        this.f163for = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatProgressBar_android_indeterminateDrawable, 0);
        this.f165new = obtainStyledAttributes.getResourceId(R$styleable.SkinCompatProgressBar_android_progressDrawable, 0);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT > 21) {
            TypedArray obtainStyledAttributes2 = this.f162do.getContext().obtainStyledAttributes(attributeSet, new int[]{16843881}, i, 0);
            this.f166try = obtainStyledAttributes2.getResourceId(0, 0);
            obtainStyledAttributes2.recycle();
        }
        mo108if();
    }

    /* renamed from: if  reason: not valid java name */
    public void mo108if() {
        int m2617do = tr0.m2617do(this.f163for);
        this.f163for = m2617do;
        if (m2617do != 0) {
            Drawable m2073do = pq0.m2073do(this.f162do.getContext(), this.f163for);
            m2073do.setBounds(this.f162do.getIndeterminateDrawable().getBounds());
            ProgressBar progressBar = this.f162do;
            if (m2073do instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) m2073do;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i = 0; i < numberOfFrames; i++) {
                    Drawable m109new = m109new(animationDrawable.getFrame(i), true);
                    m109new.setLevel(10000);
                    animationDrawable2.addFrame(m109new, animationDrawable.getDuration(i));
                }
                animationDrawable2.setLevel(10000);
                m2073do = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(m2073do);
        }
        int m2617do2 = tr0.m2617do(this.f165new);
        this.f165new = m2617do2;
        if (m2617do2 != 0) {
            this.f162do.setProgressDrawable(m109new(pq0.m2073do(this.f162do.getContext(), this.f165new), false));
        }
        if (Build.VERSION.SDK_INT > 21) {
            int m2617do3 = tr0.m2617do(this.f166try);
            this.f166try = m2617do3;
            if (m2617do3 != 0) {
                ProgressBar progressBar2 = this.f162do;
                progressBar2.setIndeterminateTintList(lq0.m1662if(progressBar2.getContext(), this.f166try));
            }
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final Drawable m109new(Drawable drawable, boolean z) {
        if (jr0.m1398new(drawable)) {
            Drawable m1397if = jr0.m1397if(drawable);
            if (m1397if != null) {
                Drawable m109new = m109new(m1397if, z);
                Class<?> cls = jr0.f2425new;
                if (cls != null) {
                    if (jr0.f2419case == null) {
                        try {
                            Method declaredMethod = cls.getDeclaredMethod("setWrappedDrawable", Drawable.class);
                            jr0.f2419case = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (Exception unused) {
                        }
                    }
                    Method method = jr0.f2419case;
                    if (method != null) {
                        method.invoke(drawable, m109new);
                    }
                }
            }
            return drawable;
        }
        if (jr0.m1396for(drawable)) {
            Drawable m1395do = jr0.m1395do(drawable);
            if (m1395do != null) {
                Drawable m109new2 = m109new(m1395do, z);
                Class<?> cls2 = jr0.f2420do;
                if (cls2 != null) {
                    if (jr0.f2422for == null) {
                        try {
                            Method declaredMethod2 = cls2.getDeclaredMethod("setWrappedDrawable", Drawable.class);
                            jr0.f2422for = declaredMethod2;
                            declaredMethod2.setAccessible(true);
                        } catch (Exception unused2) {
                        }
                    }
                    Method method2 = jr0.f2422for;
                    if (method2 != null) {
                        method2.invoke(drawable, m109new2);
                    }
                }
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m109new(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f164if == null) {
                this.f164if = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
        return drawable;
    }
}
