package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes8.dex */
public class BookImageView extends AppCompatImageView {

    /* renamed from: do  reason: not valid java name */
    public float f7982do;

    public BookImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7982do = 1.3f;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 1073741824 && mode2 != 1073741824) {
            float f = this.f7982do;
            if (f != 0.0f) {
                i2 = View.MeasureSpec.makeMeasureSpec((int) ((size * f) + 0.5f), 1073741824);
                setMeasuredDimension(i, i2);
            }
        }
        if (mode != 1073741824) {
            if ((this.f7982do != 0.0f) & (mode2 == 1073741824)) {
                i = View.MeasureSpec.makeMeasureSpec((int) ((size2 / this.f7982do) + 0.5f), 1073741824);
            }
        }
        setMeasuredDimension(i, i2);
    }

    public void setRatio(float f) {
        this.f7982do = f;
    }
}
