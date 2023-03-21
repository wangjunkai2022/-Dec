package com.tr.comment.sdk.commons.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.fa0;
import com.apk.k40;
import com.apk.n90;
import com.apk.tb0;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
/* loaded from: classes7.dex */
public class TrStateView extends FrameLayout implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public Cdo f10391break;

    /* renamed from: case  reason: not valid java name */
    public final ImageView f10392case;

    /* renamed from: do  reason: not valid java name */
    public final View f10393do;

    /* renamed from: else  reason: not valid java name */
    public final TextView f10394else;

    /* renamed from: for  reason: not valid java name */
    public final View f10395for;

    /* renamed from: goto  reason: not valid java name */
    public int f10396goto;

    /* renamed from: if  reason: not valid java name */
    public final TextView f10397if;

    /* renamed from: new  reason: not valid java name */
    public final TextView f10398new;

    /* renamed from: this  reason: not valid java name */
    public int f10399this;

    /* renamed from: try  reason: not valid java name */
    public final View f10400try;

    /* renamed from: com.tr.comment.sdk.commons.widget.TrStateView$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
        /* renamed from: do */
        void mo3701do();
    }

    public TrStateView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, -1);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_state_layout, this);
        View findViewById = findViewById(R$id.tr_sdk_state_loading);
        this.f10393do = findViewById;
        View findViewById2 = findViewById(R$id.tr_sdk_state_empty);
        this.f10395for = findViewById2;
        View findViewById3 = findViewById(R$id.tr_sdk_state_failed);
        this.f10400try = findViewById3;
        TextView textView = (TextView) findViewById(R$id.tr_sdk_state_loading_msg_tv);
        this.f10397if = textView;
        TextView textView2 = (TextView) findViewById(R$id.tr_sdk_state_empty_text);
        this.f10398new = textView2;
        this.f10392case = (ImageView) findViewById(R$id.tr_sdk_state_failed_img);
        TextView textView3 = (TextView) findViewById(R$id.tr_sdk_state_failed_tv);
        this.f10394else = textView3;
        findViewById.setOnClickListener(this);
        findViewById2.setOnClickListener(this);
        findViewById3.setOnClickListener(this);
        if (fa0.m760extends()) {
            int m1444do = k40.m1444do(R$color.tr_sdk_comment_reply_txt_night);
            textView.setTextColor(m1444do);
            textView2.setTextColor(m1444do);
            textView3.setTextColor(m1444do);
        }
        m3706try();
        getViewTreeObserver().addOnGlobalLayoutListener(new n90(this));
    }

    /* renamed from: do  reason: not valid java name */
    public void m3702do(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f10398new.setText(str);
        }
        this.f10393do.setVisibility(8);
        this.f10400try.setVisibility(8);
        m3704if(this.f10395for);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3703for() {
        if (!TextUtils.isEmpty(null)) {
            this.f10394else.setText((CharSequence) null);
        }
        this.f10393do.setVisibility(8);
        this.f10395for.setVisibility(8);
        m3704if(this.f10400try);
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3704if(View view) {
        view.setVisibility(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(100L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.start();
    }

    /* renamed from: new  reason: not valid java name */
    public void m3705new() {
        if (!TextUtils.isEmpty(null)) {
            this.f10397if.setText((CharSequence) null);
        }
        this.f10395for.setVisibility(8);
        this.f10400try.setVisibility(8);
        m3704if(this.f10393do);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Cdo cdo;
        if (view.getId() != R$id.tr_sdk_state_failed || tb0.m2586do() || (cdo = this.f10391break) == null) {
            return;
        }
        cdo.mo3701do();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f10396goto;
        if (i3 != 0) {
            i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        int i4 = this.f10399this;
        if (i4 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    public void setReloadClickListener(Cdo cdo) {
        this.f10391break = cdo;
    }

    /* renamed from: try  reason: not valid java name */
    public void m3706try() {
        this.f10393do.setVisibility(8);
        this.f10395for.setVisibility(8);
        this.f10400try.setVisibility(8);
    }
}
