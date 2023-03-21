package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.apk.lq0;
import com.apk.tr0;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AppProgressBar extends ProgressBar {
    public AppProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getIndeterminateDrawable().setColorFilter(lq0.m1660do(getContext(), tr0.m2617do(R.color.color_666666)), PorterDuff.Mode.SRC_IN);
    }
}
