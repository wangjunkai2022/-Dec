package com.lxj.xpopup.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.apk.pw;

/* loaded from: classes8.dex */
public class CheckView extends View {
    public int color;
    public Paint paint;
    public Path path;

    public CheckView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.color == 0) {
            return;
        }
        this.path.moveTo(getMeasuredWidth() / 4, getMeasuredHeight() / 2);
        this.path.lineTo(getMeasuredWidth() / 2, (getMeasuredHeight() * 3) / 4);
        this.path.lineTo(getMeasuredWidth(), getMeasuredHeight() / 4);
        canvas.drawPath(this.path, this.paint);
    }

    public void setColor(int i) {
        this.color = i;
        this.paint.setColor(i);
        postInvalidate();
    }

    public CheckView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.color = 0;
        this.path = new Path();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStrokeWidth(pw.m2086goto(context, 2.0f));
        this.paint.setStyle(Paint.Style.STROKE);
    }
}
