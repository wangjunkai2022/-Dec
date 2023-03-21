package com.biquge.ebook.app.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.apk.ze;
import com.biquge.ebook.app.R$styleable;
import com.biquge.ebook.app.ui.view.StarPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class StarBarView extends View {

    /* renamed from: break  reason: not valid java name */
    public boolean f8147break;

    /* renamed from: case  reason: not valid java name */
    public Bitmap f8148case;

    /* renamed from: do  reason: not valid java name */
    public boolean f8149do;

    /* renamed from: else  reason: not valid java name */
    public Drawable f8150else;

    /* renamed from: for  reason: not valid java name */
    public int f8151for;

    /* renamed from: goto  reason: not valid java name */
    public Cdo f8152goto;

    /* renamed from: if  reason: not valid java name */
    public int f8153if;

    /* renamed from: new  reason: not valid java name */
    public int f8154new;

    /* renamed from: this  reason: not valid java name */
    public Paint f8155this;

    /* renamed from: try  reason: not valid java name */
    public float f8156try;

    /* renamed from: com.biquge.ebook.app.widget.StarBarView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    public StarBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Bitmap bitmap;
        this.f8149do = true;
        this.f8153if = 0;
        this.f8151for = 5;
        this.f8156try = 0.0f;
        this.f8147break = false;
        setClickable(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RatingBar);
        this.f8153if = (int) obtainStyledAttributes.getDimension(1, 0.0f);
        this.f8154new = (int) obtainStyledAttributes.getDimension(4, 20.0f);
        this.f8151for = obtainStyledAttributes.getInteger(0, 5);
        this.f8150else = obtainStyledAttributes.getDrawable(2);
        Drawable drawable = obtainStyledAttributes.getDrawable(3);
        if (drawable == null) {
            bitmap = null;
        } else {
            int i = this.f8154new;
            Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            int i2 = this.f8154new;
            drawable.setBounds(0, 0, i2, i2);
            drawable.draw(canvas);
            bitmap = createBitmap;
        }
        this.f8148case = bitmap;
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f8155this = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.f8155this;
        Bitmap bitmap2 = this.f8148case;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmap2, tileMode, tileMode));
    }

    public float getStarMark() {
        return this.f8156try;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f8148case == null || this.f8150else == null) {
            return;
        }
        for (int i = 0; i < this.f8151for; i++) {
            Drawable drawable = this.f8150else;
            int i2 = this.f8153if;
            int i3 = this.f8154new;
            drawable.setBounds((i2 + i3) * i, 0, ((i2 + i3) * i) + i3, i3);
            this.f8150else.draw(canvas);
        }
        float f = this.f8156try;
        if (f > 1.0f) {
            int i4 = this.f8154new;
            canvas.drawRect(0.0f, 0.0f, i4, i4, this.f8155this);
            float f2 = this.f8156try;
            if (f2 - ((int) f2) == 0.0f) {
                for (int i5 = 1; i5 < this.f8156try; i5++) {
                    canvas.translate(this.f8153if + this.f8154new, 0.0f);
                    int i6 = this.f8154new;
                    canvas.drawRect(0.0f, 0.0f, i6, i6, this.f8155this);
                }
                return;
            }
            for (int i7 = 1; i7 < this.f8156try - 1.0f; i7++) {
                canvas.translate(this.f8153if + this.f8154new, 0.0f);
                int i8 = this.f8154new;
                canvas.drawRect(0.0f, 0.0f, i8, i8, this.f8155this);
            }
            canvas.translate(this.f8153if + this.f8154new, 0.0f);
            float f3 = this.f8156try;
            canvas.drawRect(0.0f, 0.0f, ((Math.round((f3 - ((int) f3)) * 10.0f) * 1.0f) / 10.0f) * this.f8154new, this.f8154new, this.f8155this);
            return;
        }
        int i9 = this.f8154new;
        canvas.drawRect(0.0f, 0.0f, i9 * f, i9, this.f8155this);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.f8154new;
        int i4 = this.f8151for;
        setMeasuredDimension(((i4 - 1) * this.f8153if) + (i3 * i4), i3);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f8149do) {
            int x = (int) motionEvent.getX();
            if (x < 0) {
                x = 0;
            }
            if (x > getMeasuredWidth()) {
                x = getMeasuredWidth();
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                setStarMark((((int) Math.ceil(((x * 1.0f) / ((getMeasuredWidth() * 1.0f) / this.f8151for)) * 2.0f)) * 1.0f) / 2.0f);
            } else if (action == 2) {
                setStarMark((((int) Math.ceil(((x * 1.0f) / ((getMeasuredWidth() * 1.0f) / this.f8151for)) * 2.0f)) * 1.0f) / 2.0f);
            }
            invalidate();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setIntegerMark(boolean z) {
        this.f8147break = z;
    }

    public void setOnStarChangeListener(Cdo cdo) {
        this.f8152goto = cdo;
    }

    public void setOpenStar(boolean z) {
        this.f8149do = z;
    }

    public void setStarMark(float f) {
        if (this.f8147break) {
            this.f8156try = (int) Math.ceil(f);
        } else {
            this.f8156try = f;
        }
        Cdo cdo = this.f8152goto;
        if (cdo != null) {
            StarPopupView.this.f7789if.setText(ze.r(R.string.book_detail_dialog_score_txt, String.valueOf((int) (this.f8156try * 2.0f))));
        }
        invalidate();
    }
}
