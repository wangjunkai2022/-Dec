package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.HeaderView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class LoginActivity_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f6672case;

    /* renamed from: do  reason: not valid java name */
    public LoginActivity f6673do;

    /* renamed from: for  reason: not valid java name */
    public View f6674for;

    /* renamed from: if  reason: not valid java name */
    public View f6675if;

    /* renamed from: new  reason: not valid java name */
    public View f6676new;

    /* renamed from: try  reason: not valid java name */
    public View f6677try;

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LoginActivity f6678do;

        public Cdo(LoginActivity_ViewBinding loginActivity_ViewBinding, LoginActivity loginActivity) {
            this.f6678do = loginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6678do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LoginActivity f6679do;

        public Cfor(LoginActivity_ViewBinding loginActivity_ViewBinding, LoginActivity loginActivity) {
            this.f6679do = loginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6679do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LoginActivity f6680do;

        public Cif(LoginActivity_ViewBinding loginActivity_ViewBinding, LoginActivity loginActivity) {
            this.f6680do = loginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6680do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LoginActivity f6681do;

        public Cnew(LoginActivity_ViewBinding loginActivity_ViewBinding, LoginActivity loginActivity) {
            this.f6681do = loginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6681do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LoginActivity f6682do;

        public Ctry(LoginActivity_ViewBinding loginActivity_ViewBinding, LoginActivity loginActivity) {
            this.f6682do = loginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6682do.menuClick(view);
        }
    }

    @UiThread
    public LoginActivity_ViewBinding(LoginActivity loginActivity, View view) {
        this.f6673do = loginActivity;
        loginActivity.headerView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.login_actionbar, "field 'headerView'", HeaderView.class);
        loginActivity.mAccountET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.login_account_et, "field 'mAccountET'", ClearEditText.class);
        loginActivity.mPasswordET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.login_password_et, "field 'mPasswordET'", ClearEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.login_message_bt, "field 'mMsgLoginTv' and method 'menuClick'");
        TextView textView = (TextView) Utils.castView(findRequiredView, R.id.login_message_bt, "field 'mMsgLoginTv'", TextView.class);
        this.f6675if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, loginActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.login_register_bt, "field 'mRegisterTv' and method 'menuClick'");
        TextView textView2 = (TextView) Utils.castView(findRequiredView2, R.id.login_register_bt, "field 'mRegisterTv'", TextView.class);
        this.f6674for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, loginActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.login_auto_bt, "field 'mAutoLoginTv' and method 'menuClick'");
        loginActivity.mAutoLoginTv = (TextView) Utils.castView(findRequiredView3, R.id.login_auto_bt, "field 'mAutoLoginTv'", TextView.class);
        this.f6676new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, loginActivity));
        loginActivity.mServiceCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.privacy_agreement_cb, "field 'mServiceCheckBox'", CheckBox.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.login_login_bt, "method 'menuClick'");
        this.f6677try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, loginActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.login_retrieve_password_bt, "method 'menuClick'");
        this.f6672case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, loginActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LoginActivity loginActivity = this.f6673do;
        if (loginActivity != null) {
            this.f6673do = null;
            loginActivity.headerView = null;
            loginActivity.mAccountET = null;
            loginActivity.mPasswordET = null;
            loginActivity.mAutoLoginTv = null;
            loginActivity.mServiceCheckBox = null;
            this.f6675if.setOnClickListener(null);
            this.f6675if = null;
            this.f6674for.setOnClickListener(null);
            this.f6674for = null;
            this.f6676new.setOnClickListener(null);
            this.f6676new = null;
            this.f6677try.setOnClickListener(null);
            this.f6677try = null;
            this.f6672case.setOnClickListener(null);
            this.f6672case = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
