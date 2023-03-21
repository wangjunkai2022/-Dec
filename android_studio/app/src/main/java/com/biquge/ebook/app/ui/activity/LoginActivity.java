package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Celse;
import com.apk.Cgoto;
import com.apk.f6;
import com.apk.g5;
import com.apk.x5;
import com.apk.ze;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.HeaderView;
import com.hjq.toast.ToastUtils;
import com.qq.e.comm.adevent.AdEventType;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class LoginActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6665do;
    @BindView(R.id.login_actionbar)
    public HeaderView headerView;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6666if = new Cfor();
    @BindView(R.id.login_account_et)
    public ClearEditText mAccountET;
    @BindView(R.id.login_auto_bt)
    public TextView mAutoLoginTv;
    @BindView(R.id.login_password_et)
    public ClearEditText mPasswordET;
    @BindView(R.id.privacy_agreement_cb)
    public CheckBox mServiceCheckBox;

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6667do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f6669if;

        public Cdo(String str, String str2) {
            this.f6667do = str;
            this.f6669if = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            LoginActivity.this.j(this.f6667do, this.f6669if);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends x5 {
        public Cfor() {
        }

        @Override // com.apk.x5
        /* renamed from: try */
        public void mo2986try() {
            LoginActivity.this.finish();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.LoginActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoginActivity.this.hideBaseLoading();
            Toast makeText = Toast.makeText(AppContext.f6392case, ze.q(R.string.main_remove_account_tips_txt), 0);
            makeText.setGravity(48, 0, 0);
            makeText.show();
        }
    }

    public static void l(Context context) {
        context.startActivity(new Intent(context, LoginActivity.class));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_login;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6665do = new g5(this, this.f6666if);
        Intent intent = getIntent();
        if (intent.hasExtra("username")) {
            String stringExtra = intent.getStringExtra("username");
            String stringExtra2 = intent.getStringExtra("password");
            this.mAccountET.setText(stringExtra);
            this.mAccountET.setSelection(stringExtra.length());
            this.mPasswordET.setText(stringExtra2);
            this.mPasswordET.setSelection(stringExtra2.length());
            postDelayed(new Cdo(stringExtra, stringExtra2), 200L);
        }
        ze.x(this.mServiceCheckBox);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(this.headerView, R.string.login_title_txt);
        ((TextView) findViewById(R.id.login_retrieve_password_bt)).getPaint().setFlags(8);
        this.mAutoLoginTv.getPaint().setFlags(8);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    /* renamed from: k */
    public final void j(String str, String str2) {
        if (Celse.m648for("SP_REMOVE_ACCOUNT_KEY" + str) != null) {
            showBaseLoading();
            postDelayed(new Cif(), 1000L);
            return;
        }
        g5 g5Var = this.f6665do;
        if (g5Var != null) {
            g5Var.m942new(0, str, str2, null, null);
        }
    }

    @OnClick({R.id.login_message_bt, R.id.login_login_bt, R.id.login_register_bt, R.id.login_auto_bt, R.id.login_retrieve_password_bt})
    public void menuClick(View view) {
        if (view.getId() == R.id.login_login_bt) {
            String m1022transient = Cgoto.m1022transient(this.mAccountET);
            String m1022transient2 = Cgoto.m1022transient(this.mPasswordET);
            if (!TextUtils.isEmpty(m1022transient) && !TextUtils.isEmpty(m1022transient2)) {
                j(m1022transient, m1022transient2);
            } else {
                ToastUtils.show((int) R.string.login_account_pwd_failed_txt);
            }
        } else if (view.getId() == R.id.login_message_bt) {
            startActivityForResult(new Intent(this, MessageCodeLoginActivity.class), AdEventType.VIDEO_PAGE_CLOSE);
        } else if (view.getId() == R.id.login_register_bt) {
            startActivityForResult(new Intent(this, RegisterActivity.class), 301);
        } else if (view.getId() == R.id.login_auto_bt) {
            g5 g5Var = this.f6665do;
            if (g5Var != null) {
                g5Var.m942new(3, null, null, null, null);
            }
        } else if (view.getId() == R.id.login_retrieve_password_bt) {
            startActivity(new Intent(this, RetrievePasswordActivity.class));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 301 || i2 != -1) {
            if (i == 302 && i2 == -1) {
                finish();
                return;
            }
            return;
        }
        final String stringExtra = intent.getStringExtra("username");
        final String stringExtra2 = intent.getStringExtra("password");
        if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2)) {
            return;
        }
        this.mAccountET.setText(stringExtra);
        this.mAccountET.setSelection(stringExtra.length());
        this.mPasswordET.setText(stringExtra2);
        this.mPasswordET.setSelection(stringExtra2.length());
        postDelayed(new Runnable() { // from class: com.apk.o6
            @Override // java.lang.Runnable
            public final void run() {
                LoginActivity.this.j(stringExtra, stringExtra2);
            }
        }, 200L);
    }
}
