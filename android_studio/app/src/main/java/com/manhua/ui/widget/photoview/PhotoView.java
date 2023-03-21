package com.manhua.ui.widget.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.apk.a30;
import com.apk.b30;
import com.apk.c30;
import com.apk.d30;
import com.apk.e30;
import com.apk.f30;
import com.apk.g30;
import com.apk.h30;
import com.apk.i30;
import com.apk.mu;

/* loaded from: classes8.dex */
public class PhotoView extends AppCompatImageView {

    /* renamed from: do  reason: not valid java name */
    public h30 f10258do;

    /* renamed from: if  reason: not valid java name */
    public ImageView.ScaleType f10259if;

    public PhotoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10258do = new h30(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f10259if;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f10259if = null;
        }
    }

    public h30 getAttacher() {
        return this.f10258do;
    }

    public RectF getDisplayRect() {
        return this.f10258do.m1099for();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f10258do.f1734class;
    }

    public float getMaximumScale() {
        return this.f10258do.f1760try;
    }

    public float getMediumScale() {
        return this.f10258do.f1748new;
    }

    public float getMinimumScale() {
        return this.f10258do.f1743for;
    }

    public float getScale() {
        return this.f10258do.m1100goto();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f10258do.f1730abstract;
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f10258do.f1732case = z;
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.f10258do.update();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        h30 h30Var = this.f10258do;
        if (h30Var != null) {
            h30Var.update();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        h30 h30Var = this.f10258do;
        if (h30Var != null) {
            h30Var.update();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        h30 h30Var = this.f10258do;
        if (h30Var != null) {
            h30Var.update();
        }
    }

    public void setMaximumScale(float f) {
        h30 h30Var = this.f10258do;
        mu.m1755break(h30Var.f1743for, h30Var.f1748new, f);
        h30Var.f1760try = f;
    }

    public void setMediumScale(float f) {
        h30 h30Var = this.f10258do;
        mu.m1755break(h30Var.f1743for, f, h30Var.f1760try);
        h30Var.f1748new = f;
    }

    public void setMinimumScale(float f) {
        h30 h30Var = this.f10258do;
        mu.m1755break(f, h30Var.f1748new, h30Var.f1760try);
        h30Var.f1743for = f;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f10258do.f1751public = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f10258do.f1757this.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f10258do.f1752return = onLongClickListener;
    }

    public void setOnMatrixChangeListener(a30 a30Var) {
        this.f10258do.f1758throw = a30Var;
    }

    public void setOnOutsidePhotoTapListener(b30 b30Var) {
        this.f10258do.f1746import = b30Var;
    }

    public void setOnPhotoTapListener(c30 c30Var) {
        this.f10258do.f1761while = c30Var;
    }

    public void setOnScaleChangeListener(d30 d30Var) {
        this.f10258do.f1753static = d30Var;
    }

    public void setOnSingleFlingListener(e30 e30Var) {
        this.f10258do.f1756switch = e30Var;
    }

    public void setOnViewDragListener(f30 f30Var) {
        this.f10258do.f1759throws = f30Var;
    }

    public void setOnViewTapListener(g30 g30Var) {
        this.f10258do.f1747native = g30Var;
    }

    public void setRotationBy(float f) {
        h30 h30Var = this.f10258do;
        h30Var.f1735const.postRotate(f % 360.0f);
        h30Var.m1097do();
    }

    public void setRotationTo(float f) {
        h30 h30Var = this.f10258do;
        h30Var.f1735const.setRotate(f % 360.0f);
        h30Var.m1097do();
    }

    public void setScale(float f) {
        h30 h30Var = this.f10258do;
        h30Var.m1094break(f, h30Var.f1744goto.getRight() / 2, h30Var.f1744goto.getBottom() / 2, false);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        h30 h30Var = this.f10258do;
        if (h30Var == null) {
            this.f10259if = scaleType;
        } else if (h30Var != null) {
            boolean z = true;
            if (scaleType == null) {
                z = false;
            } else if (i30.f2039do[scaleType.ordinal()] == 1) {
                throw new IllegalStateException("Matrix scale type is not supported");
            }
            if (!z || scaleType == h30Var.f1730abstract) {
                return;
            }
            h30Var.f1730abstract = scaleType;
            h30Var.update();
        } else {
            throw null;
        }
    }

    public void setZoomTransitionDuration(int i) {
        this.f10258do.f1745if = i;
    }

    public void setZoomable(boolean z) {
        h30 h30Var = this.f10258do;
        h30Var.f1750private = z;
        h30Var.update();
    }
}
