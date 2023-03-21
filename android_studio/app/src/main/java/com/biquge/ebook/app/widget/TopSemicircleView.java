package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.apk.lq0;
import com.apk.os0;
import com.apk.tr0;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class TopSemicircleView extends os0 {

    /* renamed from: if  reason: not valid java name */
    public Paint f8278if;

    public TopSemicircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f8278if = paint;
        paint.setColor(lq0.m1660do(getContext(), tr0.m2617do(R.color.colorPrimary)));
        this.f8278if.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        canvas.drawCircle(getWidth() / 2, (-getHeight()) * 1.6f, getWidth() * 1.2f, this.f8278if);
    }
}
