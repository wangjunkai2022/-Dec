package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.CheckBox;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.f6;
import com.apk.g5;
import com.apk.x5;
import com.apk.ze;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.MessageTimerView;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MessageCodeLoginActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6704do;
    @BindView(R.id.register_account_et)
    public ClearEditText mAccountET;
    @BindView(R.id.view_messageTimerTv)
    public MessageTimerView mMessageTimerView;
    @BindView(R.id.privacy_agreement_cb)
    public CheckBox mServiceCheckBox;
    @BindView(R.id.register_vcode_et)
    public ClearEditText mVCodeET;

    /* renamed from: com.biquge.ebook.app.ui.activity.MessageCodeLoginActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {
        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: try */
        public void mo2986try() {
            MessageCodeLoginActivity.this.setResult(-1);
            MessageCodeLoginActivity.this.finish();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_message_code_login;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6704do = new g5(this, new Cdo());
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.register_actionbar, R.string.register_account_vcode);
        this.mMessageTimerView.setCheckPhone(true);
        ze.x(this.mServiceCheckBox);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @OnClick({R.id.register_register_bt, R.id.view_messageTimerTv, R.id.login_countriescode_tv})
    public void menuClick(View view) {
        if (view.getId() == R.id.register_register_bt) {
            if (!this.mServiceCheckBox.isChecked()) {
                CheckBox checkBox = this.mServiceCheckBox;
                ToastUtils.show((int) R.string.register_agree_userservice_txt);
                TranslateAnimation translateAnimation = new TranslateAnimation(-20.0f, 20.0f, 0.0f, 0.0f);
                translateAnimation.setDuration(80L);
                translateAnimation.setRepeatCount(3);
                translateAnimation.setRepeatMode(2);
                checkBox.startAnimation(translateAnimation);
                return;
            }
            String m1022transient = Cgoto.m1022transient(this.mAccountET);
            if (!TextUtils.isEmpty(m1022transient) && eg.m602instanceof(m1022transient)) {
                String m1022transient2 = Cgoto.m1022transient(this.mVCodeET);
                if (TextUtils.isEmpty(m1022transient2)) {
                    ToastUtils.show((int) R.string.register_message_code_failed_txt);
                    return;
                }
                g5 g5Var = this.f6704do;
                if (g5Var != null) {
                    g5Var.m942new(2, null, null, m1022transient, m1022transient2);
                    return;
                }
                return;
            }
            ToastUtils.show((int) R.string.register_account_failed_txt);
        } else if (view.getId() == R.id.view_messageTimerTv) {
            String m1022transient3 = Cgoto.m1022transient(this.mAccountET);
            if (!TextUtils.isEmpty(m1022transient3) && eg.m602instanceof(m1022transient3)) {
                this.mMessageTimerView.m3478if(m1022transient3);
            } else {
                ToastUtils.show((int) R.string.register_account_failed_txt);
            }
        } else if (view.getId() == R.id.login_countriescode_tv) {
            ToastUtils.show((int) R.string.user_bangding_phone_code_tips_txt);
        }
    }
}
