package com.tr.comment.sdk.commons.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.apk.fa0;
import com.apk.k40;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$drawable;

/* loaded from: classes7.dex */
public class TrDayNightSortTextView extends AppCompatTextView {
    public TrDayNightSortTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        if (fa0.m760extends()) {
            setBackgroundResource(R$drawable.tr_sdk_shape_sort_item_bg_selector_night);
            setTextColor(k40.m1444do(R$color.tr_sdk_comment_666666));
            return;
        }
        setBackgroundResource(R$drawable.tr_sdk_shape_sort_item_bg_selector);
        setTextColor(k40.m1444do(R$color.color_333333));
    }
}
