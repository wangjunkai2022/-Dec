package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
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
import com.apk.ze;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.MessageTimerView;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ChangePhoneActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6534do;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6535if = new Cdo();
    @BindView(R.id.user_account_tv)
    public TextView mAccountTv;
    @BindView(R.id.view_messageTimerTv)
    public MessageTimerView mMessageTimerView;
    @BindView(R.id.info_msgcode_et)
    public ClearEditText mMsgCodeET;
    @BindView(R.id.user_new_phone_et)
    public EditText mNewPhoneET;
    @BindView(R.id.user_old_phone_et)
    public EditText mOldPhoneET;

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangePhoneActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {

        /* renamed from: com.biquge.ebook.app.ui.activity.ChangePhoneActivity$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0088do implements ft {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ String f6537do;

            /* renamed from: if  reason: not valid java name */
            public final /* synthetic */ String f6539if;

            public C0088do(String str, String str2) {
                this.f6537do = str;
                this.f6539if = str2;
            }

            @Override // com.apk.ft
            public void onClick() {
                v0.m2736try().m2742do(this.f6537do, this.f6539if, null, null, null);
                mf.m1712do("EVENT_COMPLE_USERINFO_KEY", null);
                ChangePhoneActivity.this.finish();
            }
        }

        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: if */
        public void mo2983if(String str, String str2) {
            eg.j(ChangePhoneActivity.this, ze.q(R.string.user_phone_chanege_success_txt), new C0088do(str, str2), false, true);
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_change_phone;
    }

    public final boolean i(String str) {
        if (str.equals(v0.m2736try().m2743else().getPhone())) {
            return false;
        }
        ToastUtils.show((int) R.string.user_phone_check_faile_txt);
        return true;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6534do = new g5(this, this.f6535if);
        this.mAccountTv.setText(v0.m2736try().m2738case());
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_complete_info_actionbar, R.string.user_phone_change_bangding_txt);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @OnClick({R.id.view_messageTimerTv, R.id.comple_userinfo_bt, R.id.login_countriescode_tv})
    public void menuClick(View view) {
        int id = view.getId();
        if (id != R.id.comple_userinfo_bt) {
            if (id == R.id.login_countriescode_tv) {
                ToastUtils.show((int) R.string.user_bangding_phone_code_tips_txt);
                return;
            } else if (id != R.id.view_messageTimerTv) {
                return;
            } else {
                String m1006interface = Cgoto.m1006interface(this.mNewPhoneET);
                if (TextUtils.isEmpty(m1006interface)) {
                    ToastUtils.show((int) R.string.register_account_empty_txt);
                    return;
                } else if (!eg.m602instanceof(m1006interface)) {
                    ToastUtils.show((int) R.string.register_account_failed_txt);
                    return;
                } else if (i(this.mOldPhoneET.getText().toString().trim())) {
                    return;
                } else {
                    this.mMessageTimerView.m3478if(m1006interface);
                    return;
                }
            }
        }
        String trim = this.mAccountTv.getText().toString().trim();
        String m1006interface2 = Cgoto.m1006interface(this.mOldPhoneET);
        String m1006interface3 = Cgoto.m1006interface(this.mNewPhoneET);
        if (TextUtils.isEmpty(m1006interface3)) {
            ToastUtils.show((int) R.string.register_account_empty_txt);
        } else if (!eg.m602instanceof(m1006interface3)) {
            ToastUtils.show((int) R.string.register_account_failed_txt);
        } else if (i(m1006interface2)) {
        } else {
            String m1022transient = Cgoto.m1022transient(this.mMsgCodeET);
            if (TextUtils.isEmpty(m1022transient)) {
                ToastUtils.show((int) R.string.register_message_code_failed_txt);
                return;
            }
            g5 g5Var = this.f6534do;
            if (g5Var != null) {
                g5Var.m941case(trim, m1006interface3, m1022transient);
            }
        }
    }
}
