package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.MessageTimerView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class CompleteInfoActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public CompleteInfoActivity f6574do;

    /* renamed from: for  reason: not valid java name */
    public View f6575for;

    /* renamed from: if  reason: not valid java name */
    public View f6576if;

    /* renamed from: new  reason: not valid java name */
    public View f6577new;

    /* renamed from: try  reason: not valid java name */
    public View f6578try;

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ CompleteInfoActivity f6579do;

        public Cdo(CompleteInfoActivity_ViewBinding completeInfoActivity_ViewBinding, CompleteInfoActivity completeInfoActivity) {
            this.f6579do = completeInfoActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6579do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ CompleteInfoActivity f6580do;

        public Cfor(CompleteInfoActivity_ViewBinding completeInfoActivity_ViewBinding, CompleteInfoActivity completeInfoActivity) {
            this.f6580do = completeInfoActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6580do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ CompleteInfoActivity f6581do;

        public Cif(CompleteInfoActivity_ViewBinding completeInfoActivity_ViewBinding, CompleteInfoActivity completeInfoActivity) {
            this.f6581do = completeInfoActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6581do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ CompleteInfoActivity f6582do;

        public Cnew(CompleteInfoActivity_ViewBinding completeInfoActivity_ViewBinding, CompleteInfoActivity completeInfoActivity) {
            this.f6582do = completeInfoActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6582do.menuClick(view);
        }
    }

    @UiThread
    public CompleteInfoActivity_ViewBinding(CompleteInfoActivity completeInfoActivity, View view) {
        this.f6574do = completeInfoActivity;
        completeInfoActivity.mAccountET = (EditText) Utils.findRequiredViewAsType(view, R.id.info_account_et, "field 'mAccountET'", EditText.class);
        completeInfoActivity.mPhoneET = (EditText) Utils.findRequiredViewAsType(view, R.id.info_phone_et, "field 'mPhoneET'", EditText.class);
        LinearLayout linearLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.message_code_layout, "field 'mMsgCodeLayout'", LinearLayout.class);
        completeInfoActivity.mMsgCodeET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.info_msgcode_et, "field 'mMsgCodeET'", ClearEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_messageTimerTv, "field 'mMessageTimerView' and method 'menuClick'");
        completeInfoActivity.mMessageTimerView = (MessageTimerView) Utils.castView(findRequiredView, R.id.view_messageTimerTv, "field 'mMessageTimerView'", MessageTimerView.class);
        this.f6576if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, completeInfoActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.comple_userinfo_bt, "field 'mSubmitBt' and method 'menuClick'");
        TextView textView = (TextView) Utils.castView(findRequiredView2, R.id.comple_userinfo_bt, "field 'mSubmitBt'", TextView.class);
        this.f6575for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, completeInfoActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.login_change_countries, "method 'menuClick'");
        this.f6577new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, completeInfoActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.login_countriescode_tv, "method 'menuClick'");
        this.f6578try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, completeInfoActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CompleteInfoActivity completeInfoActivity = this.f6574do;
        if (completeInfoActivity != null) {
            this.f6574do = null;
            completeInfoActivity.mAccountET = null;
            completeInfoActivity.mPhoneET = null;
            completeInfoActivity.mMsgCodeET = null;
            completeInfoActivity.mMessageTimerView = null;
            this.f6576if.setOnClickListener(null);
            this.f6576if = null;
            this.f6575for.setOnClickListener(null);
            this.f6575for = null;
            this.f6577new.setOnClickListener(null);
            this.f6577new = null;
            this.f6578try.setOnClickListener(null);
            this.f6578try = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
