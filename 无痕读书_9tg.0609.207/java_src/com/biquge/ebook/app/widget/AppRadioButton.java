package com.biquge.ebook.app.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.apk.lq0;
import com.apk.tr0;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AppRadioButton extends AppCompatRadioButton {
    public AppRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int m1660do = lq0.m1660do(getContext(), tr0.m2617do(R.color.colorAccent));
        setSupportButtonTintList(new ColorStateList(new int[][]{new int[]{16842919, 16842910}, new int[]{16842910, 16842908}, new int[]{16842910}, new int[]{16842908}, new int[]{16842909}, new int[0]}, new int[]{m1660do, m1660do, m1660do, m1660do, m1660do, m1660do}));
    }
}
