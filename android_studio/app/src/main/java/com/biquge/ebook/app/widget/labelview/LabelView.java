package com.biquge.ebook.app.widget.labelview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.biquge.ebook.app.R$styleable;

/* loaded from: classes8.dex */
public class LabelView extends View {

    /* renamed from: break  reason: not valid java name */
    public int f8368break;

    /* renamed from: case  reason: not valid java name */
    public boolean f8369case;

    /* renamed from: catch  reason: not valid java name */
    public Paint f8370catch;

    /* renamed from: class  reason: not valid java name */
    public Paint f8371class;

    /* renamed from: const  reason: not valid java name */
    public Path f8372const;

    /* renamed from: do  reason: not valid java name */
    public String f8373do;

    /* renamed from: else  reason: not valid java name */
    public int f8374else;

    /* renamed from: for  reason: not valid java name */
    public float f8375for;

    /* renamed from: goto  reason: not valid java name */
    public float f8376goto;

    /* renamed from: if  reason: not valid java name */
    public int f8377if;

    /* renamed from: new  reason: not valid java name */
    public boolean f8378new;

    /* renamed from: this  reason: not valid java name */
    public float f8379this;

    /* renamed from: try  reason: not valid java name */
    public boolean f8380try;

    public LabelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8370catch = new Paint(1);
        this.f8371class = new Paint(1);
        this.f8372const = new Path();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LabelView);
        this.f8373do = obtainStyledAttributes.getString(5);
        this.f8377if = obtainStyledAttributes.getColor(8, Color.parseColor("#ffffff"));
        this.f8375for = obtainStyledAttributes.getDimension(9, (int) ((getResources().getDisplayMetrics().scaledDensity * 11.0f) + 0.5f));
        this.f8378new = obtainStyledAttributes.getBoolean(7, true);
        this.f8369case = obtainStyledAttributes.getBoolean(6, true);
        this.f8380try = obtainStyledAttributes.getBoolean(1, false);
        this.f8374else = obtainStyledAttributes.getColor(0, Color.parseColor("#FF4081"));
        this.f8376goto = obtainStyledAttributes.getDimension(3, m3545do(this.f8380try ? 35.0f : 50.0f));
        this.f8379this = obtainStyledAttributes.getDimension(4, m3545do(3.5f));
        this.f8368break = obtainStyledAttributes.getInt(2, 51);
        obtainStyledAttributes.recycle();
        this.f8370catch.setTextAlign(Paint.Align.CENTER);
    }

    /* renamed from: do  reason: not valid java name */
    public int m3545do(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3546for(int i, float f, Canvas canvas, boolean z) {
        canvas.save();
        float f2 = i / 2.0f;
        canvas.rotate(f, f2, f2);
        float ascent = ((i / 2) - ((this.f8370catch.ascent() + this.f8370catch.descent()) / 2.0f)) + (z ? (-i) / 4 : i / 4);
        canvas.drawText(this.f8369case ? this.f8373do.toUpperCase() : this.f8373do, (((i - getPaddingLeft()) - getPaddingRight()) / 2) + getPaddingLeft(), ascent, this.f8370catch);
        canvas.restore();
    }

    public int getBgColor() {
        return this.f8374else;
    }

    public int getGravity() {
        return this.f8368break;
    }

    public float getMinSize() {
        return this.f8376goto;
    }

    public float getPadding() {
        return this.f8379this;
    }

    public String getText() {
        return this.f8373do;
    }

    public int getTextColor() {
        return this.f8377if;
    }

    public float getTextSize() {
        return this.f8375for;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3547if(int i, float f, Canvas canvas, float f2, boolean z) {
        canvas.save();
        float f3 = i / 2.0f;
        canvas.rotate(f, f3, f3);
        float f4 = (this.f8379this * 2.0f) + f2;
        if (z) {
            f4 = -f4;
        }
        float ascent = ((i / 2) - ((this.f8370catch.ascent() + this.f8370catch.descent()) / 2.0f)) + (f4 / 2.0f);
        canvas.drawText(this.f8369case ? this.f8373do.toUpperCase() : this.f8373do, (((i - getPaddingLeft()) - getPaddingRight()) / 2) + getPaddingLeft(), ascent, this.f8370catch);
        canvas.restore();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int height = getHeight();
        this.f8370catch.setColor(this.f8377if);
        this.f8370catch.setTextSize(this.f8375for);
        this.f8370catch.setFakeBoldText(this.f8378new);
        this.f8371class.setColor(this.f8374else);
        float descent = this.f8370catch.descent() - this.f8370catch.ascent();
        if (this.f8380try) {
            int i = this.f8368break;
            if (i == 51) {
                this.f8372const.reset();
                this.f8372const.moveTo(0.0f, 0.0f);
                float f = height;
                this.f8372const.lineTo(0.0f, f);
                this.f8372const.lineTo(f, 0.0f);
                this.f8372const.close();
                canvas.drawPath(this.f8372const, this.f8371class);
                m3546for(height, -45.0f, canvas, true);
                return;
            } else if (i == 53) {
                this.f8372const.reset();
                float f2 = height;
                this.f8372const.moveTo(f2, 0.0f);
                this.f8372const.lineTo(0.0f, 0.0f);
                this.f8372const.lineTo(f2, f2);
                this.f8372const.close();
                canvas.drawPath(this.f8372const, this.f8371class);
                m3546for(height, 45.0f, canvas, true);
                return;
            } else if (i == 83) {
                this.f8372const.reset();
                float f3 = height;
                this.f8372const.moveTo(0.0f, f3);
                this.f8372const.lineTo(0.0f, 0.0f);
                this.f8372const.lineTo(f3, f3);
                this.f8372const.close();
                canvas.drawPath(this.f8372const, this.f8371class);
                m3546for(height, 45.0f, canvas, false);
                return;
            } else if (i == 85) {
                this.f8372const.reset();
                float f4 = height;
                this.f8372const.moveTo(f4, f4);
                this.f8372const.lineTo(0.0f, f4);
                this.f8372const.lineTo(f4, 0.0f);
                this.f8372const.close();
                canvas.drawPath(this.f8372const, this.f8371class);
                m3546for(height, -45.0f, canvas, false);
                return;
            } else {
                return;
            }
        }
        double sqrt = Math.sqrt(2.0d) * ((this.f8379this * 2.0f) + descent);
        int i2 = this.f8368break;
        if (i2 == 51) {
            this.f8372const.reset();
            float f5 = (float) (height - sqrt);
            this.f8372const.moveTo(0.0f, f5);
            float f6 = height;
            this.f8372const.lineTo(0.0f, f6);
            this.f8372const.lineTo(f6, 0.0f);
            this.f8372const.lineTo(f5, 0.0f);
            this.f8372const.close();
            canvas.drawPath(this.f8372const, this.f8371class);
            m3547if(height, -45.0f, canvas, descent, true);
        } else if (i2 == 53) {
            this.f8372const.reset();
            this.f8372const.moveTo(0.0f, 0.0f);
            this.f8372const.lineTo((float) sqrt, 0.0f);
            float f7 = height;
            this.f8372const.lineTo(f7, (float) (height - sqrt));
            this.f8372const.lineTo(f7, f7);
            this.f8372const.close();
            canvas.drawPath(this.f8372const, this.f8371class);
            m3547if(height, 45.0f, canvas, descent, true);
        } else if (i2 == 83) {
            this.f8372const.reset();
            this.f8372const.moveTo(0.0f, 0.0f);
            this.f8372const.lineTo(0.0f, (float) sqrt);
            float f8 = height;
            this.f8372const.lineTo((float) (height - sqrt), f8);
            this.f8372const.lineTo(f8, f8);
            this.f8372const.close();
            canvas.drawPath(this.f8372const, this.f8371class);
            m3547if(height, 45.0f, canvas, descent, false);
        } else if (i2 == 85) {
            this.f8372const.reset();
            float f9 = height;
            this.f8372const.moveTo(0.0f, f9);
            float f10 = (float) sqrt;
            this.f8372const.lineTo(f10, f9);
            this.f8372const.lineTo(f9, f10);
            this.f8372const.lineTo(f9, 0.0f);
            this.f8372const.close();
            canvas.drawPath(this.f8372const, this.f8371class);
            m3547if(height, -45.0f, canvas, descent, false);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            int paddingRight = getPaddingRight() + getPaddingLeft();
            this.f8370catch.setColor(this.f8377if);
            this.f8370catch.setTextSize(this.f8375for);
            Paint paint = this.f8370catch;
            int sqrt = (int) (Math.sqrt(2.0d) * (paddingRight + ((int) paint.measureText(this.f8373do + ""))));
            if (mode == Integer.MIN_VALUE) {
                sqrt = Math.min(sqrt, size);
            }
            size = Math.max((int) this.f8376goto, sqrt);
        }
        setMeasuredDimension(size, size);
    }

    public void setBgColor(int i) {
        this.f8374else = i;
        invalidate();
    }

    public void setFillTriangle(boolean z) {
        this.f8380try = z;
        invalidate();
    }

    public void setGravity(int i) {
        this.f8368break = i;
    }

    public void setMinSize(float f) {
        this.f8376goto = m3545do(f);
        invalidate();
    }

    public void setPadding(float f) {
        this.f8379this = m3545do(f);
        invalidate();
    }

    public void setText(String str) {
        this.f8373do = str;
        invalidate();
    }

    public void setTextAllCaps(boolean z) {
        this.f8369case = z;
        invalidate();
    }

    public void setTextBold(boolean z) {
        this.f8378new = z;
        invalidate();
    }

    public void setTextColor(int i) {
        this.f8377if = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.f8375for = (int) ((f * getResources().getDisplayMetrics().scaledDensity) + 0.5f);
        invalidate();
    }
}
