package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.widget.EditText;
import butterknife.BindView;
import com.apk.f6;
import com.apk.g5;
import com.apk.mf;
import com.apk.v0;
import com.apk.x5;
import com.biquge.ebook.app.bean.User;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CompleteInfoForeignActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6583do;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6584if = new Cdo();
    @BindView(R.id.info_account_et)
    public EditText mAccountET;
    @BindView(R.id.info_email_et)
    public EditText mEmailET;

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoForeignActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {
        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: do */
        public void mo2979do(String str, String str2) {
            v0.m2736try().m2742do(str, null, null, str2, null);
            mf.m1712do("EVENT_COMPLE_USERINFO_KEY", null);
            CompleteInfoForeignActivity.this.setResult(-1);
            CompleteInfoForeignActivity.this.finish();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_comple_info_foreign;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6583do = new g5(this, this.f6584if);
        User m2743else = v0.m2736try().m2743else();
        if (m2743else != null) {
            String name = m2743else.getName();
            if (!TextUtils.isEmpty(name)) {
                this.mAccountET.setText(name);
                this.mAccountET.setEnabled(false);
                findViewById(R.id.comple_account_layout).setBackgroundResource(0);
            }
            String email = m2743else.getEmail();
            if (TextUtils.isEmpty(email)) {
                return;
            }
            this.mEmailET.setText(email);
        }
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_complete_info_actionbar, R.string.user_comple_email_foreign_txt);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }
}
