package com.apk;

import android.view.View;
import androidx.appcompat.widget.ActivityChooserView;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.commons.widget.TrExpandTextView;
/* compiled from: TrExpandTextView.java */
/* loaded from: classes7.dex */
public class e90 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrExpandTextView f1026do;

    public e90(TrExpandTextView trExpandTextView) {
        this.f1026do = trExpandTextView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String m1467while = k40.m1467while(R$string.tr_sdk_expand_more_txt);
        if (m1467while.equals(this.f1026do.f10341if.getText().toString().trim())) {
            this.f1026do.f10339do.setMaxLines(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            this.f1026do.f10341if.setVisibility(8);
            this.f1026do.setExpand(true);
            return;
        }
        TrExpandTextView trExpandTextView = this.f1026do;
        trExpandTextView.f10339do.setMaxLines(trExpandTextView.f10342new);
        this.f1026do.f10341if.setText(m1467while);
        this.f1026do.f10341if.setVisibility(0);
        this.f1026do.setExpand(false);
    }
}
