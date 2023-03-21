package com.manhua.ui.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.apk.kg;
import com.apk.p0;
import com.apk.ze;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicPageTitleView extends AppCompatTextView {

    /* renamed from: do  reason: not valid java name */
    public String f10139do;

    /* renamed from: for  reason: not valid java name */
    public int f10140for;

    /* renamed from: if  reason: not valid java name */
    public int f10141if;

    public ComicPageTitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3638for(String str, int i, int i2) {
        if (str.length() > 10) {
            str = str.substring(0, 10) + "...";
        }
        this.f10139do = str;
        this.f10141if = i;
        this.f10140for = i2;
        m3639if();
    }

    /* renamed from: if  reason: not valid java name */
    public void m3639if() {
        try {
            if (TextUtils.isEmpty(this.f10139do)) {
                return;
            }
            int intValue = ((Integer) p0.m2001do("battery_broadcast_value_action")).intValue();
            setText(ze.r(R.string.read_page_title, this.f10139do, Integer.valueOf(this.f10141if), Integer.valueOf(this.f10140for), kg.m1496for(), intValue + "%"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
