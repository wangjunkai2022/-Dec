package com.apk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.View;
import androidx.core.view.ViewCompat;
/* compiled from: ColorWheelSelector.java */
/* loaded from: classes7.dex */
public class ys0 extends View {

    /* renamed from: do  reason: not valid java name */
    public Paint f6065do;

    /* renamed from: for  reason: not valid java name */
    public PointF f6066for;

    /* renamed from: if  reason: not valid java name */
    public float f6067if;

    public ys0(Context context) {
        super(context, null, 0);
        this.f6067if = 27.0f;
        this.f6066for = new PointF();
        Paint paint = new Paint(1);
        this.f6065do = paint;
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f6065do.setStyle(Paint.Style.STROKE);
        this.f6065do.setStrokeWidth(2.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        PointF pointF = this.f6066for;
        float f = pointF.x;
        float f2 = this.f6067if;
        float f3 = pointF.y;
        canvas.drawLine(f - f2, f3, f + f2, f3, this.f6065do);
        PointF pointF2 = this.f6066for;
        float f4 = pointF2.x;
        float f5 = pointF2.y;
        float f6 = this.f6067if;
        canvas.drawLine(f4, f5 - f6, f4, f5 + f6, this.f6065do);
        PointF pointF3 = this.f6066for;
        canvas.drawCircle(pointF3.x, pointF3.y, this.f6067if * 0.66f, this.f6065do);
    }

    public void setCurrentPoint(PointF pointF) {
        this.f6066for = pointF;
        invalidate();
    }

    public void setSelectorRadiusPx(float f) {
        this.f6067if = f;
    }
}
