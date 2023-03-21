package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import com.apk.ca;
import com.apk.eg;
import com.apk.os0;
import com.apk.ze;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ExampleFontTextView extends os0 {

    /* renamed from: for  reason: not valid java name */
    public Paint f8048for;

    /* renamed from: if  reason: not valid java name */
    public int f8049if;

    /* renamed from: new  reason: not valid java name */
    public String[] f8050new;

    public ExampleFontTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8049if = eg.m614switch();
        Paint paint = new Paint(1);
        this.f8048for = paint;
        paint.setTextSize(eg.m585break(18.0f));
        this.f8048for.setColor(ze.p(R.color.color_3F3F3F));
        this.f8050new = ze.q(R.string.book_read_font_example_txt).split("#");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        String[] strArr;
        super.onDraw(canvas);
        int m317if = (int) ((ca.m315do().f549try - ca.m315do().m317if("")) + this.f8048for.getTextSize());
        for (String str : this.f8050new) {
            float f = m317if;
            canvas.drawText(str, (this.f8049if - this.f8048for.measureText(str)) / 2.0f, f, this.f8048for);
            m317if = (int) ((ca.m315do().f549try - ca.m315do().m317if("")) + this.f8048for.getTextSize() + f);
        }
    }

    public void setFontColor(int i) {
        this.f8048for.setColor(i);
        postInvalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.f8048for.setTypeface(typeface);
        postInvalidate();
    }
}
