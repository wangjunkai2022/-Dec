package com.biquge.ebook.app.ui.activity;

import android.content.ContentValues;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompatJellybean;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.dt;
import com.apk.eg;
import com.apk.f6;
import com.apk.ft;
import com.apk.g5;
import com.apk.i5;
import com.apk.mf;
import com.apk.v0;
import com.apk.w;
import com.apk.x4;
import com.apk.x5;
import com.apk.ze;
import com.biquge.ebook.app.bean.User;
import com.biquge.ebook.app.widget.ClearEditText;
import com.hjq.toast.ToastUtils;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class ForgetPasswordActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6646do;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6647if = new Cdo();
    @BindView(R.id.register_account_et)
    public TextView mAccountET;
    @BindView(R.id.register_again_password_et)
    public ClearEditText mAgainPasswordET;
    @BindView(R.id.register_old_password_et)
    public ClearEditText mOldPasswordET;
    @BindView(R.id.register_old_password_layout)
    public LinearLayout mOldPasswordLayout;
    @BindView(R.id.register_password_et)
    public ClearEditText mPasswordET;

    /* renamed from: com.biquge.ebook.app.ui.activity.ForgetPasswordActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {

        /* renamed from: com.biquge.ebook.app.ui.activity.ForgetPasswordActivity$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0090do implements ft {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ String f6649do;

            /* renamed from: if  reason: not valid java name */
            public final /* synthetic */ String f6651if;

            public C0090do(String str, String str2) {
                this.f6649do = str;
                this.f6651if = str2;
            }

            @Override // com.apk.ft
            public void onClick() {
                ze.m3160class(ze.r(R.string.user_update_pwd_copy_content_txt, ze.m3166extends(), this.f6649do, this.f6651if));
                ToastUtils.show((int) R.string.share_copy_success_txt);
                ForgetPasswordActivity.this.finish();
            }
        }

        /* renamed from: com.biquge.ebook.app.ui.activity.ForgetPasswordActivity$do$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif implements dt {
            public Cif() {
            }

            @Override // com.apk.dt
            public void onClick() {
                ForgetPasswordActivity.this.finish();
            }
        }

        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: new */
        public void mo2984new(String str, String str2) {
            eg.k(ForgetPasswordActivity.this, null, ze.r(R.string.user_update_pwd_success_tips_txt, ze.m3166extends(), str, str2), ze.q(R.string.main_copy), new C0090do(str, str2), new Cif(), null, false);
            v0 m2736try = v0.m2736try();
            User user = m2736try.f4976do;
            if (user != null) {
                user.setPwd(str2);
                ContentValues contentValues = new ContentValues();
                contentValues.put("pwd", m2736try.f4976do.getPwd());
                LitePal.updateAll(User.class, contentValues, "name = ?", str);
            }
            mf.m1712do("EVENT_COMPLE_USERINFO_KEY", null);
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_forget_password;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6646do = new g5(this, this.f6647if);
        this.mAccountET.setText(v0.m2736try().m2738case());
        if (v0.m2736try().m2739catch()) {
            return;
        }
        this.mOldPasswordLayout.setVisibility(8);
    }

    @Override // com.apk.f6
    public void initView() {
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra(NotificationCompatJellybean.KEY_TITLE) : null;
        if (TextUtils.isEmpty(stringExtra)) {
            if (!v0.m2736try().m2739catch()) {
                stringExtra = ze.q(R.string.user_set_one_password);
            } else {
                stringExtra = ze.q(R.string.user_update_password);
            }
        }
        initTopBarOnlyTitle(R.id.activity_complete_info_actionbar, stringExtra);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @OnClick({R.id.register_register_bt})
    public void menuClick() {
        String trim = this.mAccountET.getText().toString().trim();
        String str = null;
        if (this.mOldPasswordLayout.getVisibility() == 0) {
            str = Cgoto.m1022transient(this.mOldPasswordET);
            if (TextUtils.isEmpty(str)) {
                ToastUtils.show((int) R.string.register_old_password_failed_txt);
                return;
            }
        }
        String m1022transient = Cgoto.m1022transient(this.mPasswordET);
        if (!TextUtils.isEmpty(m1022transient) && m1022transient.length() >= 6) {
            if (!this.mAgainPasswordET.getText().toString().trim().equals(m1022transient)) {
                ToastUtils.show((int) R.string.login_account_pwd_equals_txt);
                return;
            } else if (!TextUtils.isEmpty(str) && str.equals(m1022transient)) {
                ToastUtils.show((int) R.string.update_password_same_failed_txt);
                return;
            } else {
                g5 g5Var = this.f6646do;
                if (g5Var != null) {
                    HashMap m1012public = Cgoto.m1012public("action", "changepwd", "username", trim);
                    if (!TextUtils.isEmpty(str)) {
                        m1012public.put("oldpassword", str);
                    }
                    m1012public.put("password", m1022transient);
                    m1012public.put("deviceno", eg.m613super());
                    x4.m2951default(w.m2846final(), m1012public, new i5(g5Var, trim, m1022transient));
                    return;
                }
                return;
            }
        }
        ToastUtils.show((int) R.string.register_password_failed_txt);
    }
}
