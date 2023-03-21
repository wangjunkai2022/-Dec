package com.tr.comment.sdk.commons.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.apk.fa0;
import com.tr.comment.sdk.R$drawable;
/* loaded from: classes7.dex */
public class TrDayNightLayout extends LinearLayout {
    public TrDayNightLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        if (fa0.m760extends()) {
            setBackgroundResource(R$drawable.tr_sdk_shape_night_bg);
        } else {
            setBackgroundResource(R$drawable.tr_sdk_shape_day_bg);
        }
    }
}
