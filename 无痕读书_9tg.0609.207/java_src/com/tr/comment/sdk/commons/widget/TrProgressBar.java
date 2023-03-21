package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.apk.fa0;
import com.tr.comment.sdk.TrCommentSdk;
/* loaded from: classes7.dex */
public class TrProgressBar extends ProgressBar {
    public TrProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getIndeterminateDrawable().setColorFilter(fa0.m758do(TrCommentSdk.getAppContext()), PorterDuff.Mode.SRC_IN);
    }
}
