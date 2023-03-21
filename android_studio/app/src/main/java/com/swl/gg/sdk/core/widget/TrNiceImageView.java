package com.swl.gg.sdk.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.swl.gg.sdk.R$styleable;

/* loaded from: classes7.dex */
public class TrNiceImageView extends AppCompatImageView {

    /* renamed from: break  reason: not valid java name */
    public int f10308break;

    /* renamed from: case  reason: not valid java name */
    public int f10309case;

    /* renamed from: catch  reason: not valid java name */
    public int f10310catch;

    /* renamed from: class  reason: not valid java name */
    public int f10311class;

    /* renamed from: const  reason: not valid java name */
    public int f10312const;

    /* renamed from: do  reason: not valid java name */
    public Context f10313do;

    /* renamed from: else  reason: not valid java name */
    public int f10314else;

    /* renamed from: final  reason: not valid java name */
    public Xfermode f10315final;

    /* renamed from: for  reason: not valid java name */
    public boolean f10316for;

    /* renamed from: goto  reason: not valid java name */
    public int f10317goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f10318if;

    /* renamed from: import  reason: not valid java name */
    public float[] f10319import;

    /* renamed from: native  reason: not valid java name */
    public float[] f10320native;

    /* renamed from: new  reason: not valid java name */
    public int f10321new;

    /* renamed from: public  reason: not valid java name */
    public RectF f10322public;

    /* renamed from: return  reason: not valid java name */
    public RectF f10323return;

    /* renamed from: static  reason: not valid java name */
    public Paint f10324static;

    /* renamed from: super  reason: not valid java name */
    public int f10325super;

    /* renamed from: switch  reason: not valid java name */
    public Path f10326switch;

    /* renamed from: this  reason: not valid java name */
    public int f10327this;

    /* renamed from: throw  reason: not valid java name */
    public int f10328throw;

    /* renamed from: throws  reason: not valid java name */
    public Path f10329throws;

    /* renamed from: try  reason: not valid java name */
    public int f10330try;

    /* renamed from: while  reason: not valid java name */
    public float f10331while;

    public TrNiceImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10330try = 0;
        this.f10314else = 0;
        this.f10313do = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TrNiceImageView, 0, 0);
        for (int i = 0; i < obtainStyledAttributes.getIndexCount(); i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == R$styleable.TrNiceImageView_is_cover_src) {
                this.f10316for = obtainStyledAttributes.getBoolean(index, this.f10316for);
            } else if (index == R$styleable.TrNiceImageView_is_circle) {
                this.f10318if = obtainStyledAttributes.getBoolean(index, this.f10318if);
            } else if (index == R$styleable.TrNiceImageView_border_width) {
                this.f10321new = obtainStyledAttributes.getDimensionPixelSize(index, this.f10321new);
            } else if (index == R$styleable.TrNiceImageView_border_color) {
                this.f10330try = obtainStyledAttributes.getColor(index, this.f10330try);
            } else if (index == R$styleable.TrNiceImageView_inner_border_width) {
                this.f10309case = obtainStyledAttributes.getDimensionPixelSize(index, this.f10309case);
            } else if (index == R$styleable.TrNiceImageView_inner_border_color) {
                this.f10314else = obtainStyledAttributes.getColor(index, this.f10314else);
            } else if (index == R$styleable.TrNiceImageView_corner_radius) {
                this.f10317goto = obtainStyledAttributes.getDimensionPixelSize(index, this.f10317goto);
            } else if (index == R$styleable.TrNiceImageView_corner_top_left_radius) {
                this.f10327this = obtainStyledAttributes.getDimensionPixelSize(index, this.f10327this);
            } else if (index == R$styleable.TrNiceImageView_corner_top_right_radius) {
                this.f10308break = obtainStyledAttributes.getDimensionPixelSize(index, this.f10308break);
            } else if (index == R$styleable.TrNiceImageView_corner_bottom_left_radius) {
                this.f10310catch = obtainStyledAttributes.getDimensionPixelSize(index, this.f10310catch);
            } else if (index == R$styleable.TrNiceImageView_corner_bottom_right_radius) {
                this.f10311class = obtainStyledAttributes.getDimensionPixelSize(index, this.f10311class);
            } else if (index == R$styleable.TrNiceImageView_mask_color) {
                this.f10312const = obtainStyledAttributes.getColor(index, this.f10312const);
            }
        }
        obtainStyledAttributes.recycle();
        this.f10319import = new float[8];
        this.f10320native = new float[8];
        this.f10323return = new RectF();
        this.f10322public = new RectF();
        this.f10324static = new Paint();
        this.f10326switch = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.f10315final = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.f10315final = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.f10329throws = new Path();
        }
        m3690for();
        if (this.f10318if) {
            return;
        }
        this.f10309case = 0;
    }

    /* renamed from: if  reason: not valid java name */
    public static int m3687if(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: case  reason: not valid java name */
    public final void m3688case(boolean z) {
        if (z) {
            this.f10317goto = 0;
        }
        m3690for();
        m3689else();
        invalidate();
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3689else() {
        if (this.f10318if) {
            return;
        }
        RectF rectF = this.f10323return;
        float f = this.f10321new / 2.0f;
        rectF.set(f, f, this.f10325super - f, this.f10328throw - f);
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3690for() {
        if (this.f10318if) {
            return;
        }
        int i = 0;
        if (this.f10317goto <= 0) {
            float[] fArr = this.f10319import;
            float f = this.f10327this;
            fArr[1] = f;
            fArr[0] = f;
            float f2 = this.f10308break;
            fArr[3] = f2;
            fArr[2] = f2;
            float f3 = this.f10311class;
            fArr[5] = f3;
            fArr[4] = f3;
            float f4 = this.f10310catch;
            fArr[7] = f4;
            fArr[6] = f4;
            float[] fArr2 = this.f10320native;
            float f5 = this.f10321new / 2.0f;
            float f6 = f - f5;
            fArr2[1] = f6;
            fArr2[0] = f6;
            float f7 = f2 - f5;
            fArr2[3] = f7;
            fArr2[2] = f7;
            float f8 = f3 - f5;
            fArr2[5] = f8;
            fArr2[4] = f8;
            float f9 = f4 - f5;
            fArr2[7] = f9;
            fArr2[6] = f9;
            return;
        }
        while (true) {
            float[] fArr3 = this.f10319import;
            if (i >= fArr3.length) {
                return;
            }
            float f10 = this.f10317goto;
            fArr3[i] = f10;
            this.f10320native[i] = f10 - (this.f10321new / 2.0f);
            i++;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3691new(int i, int i2) {
        this.f10326switch.reset();
        this.f10324static.setStrokeWidth(i);
        this.f10324static.setColor(i2);
        this.f10324static.setStyle(Paint.Style.STROKE);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        canvas.saveLayer(this.f10322public, null, 31);
        if (!this.f10316for) {
            int i2 = this.f10325super;
            int i3 = this.f10321new * 2;
            int i4 = this.f10309case * 2;
            float f = i2;
            float f2 = this.f10328throw;
            canvas.scale((((i2 - i3) - i4) * 1.0f) / f, (((i - i3) - i4) * 1.0f) / f2, f / 2.0f, f2 / 2.0f);
        }
        super.onDraw(canvas);
        this.f10324static.reset();
        this.f10326switch.reset();
        if (this.f10318if) {
            this.f10326switch.addCircle(this.f10325super / 2.0f, this.f10328throw / 2.0f, this.f10331while, Path.Direction.CCW);
        } else {
            this.f10326switch.addRoundRect(this.f10322public, this.f10320native, Path.Direction.CCW);
        }
        this.f10324static.setAntiAlias(true);
        this.f10324static.setStyle(Paint.Style.FILL);
        this.f10324static.setXfermode(this.f10315final);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.f10326switch, this.f10324static);
        } else {
            this.f10329throws.addRect(this.f10322public, Path.Direction.CCW);
            this.f10329throws.op(this.f10326switch, Path.Op.DIFFERENCE);
            canvas.drawPath(this.f10329throws, this.f10324static);
        }
        this.f10324static.setXfermode(null);
        int i5 = this.f10312const;
        if (i5 != 0) {
            this.f10324static.setColor(i5);
            canvas.drawPath(this.f10326switch, this.f10324static);
        }
        canvas.restore();
        if (this.f10318if) {
            int i6 = this.f10321new;
            if (i6 > 0) {
                m3692try(canvas, i6, this.f10330try, this.f10331while - (i6 / 2.0f));
            }
            int i7 = this.f10309case;
            if (i7 > 0) {
                m3692try(canvas, i7, this.f10314else, (this.f10331while - this.f10321new) - (i7 / 2.0f));
                return;
            }
            return;
        }
        int i8 = this.f10321new;
        if (i8 > 0) {
            int i9 = this.f10330try;
            RectF rectF = this.f10323return;
            float[] fArr = this.f10319import;
            m3691new(i8, i9);
            this.f10326switch.addRoundRect(rectF, fArr, Path.Direction.CCW);
            canvas.drawPath(this.f10326switch, this.f10324static);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f10325super = i;
        this.f10328throw = i2;
        m3689else();
        if (this.f10318if) {
            float min = Math.min(this.f10325super, this.f10328throw) / 2.0f;
            this.f10331while = min;
            RectF rectF = this.f10322public;
            float f = this.f10325super / 2.0f;
            float f2 = this.f10328throw / 2.0f;
            rectF.set(f - min, f2 - min, f + min, f2 + min);
            return;
        }
        this.f10322public.set(0.0f, 0.0f, this.f10325super, this.f10328throw);
        if (this.f10316for) {
            this.f10322public = this.f10323return;
        }
    }

    public void setBorderColor(@ColorInt int i) {
        this.f10330try = i;
        invalidate();
    }

    public void setBorderWidth(int i) {
        this.f10321new = m3687if(this.f10313do, i);
        m3688case(false);
    }

    public void setCornerBottomLeftRadius(int i) {
        this.f10310catch = m3687if(this.f10313do, i);
        m3688case(true);
    }

    public void setCornerBottomRightRadius(int i) {
        this.f10311class = m3687if(this.f10313do, i);
        m3688case(true);
    }

    public void setCornerRadius(int i) {
        this.f10317goto = m3687if(this.f10313do, i);
        m3688case(false);
    }

    public void setCornerTopLeftRadius(int i) {
        this.f10327this = m3687if(this.f10313do, i);
        m3688case(true);
    }

    public void setCornerTopRightRadius(int i) {
        this.f10308break = m3687if(this.f10313do, i);
        m3688case(true);
    }

    public void setInnerBorderColor(@ColorInt int i) {
        this.f10314else = i;
        invalidate();
    }

    public void setInnerBorderWidth(int i) {
        this.f10309case = m3687if(this.f10313do, i);
        if (!this.f10318if) {
            this.f10309case = 0;
        }
        invalidate();
    }

    public void setMaskColor(@ColorInt int i) {
        this.f10312const = i;
        invalidate();
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3692try(Canvas canvas, int i, int i2, float f) {
        m3691new(i, i2);
        this.f10326switch.addCircle(this.f10325super / 2.0f, this.f10328throw / 2.0f, f, Path.Direction.CCW);
        canvas.drawPath(this.f10326switch, this.f10324static);
    }
}
