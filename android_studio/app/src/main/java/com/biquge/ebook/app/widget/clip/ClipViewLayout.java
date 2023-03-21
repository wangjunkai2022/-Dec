package com.biquge.ebook.app.widget.clip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.apk.qh;
import com.biquge.ebook.app.R$styleable;

/* loaded from: classes8.dex */
public class ClipViewLayout extends RelativeLayout {

    /* renamed from: break  reason: not valid java name */
    public float f8312break;

    /* renamed from: case  reason: not valid java name */
    public Matrix f8313case;

    /* renamed from: catch  reason: not valid java name */
    public final float[] f8314catch;

    /* renamed from: class  reason: not valid java name */
    public float f8315class;

    /* renamed from: const  reason: not valid java name */
    public float f8316const;

    /* renamed from: do  reason: not valid java name */
    public ImageView f8317do;

    /* renamed from: else  reason: not valid java name */
    public int f8318else;

    /* renamed from: for  reason: not valid java name */
    public float f8319for;

    /* renamed from: goto  reason: not valid java name */
    public PointF f8320goto;

    /* renamed from: if  reason: not valid java name */
    public qh f8321if;

    /* renamed from: new  reason: not valid java name */
    public float f8322new;

    /* renamed from: this  reason: not valid java name */
    public PointF f8323this;

    /* renamed from: try  reason: not valid java name */
    public Matrix f8324try;

    /* renamed from: com.biquge.ebook.app.widget.clip.ClipViewLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Uri f8325do;

        public Cdo(Uri uri) {
            this.f8325do = uri;
        }

        /* JADX WARN: Code restructure failed: missing block: B:62:0x012e, code lost:
            if (r3 < r4) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0153, code lost:
            if (r3 < r4) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x0155, code lost:
            r3 = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x015a, code lost:
            if (r3 >= 1.0f) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x015c, code lost:
            r3 = 0.85f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x015f, code lost:
            r2.f8324try.postScale(r3, r3);
            r2.f8324try.postTranslate((r2.f8317do.getWidth() / 2) - ((int) ((r0.getWidth() * r3) / 2.0f)), (r2.f8317do.getHeight() / 2) - ((int) ((r0.getHeight() * r3) / 2.0f)));
            r2.f8317do.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
            r2.f8317do.setImageMatrix(r2.f8324try);
            r2.f8317do.setImageBitmap(r0);
         */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onGlobalLayout() {
            /*
                Method dump skipped, instructions count: 433
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.widget.clip.ClipViewLayout.Cdo.onGlobalLayout():void");
        }
    }

    public ClipViewLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8324try = new Matrix();
        this.f8313case = new Matrix();
        this.f8318else = 0;
        this.f8320goto = new PointF();
        this.f8323this = new PointF();
        this.f8312break = 1.0f;
        this.f8314catch = new float[9];
        this.f8316const = 4.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClipViewLayout);
        this.f8319for = obtainStyledAttributes.getDimensionPixelSize(2, (int) TypedValue.applyDimension(1, 50.0f, getResources().getDisplayMetrics()));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, (int) TypedValue.applyDimension(1, 1.0f, getResources().getDisplayMetrics()));
        int i = obtainStyledAttributes.getInt(1, 1);
        obtainStyledAttributes.recycle();
        qh qhVar = new qh(context);
        this.f8321if = qhVar;
        qhVar.setClipType(i == 1 ? qh.Cdo.CIRCLE : qh.Cdo.RECTANGLE);
        this.f8321if.setClipBorderWidth(dimensionPixelSize);
        this.f8321if.setmHorizontalPadding(this.f8319for);
        this.f8317do = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.f8317do, layoutParams);
        addView(this.f8321if, layoutParams);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3538do() {
        Drawable drawable;
        float f;
        Matrix matrix = this.f8324try;
        RectF rectF = new RectF();
        if (this.f8317do.getDrawable() != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        int width = this.f8317do.getWidth();
        int height = this.f8317do.getHeight();
        float width2 = rectF.width();
        float f2 = width;
        float f3 = this.f8319for;
        if (width2 >= f2 - (f3 * 2.0f)) {
            float f4 = rectF.left;
            f = f4 > f3 ? (-f4) + f3 : 0.0f;
            float f5 = rectF.right;
            float f6 = this.f8319for;
            if (f5 < f2 - f6) {
                f = (f2 - f6) - f5;
            }
        } else {
            f = 0.0f;
        }
        float height2 = rectF.height();
        float f7 = height;
        float f8 = this.f8322new;
        if (height2 >= f7 - (2.0f * f8)) {
            float f9 = rectF.top;
            r3 = f9 > f8 ? (-f9) + f8 : 0.0f;
            float f10 = rectF.bottom;
            float f11 = this.f8322new;
            if (f10 < f7 - f11) {
                r3 = (f7 - f11) - f10;
            }
        }
        this.f8324try.postTranslate(f, r3);
    }

    public final float getScale() {
        this.f8324try.getValues(this.f8314catch);
        return this.f8314catch[0];
    }

    /* renamed from: if  reason: not valid java name */
    public final float m3539if(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((y * y) + (x * x));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f8313case.set(this.f8324try);
            this.f8320goto.set(motionEvent.getX(), motionEvent.getY());
            this.f8318else = 1;
        } else if (action == 2) {
            int i = this.f8318else;
            if (i == 1) {
                this.f8324try.set(this.f8313case);
                float x = motionEvent.getX() - this.f8320goto.x;
                float y = motionEvent.getY() - this.f8320goto.y;
                this.f8322new = this.f8321if.getClipRect().top;
                this.f8324try.postTranslate(x, y);
                m3538do();
            } else if (i == 2) {
                float m3539if = m3539if(motionEvent);
                if (m3539if > 10.0f) {
                    float f = m3539if / this.f8312break;
                    if (f < 1.0f) {
                        if (getScale() > this.f8315class) {
                            this.f8324try.set(this.f8313case);
                            this.f8322new = this.f8321if.getClipRect().top;
                            Matrix matrix = this.f8324try;
                            PointF pointF = this.f8323this;
                            matrix.postScale(f, f, pointF.x, pointF.y);
                            while (getScale() < this.f8315class) {
                                Matrix matrix2 = this.f8324try;
                                PointF pointF2 = this.f8323this;
                                matrix2.postScale(1.01f, 1.01f, pointF2.x, pointF2.y);
                            }
                        }
                        m3538do();
                    } else if (getScale() <= this.f8316const) {
                        this.f8324try.set(this.f8313case);
                        this.f8322new = this.f8321if.getClipRect().top;
                        Matrix matrix3 = this.f8324try;
                        PointF pointF3 = this.f8323this;
                        matrix3.postScale(f, f, pointF3.x, pointF3.y);
                    }
                }
            }
            this.f8317do.setImageMatrix(this.f8324try);
        } else if (action == 5) {
            float m3539if2 = m3539if(motionEvent);
            this.f8312break = m3539if2;
            if (m3539if2 > 10.0f) {
                this.f8313case.set(this.f8324try);
                this.f8323this.set((motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f, (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f);
                this.f8318else = 2;
            }
        } else if (action == 6) {
            this.f8318else = 0;
        }
        return true;
    }

    public void setImageSrc(Uri uri) {
        this.f8317do.getViewTreeObserver().addOnGlobalLayoutListener(new Cdo(uri));
    }
}
