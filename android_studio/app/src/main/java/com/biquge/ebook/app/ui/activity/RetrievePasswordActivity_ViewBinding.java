package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class RetrievePasswordActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public RetrievePasswordActivity f6756do;

    @UiThread
    public RetrievePasswordActivity_ViewBinding(RetrievePasswordActivity retrievePasswordActivity, View view) {
        this.f6756do = retrievePasswordActivity;
        retrievePasswordActivity.mLoginNameET = (EditText) Utils.findRequiredViewAsType(view, R.id.login_account_et, "field 'mLoginNameET'", EditText.class);
        retrievePasswordActivity.mEmailET = (EditText) Utils.findRequiredViewAsType(view, R.id.login_email_et, "field 'mEmailET'", EditText.class);
        retrievePasswordActivity.mPasswordET = (EditText) Utils.findRequiredViewAsType(view, R.id.register_password_et, "field 'mPasswordET'", EditText.class);
        retrievePasswordActivity.mPasswordAffirmET = (EditText) Utils.findRequiredViewAsType(view, R.id.register_password_affirm_et, "field 'mPasswordAffirmET'", EditText.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RetrievePasswordActivity retrievePasswordActivity = this.f6756do;
        if (retrievePasswordActivity != null) {
            this.f6756do = null;
            retrievePasswordActivity.mLoginNameET = null;
            retrievePasswordActivity.mEmailET = null;
            retrievePasswordActivity.mPasswordET = null;
            retrievePasswordActivity.mPasswordAffirmET = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
