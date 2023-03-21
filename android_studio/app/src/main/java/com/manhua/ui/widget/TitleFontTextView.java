package com.manhua.ui.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cgoto;
import com.apk.ms0;
import com.apk.tt;

/* loaded from: classes8.dex */
public class TitleFontTextView extends ms0 {
    public TitleFontTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        String m2620do = tt.m2620do("SP_DEFAULT_TEXT_FONT_KEY", "");
        if (TextUtils.isEmpty(m2620do) || !Cgoto.m1024volatile(m2620do)) {
            return;
        }
        setTypeface(Typeface.createFromFile(m2620do));
    }
}
