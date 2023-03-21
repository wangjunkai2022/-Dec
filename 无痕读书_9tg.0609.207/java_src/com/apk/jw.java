package com.apk;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
/* compiled from: PhotoView.java */
/* loaded from: classes8.dex */
public class jw extends AppCompatImageView {

    /* renamed from: do  reason: not valid java name */
    public kw f2431do;

    /* renamed from: if  reason: not valid java name */
    public ImageView.ScaleType f2432if;

    public jw(Context context) {
        super(context, null, 0);
        this.f2431do = new kw(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f2432if;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f2432if = null;
        }
    }

    public kw getAttacher() {
        return this.f2431do;
    }

    public RectF getDisplayRect() {
        return this.f2431do.m1575for();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f2431do.f2678class;
    }

    public float getMaximumScale() {
        return this.f2431do.f2709try;
    }

    public float getMediumScale() {
        return this.f2431do.f2695new;
    }

    public float getMinimumScale() {
        return this.f2431do.f2687for;
    }

    public float getScale() {
        return this.f2431do.m1576goto();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f2431do.f2698protected;
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f2431do.f2676case = z;
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.f2431do.update();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        kw kwVar = this.f2431do;
        if (kwVar != null) {
            kwVar.update();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        kw kwVar = this.f2431do;
        if (kwVar != null) {
            kwVar.update();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        kw kwVar = this.f2431do;
        if (kwVar != null) {
            kwVar.update();
        }
    }

    public void setMaximumScale(float f) {
        kw kwVar = this.f2431do;
        mu.m1786this(kwVar.f2687for, kwVar.f2695new, f);
        kwVar.f2709try = f;
    }

    public void setMediumScale(float f) {
        kw kwVar = this.f2431do;
        mu.m1786this(kwVar.f2687for, f, kwVar.f2709try);
        kwVar.f2695new = f;
    }

    public void setMinimumScale(float f) {
        kw kwVar = this.f2431do;
        mu.m1786this(f, kwVar.f2695new, kwVar.f2709try);
        kwVar.f2687for = f;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f2431do.f2699public = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f2431do.f2705this.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f2431do.f2700return = onLongClickListener;
    }

    public void setOnMatrixChangeListener(cw cwVar) {
        this.f2431do.f2706throw = cwVar;
    }

    public void setOnOutsidePhotoTapListener(dw dwVar) {
        this.f2431do.f2691import = dwVar;
    }

    public void setOnPhotoTapListener(ew ewVar) {
        this.f2431do.f2711while = ewVar;
    }

    public void setOnScaleChangeListener(fw fwVar) {
        this.f2431do.f2701static = fwVar;
    }

    public void setOnSingleFlingListener(gw gwVar) {
        this.f2431do.f2704switch = gwVar;
    }

    public void setOnViewDragListener(hw hwVar) {
        this.f2431do.f2707throws = hwVar;
    }

    public void setOnViewTapListener(iw iwVar) {
        this.f2431do.f2694native = iwVar;
    }

    public void setRotationBy(float f) {
        kw kwVar = this.f2431do;
        kwVar.f2679const.postRotate(f % 360.0f);
        kwVar.m1573do();
    }

    public void setRotationTo(float f) {
        kw kwVar = this.f2431do;
        kwVar.f2679const.setRotate(f % 360.0f);
        kwVar.m1573do();
    }

    public void setScale(float f) {
        kw kwVar = this.f2431do;
        kwVar.m1571catch(f, kwVar.f2688goto.getRight() / 2, kwVar.f2688goto.getBottom() / 2, false);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        kw kwVar = this.f2431do;
        if (kwVar == null) {
            this.f2432if = scaleType;
        } else if (kwVar != null) {
            boolean z = false;
            if (scaleType != null && lw.f2946do[scaleType.ordinal()] != 1) {
                z = true;
            }
            if (!z || scaleType == kwVar.f2698protected) {
                return;
            }
            kwVar.f2698protected = scaleType;
            kwVar.update();
        } else {
            throw null;
        }
    }

    public void setZoomTransitionDuration(int i) {
        this.f2431do.f2689if = i;
    }

    public void setZoomable(boolean z) {
        kw kwVar = this.f2431do;
        kwVar.f2710volatile = z;
        kwVar.update();
    }
}
