package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ActivityChooserView;
import com.apk.e90;
import com.apk.fa0;
import com.apk.k40;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$dimen;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.R$styleable;

/* loaded from: classes7.dex */
public class TrExpandTextView extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public int f10338case;

    /* renamed from: do  reason: not valid java name */
    public TextView f10339do;

    /* renamed from: for  reason: not valid java name */
    public boolean f10340for;

    /* renamed from: if  reason: not valid java name */
    public TextView f10341if;

    /* renamed from: new  reason: not valid java name */
    public int f10342new;

    /* renamed from: try  reason: not valid java name */
    public float f10343try;

    /* renamed from: com.tr.comment.sdk.commons.widget.TrExpandTextView$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TrExpandTextView.this.m3695do();
        }
    }

    public TrExpandTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_textview_expand_view, this);
        this.f10339do = (TextView) findViewById(R$id.tr_sdk_expand_content_tv);
        this.f10341if = (TextView) findViewById(R$id.tr_sdk_expand_more_btn);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TrCommentView);
        this.f10342new = obtainStyledAttributes.getInt(R$styleable.TrCommentView_tr_comment_sdk_tv_maxline, 5);
        this.f10343try = obtainStyledAttributes.getDimensionPixelSize(R$styleable.TrCommentView_tr_comment_sdk_tv_size, getResources().getDimensionPixelSize(R$dimen.tr_sdk_comment_tv_size));
        this.f10338case = obtainStyledAttributes.getInt(R$styleable.TrCommentView_tr_comment_sdk_tv_color, R$color.tr_sdk_comment_333333);
        this.f10339do.setTextSize(0, this.f10343try);
        this.f10339do.setTextColor(this.f10338case);
        this.f10339do.setMaxLines(this.f10342new);
        this.f10341if.setOnClickListener(new e90(this));
        if (fa0.m760extends()) {
            this.f10339do.setTextColor(k40.m1444do(R$color.tr_sdk_comment_reply_txt_night));
            this.f10341if.setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_night_bg));
            return;
        }
        this.f10339do.setTextColor(k40.m1444do(R$color.tr_sdk_comment_2e2e2e));
        this.f10341if.setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_day_bg));
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3695do() {
        int lineCount = this.f10339do.getLineCount();
        int i = this.f10342new;
        if (lineCount > i) {
            if (this.f10340for) {
                this.f10339do.setMaxLines(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                this.f10341if.setVisibility(8);
                return;
            }
            this.f10339do.setMaxLines(i);
            this.f10341if.setText(k40.m1467while(R$string.tr_sdk_expand_more_txt));
            this.f10341if.setVisibility(0);
        } else if (this.f10341if.getVisibility() != 8) {
            this.f10341if.setVisibility(8);
        }
    }

    public void setExpand(boolean z) {
        this.f10340for = z;
    }

    public void setText(CharSequence charSequence) {
        this.f10339do.setText(charSequence);
        m3695do();
        post(new Cdo());
    }

    public void setTextSize(int i) {
        this.f10339do.setTextSize(2, i);
    }
}
