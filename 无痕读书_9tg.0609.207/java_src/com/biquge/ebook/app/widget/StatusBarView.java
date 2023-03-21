package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.apk.os0;
import com.apk.u0;
/* loaded from: classes8.dex */
public class StatusBarView extends os0 {
    public StatusBarView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int ceil;
        if (u0.m2663do().f4813do != 0) {
            ceil = u0.m2663do().f4813do;
        } else {
            Context context = getContext();
            int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier > 0) {
                ceil = context.getResources().getDimensionPixelSize(identifier);
            } else {
                ceil = (int) Math.ceil(context.getResources().getDisplayMetrics().density * 25.0f);
            }
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ceil, 1073741824));
    }
}
