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
public class TrDayNightReplyBtn extends AppCompatTextView {
    public TrDayNightReplyBtn(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        if (fa0.m760extends()) {
            setBackgroundResource(R$drawable.tr_sdk_shape_reply_night);
            setTextColor(k40.m1444do(R$color.tr_sdk_comment_reply_txt_night));
            return;
        }
        setBackgroundResource(R$drawable.tr_sdk_shape_reply);
    }
}
