package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ClearEditText;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ForgetPasswordActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ForgetPasswordActivity f6653do;

    /* renamed from: if  reason: not valid java name */
    public View f6654if;

    /* renamed from: com.biquge.ebook.app.ui.activity.ForgetPasswordActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ForgetPasswordActivity f6655do;

        public Cdo(ForgetPasswordActivity_ViewBinding forgetPasswordActivity_ViewBinding, ForgetPasswordActivity forgetPasswordActivity) {
            this.f6655do = forgetPasswordActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6655do.menuClick();
        }
    }

    @UiThread
    public ForgetPasswordActivity_ViewBinding(ForgetPasswordActivity forgetPasswordActivity, View view) {
        this.f6653do = forgetPasswordActivity;
        forgetPasswordActivity.mAccountET = (TextView) Utils.findRequiredViewAsType(view, R.id.register_account_et, "field 'mAccountET'", TextView.class);
        forgetPasswordActivity.mOldPasswordLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.register_old_password_layout, "field 'mOldPasswordLayout'", LinearLayout.class);
        forgetPasswordActivity.mOldPasswordET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.register_old_password_et, "field 'mOldPasswordET'", ClearEditText.class);
        forgetPasswordActivity.mPasswordET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.register_password_et, "field 'mPasswordET'", ClearEditText.class);
        forgetPasswordActivity.mAgainPasswordET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.register_again_password_et, "field 'mAgainPasswordET'", ClearEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.register_register_bt, "method 'menuClick'");
        this.f6654if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, forgetPasswordActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ForgetPasswordActivity forgetPasswordActivity = this.f6653do;
        if (forgetPasswordActivity != null) {
            this.f6653do = null;
            forgetPasswordActivity.mAccountET = null;
            forgetPasswordActivity.mOldPasswordLayout = null;
            forgetPasswordActivity.mOldPasswordET = null;
            forgetPasswordActivity.mPasswordET = null;
            forgetPasswordActivity.mAgainPasswordET = null;
            this.f6654if.setOnClickListener(null);
            this.f6654if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
