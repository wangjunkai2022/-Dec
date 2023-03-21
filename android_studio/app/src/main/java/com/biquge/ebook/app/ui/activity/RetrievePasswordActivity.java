package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.core.app.NotificationCompat;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.f6;
import com.apk.g5;
import com.apk.j5;
import com.apk.w;
import com.apk.x4;
import com.apk.x5;
import com.hjq.toast.ToastUtils;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class RetrievePasswordActivity extends f6 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public g5 f6753do;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6754if = new Cdo();
    @BindView(R.id.login_email_et)
    public EditText mEmailET;
    @BindView(R.id.login_account_et)
    public EditText mLoginNameET;
    @BindView(R.id.register_password_affirm_et)
    public EditText mPasswordAffirmET;
    @BindView(R.id.register_password_et)
    public EditText mPasswordET;

    /* renamed from: com.biquge.ebook.app.ui.activity.RetrievePasswordActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {
        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: goto */
        public void mo2982goto() {
            RetrievePasswordActivity.this.finish();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_retrieve_password;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6753do = new g5(this, this.f6754if);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_complete_info_actionbar, R.string.user_retrieve_password);
        findViewById(R.id.login_login_bt).setOnClickListener(this);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.login_login_bt) {
            String m1006interface = Cgoto.m1006interface(this.mLoginNameET);
            String m1006interface2 = Cgoto.m1006interface(this.mEmailET);
            String m1006interface3 = Cgoto.m1006interface(this.mPasswordET);
            String m1006interface4 = Cgoto.m1006interface(this.mPasswordAffirmET);
            if (!TextUtils.isEmpty(m1006interface) && !TextUtils.isEmpty(m1006interface2)) {
                if (!TextUtils.isEmpty(m1006interface3) && !TextUtils.isEmpty(m1006interface4)) {
                    if (!m1006interface3.equals(m1006interface4)) {
                        ToastUtils.show((int) R.string.login_account_pwd_equals_txt);
                        return;
                    }
                    g5 g5Var = this.f6753do;
                    if (g5Var != null) {
                        HashMap m1012public = Cgoto.m1012public("action", "forwardpwd", "username", m1006interface);
                        m1012public.put(NotificationCompat.CATEGORY_EMAIL, m1006interface2);
                        m1012public.put("password", m1006interface3);
                        x4.m2951default(w.m2846final(), m1012public, new j5(g5Var));
                        return;
                    }
                    return;
                }
                ToastUtils.show((int) R.string.please_input_new_password);
                return;
            }
            ToastUtils.show((int) R.string.login_account_or_email_null_txt);
        }
    }
}
