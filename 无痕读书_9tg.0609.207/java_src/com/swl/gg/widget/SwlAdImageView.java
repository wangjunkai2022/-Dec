package com.swl.gg.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
/* loaded from: classes7.dex */
public class SwlAdImageView extends AppCompatImageView {

    /* renamed from: do  reason: not valid java name */
    public int f10332do;

    /* renamed from: if  reason: not valid java name */
    public final int f10333if;

    public SwlAdImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int min = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f10332do = min;
        this.f10332do = min - ((int) (context.getApplicationContext().getResources().getDisplayMetrics().density * 60.0f));
        this.f10333if = displayMetrics.heightPixels - ((int) (context.getApplicationContext().getResources().getDisplayMetrics().density * 150.0f));
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int makeMeasureSpec;
        int i3;
        Drawable drawable = getDrawable();
        if (drawable != null) {
            float minimumWidth = drawable.getMinimumWidth();
            float minimumHeight = drawable.getMinimumHeight();
            float min = Math.min(this.f10332do / minimumWidth, this.f10333if / minimumHeight);
            if (min > 2.5d) {
                min = 2.5f;
            }
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (minimumWidth * min), 1073741824);
            i3 = View.MeasureSpec.makeMeasureSpec((int) (minimumHeight * min), 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f10332do, 1073741824);
            i3 = i2;
        }
        super.onMeasure(makeMeasureSpec, i3);
    }
}
