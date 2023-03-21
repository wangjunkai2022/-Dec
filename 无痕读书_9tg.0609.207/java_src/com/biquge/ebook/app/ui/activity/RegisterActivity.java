package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.widget.CheckBox;
import butterknife.BindView;
import com.apk.f6;
import com.apk.g5;
import com.apk.x5;
import com.apk.ze;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.HeaderView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class RegisterActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6747do;
    @BindView(R.id.login_actionbar)
    public HeaderView headerView;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6748if = new Cdo();
    @BindView(R.id.login_account_et)
    public ClearEditText mAccountET;
    @BindView(R.id.login_email_et)
    public ClearEditText mEmailET;
    @BindView(R.id.login_password_confirm_et)
    public ClearEditText mPasswordConfirmET;
    @BindView(R.id.login_password_et)
    public ClearEditText mPasswordET;
    @BindView(R.id.privacy_agreement_cb)
    public CheckBox mServiceCheckBox;

    /* renamed from: com.biquge.ebook.app.ui.activity.RegisterActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {
        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: else */
        public void mo2980else(String str, String str2) {
            Intent intent = new Intent();
            intent.putExtra("username", str);
            intent.putExtra("password", str2);
            RegisterActivity.this.setResult(-1, intent);
            RegisterActivity.this.finish();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_register;
    }

    @Override // com.apk.f6
    public void initData() {
        ze.x(this.mServiceCheckBox);
        this.f6747do = new g5(this, this.f6748if);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(this.headerView, R.string.register_account_register);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }
}
