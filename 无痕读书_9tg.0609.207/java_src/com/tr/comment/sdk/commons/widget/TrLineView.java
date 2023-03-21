package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.apk.fa0;
import com.apk.k40;
import com.tr.comment.sdk.R$color;
/* loaded from: classes7.dex */
public class TrLineView extends View {
    public TrLineView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        if (fa0.m760extends()) {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_line_night));
        } else {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_line));
        }
    }
}
