package com.biquge.ebook.app.ui.book.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.apk.m1;

/* loaded from: classes8.dex */
public class ReadBookLayout extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public boolean f7180do;

    /* renamed from: if  reason: not valid java name */
    public m1 f7181if;

    public ReadBookLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m1 m1Var = this.f7181if;
        if (m1Var != null) {
            m1Var.f(i, i2);
        }
    }

    public void setOnSizeChangedListener(m1 m1Var) {
        this.f7181if = m1Var;
    }
}
