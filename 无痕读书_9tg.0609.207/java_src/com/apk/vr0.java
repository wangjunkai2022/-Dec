package com.apk;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.widget.ImageViewCompat;
import skin.support.R$styleable;
/* compiled from: SkinCompatImageHelper.java */
/* loaded from: classes7.dex */
public class vr0 extends tr0 {

    /* renamed from: do  reason: not valid java name */
    public final ImageView f5196do;

    /* renamed from: if  reason: not valid java name */
    public int f5198if = 0;

    /* renamed from: for  reason: not valid java name */
    public int f5197for = 0;

    /* renamed from: new  reason: not valid java name */
    public int f5199new = 0;

    public vr0(ImageView imageView) {
        this.f5196do = imageView;
    }

    /* renamed from: for  reason: not valid java name */
    public void m2833for(AttributeSet attributeSet, int i) {
        TypedArray typedArray = null;
        try {
            typedArray = this.f5196do.getContext().obtainStyledAttributes(attributeSet, R$styleable.SkinCompatImageView, i, 0);
            this.f5198if = typedArray.getResourceId(R$styleable.SkinCompatImageView_android_src, 0);
            this.f5197for = typedArray.getResourceId(R$styleable.SkinCompatImageView_srcCompat, 0);
            int resourceId = typedArray.getResourceId(R$styleable.SkinCompatImageView_tint, 0);
            this.f5199new = resourceId;
            if (resourceId == 0) {
                this.f5199new = typedArray.getResourceId(R$styleable.SkinCompatImageView_android_tint, 0);
            }
            typedArray.recycle();
            m2834if();
        } catch (Throwable th) {
            if (typedArray != null) {
                typedArray.recycle();
            }
            throw th;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m2834if() {
        Drawable m2073do;
        int m2617do = tr0.m2617do(this.f5197for);
        this.f5197for = m2617do;
        if (m2617do != 0) {
            Drawable m2073do2 = pq0.m2073do(this.f5196do.getContext(), this.f5197for);
            if (m2073do2 != null) {
                this.f5196do.setImageDrawable(m2073do2);
            }
        } else {
            int m2617do2 = tr0.m2617do(this.f5198if);
            this.f5198if = m2617do2;
            if (m2617do2 != 0 && (m2073do = pq0.m2073do(this.f5196do.getContext(), this.f5198if)) != null) {
                this.f5196do.setImageDrawable(m2073do);
            }
        }
        int m2617do3 = tr0.m2617do(this.f5199new);
        this.f5199new = m2617do3;
        if (m2617do3 != 0) {
            ImageViewCompat.setImageTintList(this.f5196do, lq0.m1662if(this.f5196do.getContext(), this.f5199new));
        }
    }
}
