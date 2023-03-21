package com.tr.comment.sdk.commons.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.apk.fa0;
import com.tr.comment.sdk.R$drawable;

/* loaded from: classes7.dex */
public class TrDayNightLikeImg extends AppCompatImageView {
    public TrDayNightLikeImg(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        if (fa0.m760extends()) {
            setImageResource(R$drawable.tr_sdk_like_selector_btn_night);
        }
    }
}
