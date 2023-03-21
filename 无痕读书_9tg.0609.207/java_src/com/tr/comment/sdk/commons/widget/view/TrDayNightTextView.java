package com.tr.comment.sdk.commons.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.apk.fa0;
import com.apk.k40;
import com.tr.comment.sdk.R$color;
/* loaded from: classes7.dex */
public class TrDayNightTextView extends AppCompatTextView {
    public TrDayNightTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        if (fa0.m760extends()) {
            setTextColor(k40.m1444do(R$color.tr_sdk_comment_666666));
            setHintTextColor(k40.m1444do(R$color.tr_sdk_comment_666666));
        }
    }
}
