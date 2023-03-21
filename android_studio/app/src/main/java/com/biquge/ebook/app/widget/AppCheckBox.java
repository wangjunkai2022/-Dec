package com.biquge.ebook.app.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.apk.da;
import com.apk.lq0;
import com.apk.tr0;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class AppCheckBox extends AppCompatCheckBox {
    public AppCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (da.m438while()) {
            int m1660do = lq0.m1660do(getContext(), tr0.m2617do(R.color.search_edittext_bg_color_night));
            setSupportButtonTintList(m3466if(m1660do, m1660do, m1660do, m1660do));
            return;
        }
        int m1660do2 = lq0.m1660do(getContext(), tr0.m2617do(R.color.colorAccent));
        setSupportButtonTintList(m3466if(m1660do2, m1660do2, m1660do2, m1660do2));
    }

    /* renamed from: if  reason: not valid java name */
    public static ColorStateList m3466if(int i, int i2, int i3, int i4) {
        return new ColorStateList(new int[][]{new int[]{16842919, 16842910}, new int[]{16842910, 16842908}, new int[]{16842910}, new int[]{16842908}, new int[]{16842909}, new int[0]}, new int[]{i2, i3, i, i3, i4, i});
    }
}
