package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.f6;
import com.apk.ft;
import com.apk.g5;
import com.apk.mf;
import com.apk.v0;
import com.apk.x5;
import com.biquge.ebook.app.bean.User;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.MessageTimerView;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class CompleteInfoActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6568do;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6569if = new Cdo();
    @BindView(R.id.info_account_et)
    public EditText mAccountET;
    @BindView(R.id.view_messageTimerTv)
    public MessageTimerView mMessageTimerView;
    @BindView(R.id.info_msgcode_et)
    public ClearEditText mMsgCodeET;
    @BindView(R.id.info_phone_et)
    public EditText mPhoneET;

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {

        /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoActivity$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0089do implements ft {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ String f6571do;

            /* renamed from: if  reason: not valid java name */
            public final /* synthetic */ String f6573if;

            public C0089do(String str, String str2) {
                this.f6571do = str;
                this.f6573if = str2;
            }

            @Override // com.apk.ft
            public void onClick() {
                v0.m2736try().m2742do(this.f6571do, this.f6573if, "", null, "");
                mf.m1712do("EVENT_COMPLE_USERINFO_KEY", null);
                CompleteInfoActivity.this.finish();
            }
        }

        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: if */
        public void mo2983if(String str, String str2) {
            eg.j(CompleteInfoActivity.this, "手机号绑定成功 <br/>您可以随时通过 <font color=\"#41A3FF\">【验证码登录】</font> 方式（手机号码+验证码）登录APP", new C0089do(str, str2), false, true);
        }
    }

    public static void j(Context context) {
        context.startActivity(new Intent(context, CompleteInfoActivity.class));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_comple_info;
    }

    public final void i() {
        User m2743else = v0.m2736try().m2743else();
        if (m2743else != null) {
            String name = m2743else.getName();
            if (!TextUtils.isEmpty(name)) {
                this.mAccountET.setText(name);
                this.mAccountET.setEnabled(false);
                findViewById(R.id.comple_account_layout).setBackgroundResource(0);
                findViewById(R.id.comple_user_account_tag).setVisibility(8);
            }
            String phone = m2743else.getPhone();
            if (!TextUtils.isEmpty(phone)) {
                this.mPhoneET.setText(phone);
                this.mPhoneET.setEnabled(false);
                findViewById(R.id.comple_phone_layout).setBackgroundResource(0);
            }
            if (TextUtils.isEmpty(m2743else.getEmail())) {
                return;
            }
            findViewById(R.id.login_change_countries).setVisibility(8);
        }
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6568do = new g5(this, this.f6569if);
        i();
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_complete_info_actionbar, R.string.user_comple_email_txt);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @OnClick({R.id.view_messageTimerTv, R.id.comple_userinfo_bt, R.id.login_change_countries, R.id.login_countriescode_tv})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.comple_userinfo_bt /* 2131296662 */:
                String m1006interface = Cgoto.m1006interface(this.mAccountET);
                String m1006interface2 = Cgoto.m1006interface(this.mPhoneET);
                if (TextUtils.isEmpty(m1006interface2)) {
                    ToastUtils.show((int) R.string.register_account_empty_txt);
                    return;
                } else if (!eg.m602instanceof(m1006interface2)) {
                    ToastUtils.show((int) R.string.register_account_failed_txt);
                    return;
                } else {
                    String m1022transient = Cgoto.m1022transient(this.mMsgCodeET);
                    if (TextUtils.isEmpty(m1022transient)) {
                        ToastUtils.show((int) R.string.register_message_code_failed_txt);
                        return;
                    }
                    g5 g5Var = this.f6568do;
                    if (g5Var != null) {
                        g5Var.m941case(m1006interface, m1006interface2, m1022transient);
                        return;
                    }
                    return;
                }
            case R.id.login_change_countries /* 2131297159 */:
                startActivityForResult(new Intent(this, CompleteInfoForeignActivity.class), PointerIconCompat.TYPE_GRABBING);
                return;
            case R.id.login_countriescode_tv /* 2131297160 */:
                ToastUtils.show((int) R.string.user_bangding_phone_code_tips_txt);
                return;
            case R.id.view_messageTimerTv /* 2131297802 */:
                String m1006interface3 = Cgoto.m1006interface(this.mPhoneET);
                if (TextUtils.isEmpty(m1006interface3)) {
                    ToastUtils.show((int) R.string.register_account_empty_txt);
                    return;
                } else if (!eg.m602instanceof(m1006interface3)) {
                    ToastUtils.show((int) R.string.register_account_failed_txt);
                    return;
                } else {
                    this.mMessageTimerView.m3478if(m1006interface3);
                    return;
                }
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1021 && i2 == -1) {
            i();
        }
    }
}
