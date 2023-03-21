package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes8.dex */
public class RoundBgView extends View {

    /* renamed from: do  reason: not valid java name */
    public int f8115do;

    /* renamed from: for  reason: not valid java name */
    public Paint f8116for;

    /* renamed from: if  reason: not valid java name */
    public int f8117if;

    public RoundBgView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f8116for = paint;
        paint.setAntiAlias(true);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getBackground() == null) {
            int i = this.f8115do;
            canvas.drawCircle(i / 2, this.f8117if / 2, i / 2, this.f8116for);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f8115do = View.MeasureSpec.getSize(i);
        this.f8117if = View.MeasureSpec.getSize(i2);
    }

    public void setBg(int i) {
        this.f8116for.setColor(i);
        invalidate();
    }
}
