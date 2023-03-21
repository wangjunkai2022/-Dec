package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.google.android.flexbox.FlexboxLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class FeedBackActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public FeedBackActivity f6643do;

    /* renamed from: if  reason: not valid java name */
    public View f6644if;

    /* renamed from: com.biquge.ebook.app.ui.activity.FeedBackActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ FeedBackActivity f6645do;

        public Cdo(FeedBackActivity_ViewBinding feedBackActivity_ViewBinding, FeedBackActivity feedBackActivity) {
            this.f6645do = feedBackActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6645do.menuClk(view);
        }
    }

    @UiThread
    public FeedBackActivity_ViewBinding(FeedBackActivity feedBackActivity, View view) {
        this.f6643do = feedBackActivity;
        feedBackActivity.mAnsFlexboxLayout = (FlexboxLayout) Utils.findRequiredViewAsType(view, R.id.feedback_ans_flexbox_layout, "field 'mAnsFlexboxLayout'", FlexboxLayout.class);
        feedBackActivity.commit_tips = (TextView) Utils.findRequiredViewAsType(view, R.id.commit_tips_txt, "field 'commit_tips'", TextView.class);
        feedBackActivity.input_et = (EditText) Utils.findRequiredViewAsType(view, R.id.input_et, "field 'input_et'", EditText.class);
        feedBackActivity.parent_sv = (ScrollView) Utils.findRequiredViewAsType(view, R.id.parent_sv, "field 'parent_sv'", ScrollView.class);
        feedBackActivity.number_tips = (TextView) Utils.findRequiredViewAsType(view, R.id.number_tips, "field 'number_tips'", TextView.class);
        feedBackActivity.register_phone_et = (EditText) Utils.findRequiredViewAsType(view, R.id.register_phone_et, "field 'register_phone_et'", EditText.class);
        feedBackActivity.register_weixin_qq_et = (EditText) Utils.findRequiredViewAsType(view, R.id.register_weixin_qq_et, "field 'register_weixin_qq_et'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.commit_bt, "method 'menuClk'");
        this.f6644if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, feedBackActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FeedBackActivity feedBackActivity = this.f6643do;
        if (feedBackActivity != null) {
            this.f6643do = null;
            feedBackActivity.mAnsFlexboxLayout = null;
            feedBackActivity.commit_tips = null;
            feedBackActivity.input_et = null;
            feedBackActivity.parent_sv = null;
            feedBackActivity.number_tips = null;
            feedBackActivity.register_phone_et = null;
            feedBackActivity.register_weixin_qq_et = null;
            this.f6644if.setOnClickListener(null);
            this.f6644if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
