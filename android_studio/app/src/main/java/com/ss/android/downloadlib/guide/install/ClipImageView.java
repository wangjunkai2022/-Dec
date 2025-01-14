package com.ss.android.downloadlib.guide.install;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes7.dex */
public class ClipImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11736a;
    public Path b;
    public RectF c;
    public Paint d;
    public float[] e;

    public ClipImageView(Context context) {
        super(context);
        this.f11736a = true;
        a(context);
    }

    public void a(Context context) {
        this.b = new Path();
        this.c = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f11736a) {
            this.b.reset();
            this.c.set(0.0f, 0.0f, getWidth(), getHeight());
            float[] fArr = this.e;
            if (fArr != null) {
                this.b.addRoundRect(this.c, fArr, Path.Direction.CW);
            }
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            canvas.clipPath(this.b);
            Paint paint = this.d;
            if (paint != null) {
                canvas.drawPath(this.b, paint);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Paint paint = new Paint(1);
        this.d = paint;
        paint.setStyle(Paint.Style.FILL);
        this.d.setColor(i);
    }

    public void setClip(boolean z) {
        this.f11736a = z;
    }

    public void setRadius(float[] fArr) {
        if (fArr == null || fArr.length != 8) {
            return;
        }
        this.e = fArr;
    }

    public void setRoundRadius(int i) {
        if (i > 0) {
            float f = i;
            setRadius(new float[]{f, f, f, f, f, f, f, f});
        }
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11736a = true;
        a(context);
    }

    public ClipImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11736a = true;
        a(context);
    }
}
