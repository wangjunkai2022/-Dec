package com.lxj.xpopup.widget;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.apk.pw;
/* loaded from: classes8.dex */
public class LoadingView extends View {
    public ArgbEvaluator argbEvaluator;
    public float avgAngle;
    public float centerX;
    public float centerY;
    public int endColor;
    public float endX;
    public Runnable increaseTask;
    public int lineCount;
    public Paint paint;
    public float radius;
    public float radiusOffset;
    public int startColor;
    public float startX;
    public float stokeWidth;
    public int time;

    public LoadingView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.increaseTask);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        for (int i2 = this.lineCount - 1; i2 >= 0; i2--) {
            int abs = Math.abs(this.time + i2);
            this.paint.setColor(((Integer) this.argbEvaluator.evaluate((((abs % i) + 1) * 1.0f) / this.lineCount, Integer.valueOf(this.startColor), Integer.valueOf(this.endColor))).intValue());
            float f = this.startX;
            float f2 = this.centerY;
            canvas.drawLine(f, f2, this.endX, f2, this.paint);
            canvas.drawCircle(this.startX, this.centerY, this.stokeWidth / 2.0f, this.paint);
            canvas.drawCircle(this.endX, this.centerY, this.stokeWidth / 2.0f, this.paint);
            canvas.rotate(this.avgAngle, this.centerX, this.centerY);
        }
        postDelayed(this.increaseTask, 70L);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float measuredWidth = getMeasuredWidth() / 2;
        this.radius = measuredWidth;
        this.radiusOffset = measuredWidth / 2.5f;
        this.centerX = getMeasuredWidth() / 2;
        this.centerY = getMeasuredHeight() / 2;
        float measuredWidth2 = ((getMeasuredWidth() * 1.0f) / pw.m2086goto(getContext(), 30.0f)) * this.stokeWidth;
        this.stokeWidth = measuredWidth2;
        this.paint.setStrokeWidth(measuredWidth2);
        float f = this.centerX + this.radiusOffset;
        this.startX = f;
        this.endX = (this.radius / 3.0f) + f;
        removeCallbacks(this.increaseTask);
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.stokeWidth = 2.0f;
        this.argbEvaluator = new ArgbEvaluator();
        this.startColor = Color.parseColor("#EEEEEE");
        this.endColor = Color.parseColor("#111111");
        this.lineCount = 10;
        this.avgAngle = 360.0f / 10;
        this.time = 0;
        this.increaseTask = new Runnable() { // from class: com.lxj.xpopup.widget.LoadingView.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingView loadingView = LoadingView.this;
                loadingView.time++;
                loadingView.postInvalidate(0, 0, loadingView.getMeasuredWidth(), LoadingView.this.getMeasuredHeight());
            }
        };
        this.paint = new Paint(1);
        float m2086goto = pw.m2086goto(context, this.stokeWidth);
        this.stokeWidth = m2086goto;
        this.paint.setStrokeWidth(m2086goto);
    }
}
