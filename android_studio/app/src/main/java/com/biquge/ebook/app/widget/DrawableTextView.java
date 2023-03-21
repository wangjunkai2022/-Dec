package com.biquge.ebook.app.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.apk.ms0;
import com.biquge.ebook.app.R$styleable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes8.dex */
public class DrawableTextView extends ms0 {

    /* renamed from: for  reason: not valid java name */
    public Drawable[] f8045for;

    /* renamed from: new  reason: not valid java name */
    public int[] f8046new;

    /* renamed from: try  reason: not valid java name */
    public int[] f8047try;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes8.dex */
    public @interface DrawGravity {
    }

    public DrawableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842884);
        this.f8045for = new Drawable[4];
        this.f8046new = new int[4];
        this.f8047try = new int[4];
        setGravity(17);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DrawableTextView);
        this.f8045for[0] = obtainStyledAttributes.getDrawable(3);
        this.f8045for[1] = obtainStyledAttributes.getDrawable(9);
        this.f8045for[2] = obtainStyledAttributes.getDrawable(6);
        this.f8045for[3] = obtainStyledAttributes.getDrawable(0);
        this.f8046new[0] = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.f8046new[1] = obtainStyledAttributes.getDimensionPixelSize(11, 0);
        this.f8046new[2] = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        this.f8046new[3] = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f8047try[0] = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.f8047try[1] = obtainStyledAttributes.getDimensionPixelSize(10, 0);
        this.f8047try[2] = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.f8047try[3] = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        int compoundDrawablePadding = getCompoundDrawablePadding();
        Drawable[] drawableArr = this.f8045for;
        if (drawableArr[0] != null && drawableArr[2] != null) {
            int[] iArr6 = this.f8046new;
            i = (iArr6[0] - iArr6[2]) / 2;
        } else {
            Drawable[] drawableArr2 = this.f8045for;
            if (drawableArr2[0] != null) {
                i = (this.f8046new[0] + compoundDrawablePadding) / 2;
            } else {
                i = drawableArr2[2] != null ? (-(this.f8046new[2] + compoundDrawablePadding)) / 2 : 0;
            }
        }
        Drawable[] drawableArr3 = this.f8045for;
        if (drawableArr3[1] != null && drawableArr3[3] != null) {
            int[] iArr7 = this.f8047try;
            i2 = (iArr7[1] - iArr7[3]) / 2;
        } else {
            Drawable[] drawableArr4 = this.f8045for;
            if (drawableArr4[1] != null) {
                i2 = (this.f8047try[1] + compoundDrawablePadding) / 2;
            } else {
                i2 = drawableArr4[3] != null ? (-(this.f8047try[3] - compoundDrawablePadding)) / 2 : 0;
            }
        }
        canvas.translate(i, i2);
        super.onDraw(canvas);
        float paddingLeft = ((getPaddingLeft() + getWidth()) - getPaddingRight()) / 2;
        float paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
        float measureText = getPaint().measureText((getText().toString().isEmpty() ? getHint() : getText()).toString()) / 2.0f;
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        float f = (fontMetrics.descent - fontMetrics.ascent) / 2.0f;
        Drawable[] drawableArr5 = this.f8045for;
        if (drawableArr5[0] != null) {
            int i3 = (int) (((paddingLeft - compoundDrawablePadding) - measureText) - iArr4[0]);
            int i4 = (int) (paddingTop - (iArr5[0] / 2));
            drawableArr5[0].setBounds(i3, i4, this.f8046new[0] + i3, this.f8047try[0] + i4);
            canvas.save();
            this.f8045for[0].draw(canvas);
            canvas.restore();
        }
        Drawable[] drawableArr6 = this.f8045for;
        if (drawableArr6[2] != null) {
            int i5 = (int) (measureText + paddingLeft + compoundDrawablePadding);
            int i6 = (int) (paddingTop - (iArr3[2] / 2));
            drawableArr6[2].setBounds(i5, i6, this.f8046new[2] + i5, this.f8047try[2] + i6);
            canvas.save();
            this.f8045for[2].draw(canvas);
            canvas.restore();
        }
        Drawable[] drawableArr7 = this.f8045for;
        if (drawableArr7[1] != null) {
            int i7 = (int) (paddingLeft - (iArr2[1] / 2));
            int i8 = (int) ((paddingTop - f) - compoundDrawablePadding);
            drawableArr7[1].setBounds(i7, i8 - this.f8047try[1], this.f8046new[1] + i7, i8);
            canvas.save();
            this.f8045for[1].draw(canvas);
            canvas.restore();
        }
        Drawable[] drawableArr8 = this.f8045for;
        if (drawableArr8[3] != null) {
            int i9 = (int) (paddingLeft - (iArr[3] / 2));
            int i10 = (int) (paddingTop + f + compoundDrawablePadding);
            drawableArr8[3].setBounds(i9, i10, this.f8046new[3] + i9, this.f8047try[3] + i10);
            canvas.save();
            this.f8045for[3].draw(canvas);
            canvas.restore();
        }
    }
}
