package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class TrStatusBarView extends View {
    public TrStatusBarView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int ceil;
        Context context = getContext();
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            ceil = context.getResources().getDimensionPixelSize(identifier);
        } else {
            ceil = (int) Math.ceil(context.getResources().getDisplayMetrics().density * 25.0f);
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ceil, 1073741824));
    }
}
