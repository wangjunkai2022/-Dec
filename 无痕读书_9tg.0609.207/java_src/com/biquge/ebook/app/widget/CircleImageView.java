package com.biquge.ebook.app.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import com.biquge.ebook.app.R$styleable;
/* loaded from: classes8.dex */
public class CircleImageView extends AppCompatImageView {

    /* renamed from: return  reason: not valid java name */
    public static final ImageView.ScaleType f7998return = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: static  reason: not valid java name */
    public static final Bitmap.Config f7999static = Bitmap.Config.ARGB_8888;

    /* renamed from: break  reason: not valid java name */
    public Bitmap f8000break;

    /* renamed from: case  reason: not valid java name */
    public final Paint f8001case;

    /* renamed from: catch  reason: not valid java name */
    public BitmapShader f8002catch;

    /* renamed from: class  reason: not valid java name */
    public int f8003class;

    /* renamed from: const  reason: not valid java name */
    public int f8004const;

    /* renamed from: do  reason: not valid java name */
    public final RectF f8005do;

    /* renamed from: else  reason: not valid java name */
    public int f8006else;

    /* renamed from: final  reason: not valid java name */
    public float f8007final;

    /* renamed from: for  reason: not valid java name */
    public final Matrix f8008for;

    /* renamed from: goto  reason: not valid java name */
    public int f8009goto;

    /* renamed from: if  reason: not valid java name */
    public final RectF f8010if;

    /* renamed from: import  reason: not valid java name */
    public boolean f8011import;

    /* renamed from: native  reason: not valid java name */
    public boolean f8012native;

    /* renamed from: new  reason: not valid java name */
    public final Paint f8013new;

    /* renamed from: public  reason: not valid java name */
    public boolean f8014public;

    /* renamed from: super  reason: not valid java name */
    public float f8015super;

    /* renamed from: this  reason: not valid java name */
    public int f8016this;

    /* renamed from: throw  reason: not valid java name */
    public ColorFilter f8017throw;

    /* renamed from: try  reason: not valid java name */
    public final Paint f8018try;

    /* renamed from: while  reason: not valid java name */
    public boolean f8019while;

    public CircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8005do = new RectF();
        this.f8010if = new RectF();
        this.f8008for = new Matrix();
        this.f8013new = new Paint();
        this.f8018try = new Paint();
        this.f8001case = new Paint();
        this.f8006else = ViewCompat.MEASURED_STATE_MASK;
        this.f8009goto = 0;
        this.f8016this = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CircleImageView, 0, 0);
        this.f8009goto = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f8006else = obtainStyledAttributes.getColor(0, ViewCompat.MEASURED_STATE_MASK);
        this.f8012native = obtainStyledAttributes.getBoolean(1, false);
        this.f8016this = obtainStyledAttributes.getColor(3, 0);
        obtainStyledAttributes.recycle();
        super.setScaleType(f7998return);
        this.f8019while = true;
        if (this.f8011import) {
            m3469for();
            this.f8011import = false;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3469for() {
        int width;
        int height;
        float width2;
        float height2;
        int i;
        if (!this.f8019while) {
            this.f8011import = true;
        } else if (getWidth() == 0 && getHeight() == 0) {
        } else {
            if (this.f8000break == null) {
                invalidate();
                return;
            }
            Bitmap bitmap = this.f8000break;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f8002catch = new BitmapShader(bitmap, tileMode, tileMode);
            this.f8013new.setAntiAlias(true);
            this.f8013new.setShader(this.f8002catch);
            this.f8018try.setStyle(Paint.Style.STROKE);
            this.f8018try.setAntiAlias(true);
            this.f8018try.setColor(this.f8006else);
            this.f8018try.setStrokeWidth(this.f8009goto);
            this.f8001case.setStyle(Paint.Style.FILL);
            this.f8001case.setAntiAlias(true);
            this.f8001case.setColor(this.f8016this);
            this.f8004const = this.f8000break.getHeight();
            this.f8003class = this.f8000break.getWidth();
            RectF rectF = this.f8010if;
            int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
            float paddingLeft = ((width - min) / 2.0f) + getPaddingLeft();
            float paddingTop = ((height - min) / 2.0f) + getPaddingTop();
            float f = min;
            rectF.set(new RectF(paddingLeft, paddingTop, paddingLeft + f, f + paddingTop));
            this.f8015super = Math.min((this.f8010if.height() - this.f8009goto) / 2.0f, (this.f8010if.width() - this.f8009goto) / 2.0f);
            this.f8005do.set(this.f8010if);
            if (!this.f8012native && (i = this.f8009goto) > 0) {
                float f2 = i - 1.0f;
                this.f8005do.inset(f2, f2);
            }
            this.f8007final = Math.min(this.f8005do.height() / 2.0f, this.f8005do.width() / 2.0f);
            Paint paint = this.f8013new;
            if (paint != null) {
                paint.setColorFilter(this.f8017throw);
            }
            this.f8008for.set(null);
            float f3 = 0.0f;
            if (this.f8005do.height() * this.f8003class > this.f8005do.width() * this.f8004const) {
                width2 = this.f8005do.height() / this.f8004const;
                f3 = (this.f8005do.width() - (this.f8003class * width2)) * 0.5f;
                height2 = 0.0f;
            } else {
                width2 = this.f8005do.width() / this.f8003class;
                height2 = (this.f8005do.height() - (this.f8004const * width2)) * 0.5f;
            }
            this.f8008for.setScale(width2, width2);
            Matrix matrix = this.f8008for;
            RectF rectF2 = this.f8005do;
            matrix.postTranslate(((int) (f3 + 0.5f)) + rectF2.left, ((int) (height2 + 0.5f)) + rectF2.top);
            this.f8002catch.setLocalMatrix(this.f8008for);
            invalidate();
        }
    }

    public int getBorderColor() {
        return this.f8006else;
    }

    public int getBorderWidth() {
        return this.f8009goto;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.f8017throw;
    }

    @Deprecated
    public int getFillColor() {
        return this.f8016this;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f7998return;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3470if() {
        Bitmap createBitmap;
        Bitmap bitmap = null;
        if (this.f8014public) {
            this.f8000break = null;
        } else {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    try {
                        if (drawable instanceof ColorDrawable) {
                            createBitmap = Bitmap.createBitmap(2, 2, f7999static);
                        } else {
                            int intrinsicWidth = drawable.getIntrinsicWidth();
                            int intrinsicHeight = drawable.getIntrinsicHeight();
                            if (intrinsicWidth <= 0) {
                                intrinsicWidth = 100;
                            }
                            if (intrinsicHeight <= 0) {
                                intrinsicHeight = 100;
                            }
                            createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, f7999static);
                        }
                        Canvas canvas = new Canvas(createBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        bitmap = createBitmap;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            this.f8000break = bitmap;
        }
        m3469for();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f8014public) {
            super.onDraw(canvas);
        } else if (this.f8000break == null) {
        } else {
            if (this.f8016this != 0) {
                canvas.drawCircle(this.f8005do.centerX(), this.f8005do.centerY(), this.f8007final, this.f8001case);
            }
            canvas.drawCircle(this.f8005do.centerX(), this.f8005do.centerY(), this.f8007final, this.f8013new);
            if (this.f8009goto > 0) {
                canvas.drawCircle(this.f8010if.centerX(), this.f8010if.centerY(), this.f8015super, this.f8018try);
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m3469for();
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(@ColorInt int i) {
        if (i == this.f8006else) {
            return;
        }
        this.f8006else = i;
        this.f8018try.setColor(i);
        invalidate();
    }

    @Deprecated
    public void setBorderColorResource(@ColorRes int i) {
        setBorderColor(getContext().getResources().getColor(i));
    }

    public void setBorderOverlay(boolean z) {
        if (z == this.f8012native) {
            return;
        }
        this.f8012native = z;
        m3469for();
    }

    public void setBorderWidth(int i) {
        if (i == this.f8009goto) {
            return;
        }
        this.f8009goto = i;
        m3469for();
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.f8017throw) {
            return;
        }
        this.f8017throw = colorFilter;
        Paint paint = this.f8013new;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
        invalidate();
    }

    public void setDisableCircularTransformation(boolean z) {
        if (this.f8014public == z) {
            return;
        }
        this.f8014public = z;
        m3470if();
    }

    @Deprecated
    public void setFillColor(@ColorInt int i) {
        if (i == this.f8016this) {
            return;
        }
        this.f8016this = i;
        this.f8001case.setColor(i);
        invalidate();
    }

    @Deprecated
    public void setFillColorResource(@ColorRes int i) {
        setFillColor(getContext().getResources().getColor(i));
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m3470if();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m3470if();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        super.setImageResource(i);
        m3470if();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m3470if();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        m3469for();
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        m3469for();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != f7998return) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }
}
