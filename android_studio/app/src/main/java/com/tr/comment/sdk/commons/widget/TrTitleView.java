package com.tr.comment.sdk.commons.widget;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.apk.fa0;
import com.apk.k40;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;

/* loaded from: classes7.dex */
public class TrTitleView extends LinearLayout implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public TextView f10401do;

    public TrTitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_comment_title_layout, this);
        TrStatusBarView trStatusBarView = (TrStatusBarView) findViewById(R$id.tr_sdk_comment_statusbar);
        this.f10401do = (TextView) findViewById(R$id.tr_sdk_comment_title_name);
        if (fa0.m760extends()) {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_title_bg_night));
        } else {
            setBackgroundColor(fa0.m758do(getContext()));
        }
        findViewById(R$id.tr_sdk_comment_title_back).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            if (view.getId() == R$id.tr_sdk_comment_title_back) {
                ((Activity) getContext()).finish();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setTitle(String str) {
        if (this.f10401do == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f10401do.setText(str);
    }
}
