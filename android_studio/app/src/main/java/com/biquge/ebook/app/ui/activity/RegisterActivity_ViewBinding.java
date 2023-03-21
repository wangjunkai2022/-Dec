package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.f5;
import com.apk.g5;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.HeaderView;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class RegisterActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public RegisterActivity f6750do;

    /* renamed from: if  reason: not valid java name */
    public View f6751if;

    /* renamed from: com.biquge.ebook.app.ui.activity.RegisterActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ RegisterActivity f6752do;

        public Cdo(RegisterActivity_ViewBinding registerActivity_ViewBinding, RegisterActivity registerActivity) {
            this.f6752do = registerActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            RegisterActivity registerActivity = this.f6752do;
            if (registerActivity != null) {
                if (view.getId() == R.id.login_login_bt) {
                    String m1022transient = Cgoto.m1022transient(registerActivity.mAccountET);
                    String m1022transient2 = Cgoto.m1022transient(registerActivity.mPasswordET);
                    String m1022transient3 = Cgoto.m1022transient(registerActivity.mPasswordConfirmET);
                    if (!TextUtils.isEmpty(m1022transient) && !TextUtils.isEmpty(m1022transient2) && !TextUtils.isEmpty(m1022transient3)) {
                        if (!m1022transient3.equals(m1022transient2)) {
                            ToastUtils.show((int) R.string.login_account_pwd_equals_txt);
                            return;
                        }
                        String m1022transient4 = Cgoto.m1022transient(registerActivity.mEmailET);
                        g5 g5Var = registerActivity.f6747do;
                        if (g5Var != null) {
                            new b1().m141do(new f5(g5Var, m1022transient, m1022transient2, m1022transient4));
                            return;
                        }
                        return;
                    }
                    ToastUtils.show((int) R.string.login_account_pwd_failed_txt);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public RegisterActivity_ViewBinding(RegisterActivity registerActivity, View view) {
        this.f6750do = registerActivity;
        registerActivity.headerView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.login_actionbar, "field 'headerView'", HeaderView.class);
        registerActivity.mAccountET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.login_account_et, "field 'mAccountET'", ClearEditText.class);
        registerActivity.mPasswordET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.login_password_et, "field 'mPasswordET'", ClearEditText.class);
        registerActivity.mPasswordConfirmET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.login_password_confirm_et, "field 'mPasswordConfirmET'", ClearEditText.class);
        registerActivity.mEmailET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.login_email_et, "field 'mEmailET'", ClearEditText.class);
        registerActivity.mServiceCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.privacy_agreement_cb, "field 'mServiceCheckBox'", CheckBox.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.login_login_bt, "method 'menuClick'");
        this.f6751if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, registerActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RegisterActivity registerActivity = this.f6750do;
        if (registerActivity != null) {
            this.f6750do = null;
            registerActivity.headerView = null;
            registerActivity.mAccountET = null;
            registerActivity.mPasswordET = null;
            registerActivity.mPasswordConfirmET = null;
            registerActivity.mEmailET = null;
            registerActivity.mServiceCheckBox = null;
            this.f6751if.setOnClickListener(null);
            this.f6751if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
