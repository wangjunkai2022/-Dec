package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompatJellybean;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.a6;
import com.apk.b5;
import com.apk.c5;
import com.apk.c8;
import com.apk.d8;
import com.apk.dt;
import com.apk.e8;
import com.apk.eg;
import com.apk.f6;
import com.apk.ft;
import com.apk.g5;
import com.apk.gf;
import com.apk.mf;
import com.apk.tt;
import com.apk.u;
import com.apk.v0;
import com.apk.w0;
import com.apk.wu;
import com.apk.yu;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.User;
import com.biquge.ebook.app.widget.CircleImageView;
import com.hjq.toast.ToastUtils;
import java.io.File;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class MyAccountActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6713do;

    /* renamed from: if  reason: not valid java name */
    public File f6714if;
    @BindView(R.id.my_account_comple_email_txt)
    public TextView mBandUserInfoTxt;
    @BindView(R.id.my_account_phone_title_txt)
    public TextView mCompleInfoTitleTxt;
    @BindView(R.id.fragment_info_email)
    public TextView mEmailTv;
    @BindView(R.id.fragment_info_headicon_login)
    public CircleImageView mHeadView;
    @BindView(R.id.fragment_info_loginname_login)
    public TextView mLoginNameTView;
    @BindView(R.id.fragment_info_nickname)
    public TextView mNickNameTView;
    @BindView(R.id.my_account_phone_txt)
    public TextView mPhoneTxt;
    @BindView(R.id.my_account_reset_pwd_btn)
    public TextView mUpdatePasswordBtn;
    @BindView(R.id.my_account_reset_pwd_title_txt)
    public TextView mUpdatePasswordTitleTv;

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {
        public Cdo() {
        }

        @Override // com.apk.ft
        public void onClick() {
            ze.N(MyAccountActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements dt {
        public Cif() {
        }

        @Override // com.apk.dt
        public void onClick() {
            MyAccountActivity.this.o();
        }
    }

    public static void j(MyAccountActivity myAccountActivity) {
        if (myAccountActivity != null) {
            yu yuVar = new yu(myAccountActivity);
            yuVar.m3120if(wu.f5403do);
            yuVar.m3119for(new d8(myAccountActivity));
            return;
        }
        throw null;
    }

    public static void k(MyAccountActivity myAccountActivity) {
        if (myAccountActivity != null) {
            yu yuVar = new yu(myAccountActivity);
            yuVar.m3120if("android.permission.CAMERA");
            yuVar.m3119for(new e8(myAccountActivity));
            return;
        }
        throw null;
    }

    public static void l(MyAccountActivity myAccountActivity) {
        if (myAccountActivity != null) {
            myAccountActivity.startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
            return;
        }
        throw null;
    }

    public static void m(MyAccountActivity myAccountActivity) {
        if (myAccountActivity != null) {
            try {
                a6 m18else = a6.m18else();
                if (m18else.f39new == null) {
                    m18else.f39new = m18else.m21goto("image");
                }
                String str = m18else.f39new;
                if (TextUtils.isEmpty(str)) {
                    str = "";
                } else {
                    File file = new File(str);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                }
                myAccountActivity.f6714if = new File(str, System.currentTimeMillis() + ".jpg");
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if (Build.VERSION.SDK_INT >= 24) {
                    intent.putExtra("output", FileProvider.getUriForFile(myAccountActivity, myAccountActivity.getPackageName() + ".fileprovider", myAccountActivity.f6714if));
                } else {
                    intent.putExtra("output", Uri.fromFile(myAccountActivity.f6714if));
                }
                myAccountActivity.startActivityForResult(intent, 0);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_my_account_layout;
    }

    @Override // com.apk.f6
    public void initData() {
        if (w0.m2881import()) {
            this.mHeadView.setImageResource(R.drawable.man);
        } else {
            this.mHeadView.setImageResource(R.drawable.woman);
        }
        n();
        p();
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.my_account_actionbar, R.string.my_account_title_txt);
        if ((Ccontinue.m379if().f711do == gf.TUIGUANG) || Ccontinue.m379if().m381else()) {
            findViewById(R.id.my_account_security_center_layout).setVisibility(8);
        }
        registerEventBus(this);
    }

    @OnClick({R.id.my_account_band_email_layout, R.id.my_account_reset_pwd_layout, R.id.fragment_info_headicon_login_layout, R.id.my_account_loginout_layout, R.id.my_account_security_center_layout, R.id.fragment_info_nickname_login_layout})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.fragment_info_headicon_login_layout /* 2131296815 */:
                new zu.Cdo(this).m3253do(null, new String[]{ze.q(R.string.setinfo_photo_type_images)}, new c8(this)).show();
                return;
            case R.id.fragment_info_nickname_login_layout /* 2131296819 */:
                if (ze.m3179private("SP_USER_AUDIT_NICKNAME_KEY", false)) {
                    ToastUtils.show((int) R.string.set_nickname_update_success_txt);
                    return;
                } else {
                    startActivityForResult(new Intent(this, SetNickNameActivity.class), 102);
                    return;
                }
            case R.id.my_account_band_email_layout /* 2131297215 */:
                if (!v0.m2736try().m2740class()) {
                    CompleteInfoActivity.j(this);
                    return;
                } else {
                    startActivity(new Intent(this, ChangePhoneActivity.class));
                    return;
                }
            case R.id.my_account_loginout_layout /* 2131297217 */:
                if (!v0.m2736try().m2739catch()) {
                    eg.k(this, null, ze.q(R.string.logout_comple_password_tips_txt), ze.q(R.string.user_set_password), new Cdo(), new Cif(), null, false);
                    return;
                } else {
                    o();
                    return;
                }
            case R.id.my_account_reset_pwd_layout /* 2131297222 */:
                Intent intent = new Intent(this, ForgetPasswordActivity.class);
                if (!TextUtils.isEmpty(null)) {
                    intent.putExtra(NotificationCompatJellybean.KEY_TITLE, (String) null);
                }
                startActivity(intent);
                return;
            case R.id.my_account_security_center_layout /* 2131297224 */:
                startActivity(new Intent(this, SecurityCenterActivity.class));
                return;
            default:
                return;
        }
    }

    public final void n() {
        User m2743else = v0.m2736try().m2743else();
        if (m2743else != null) {
            this.mLoginNameTView.setText(v0.m2736try().m2747new());
            this.mPhoneTxt.setText(v0.m2736try().m2745for(m2743else.getPhone()));
            this.mNickNameTView.setText(m2743else.getNickName());
            if (!TextUtils.isEmpty(m2743else.getEmail())) {
                this.mEmailTv.setText(m2743else.getEmail());
                findViewById(R.id.fragment_info_email_lineview).setVisibility(0);
                findViewById(R.id.fragment_info_email_layout).setVisibility(0);
            }
        }
        if (!v0.m2736try().m2740class()) {
            this.mCompleInfoTitleTxt.setText(ze.q(R.string.user_comple_email_txt));
            this.mBandUserInfoTxt.setText(ze.q(R.string.user_comple_info_no_band_txt));
        } else {
            this.mCompleInfoTitleTxt.setText(ze.q(R.string.user_phone_change_bangding_txt));
            this.mBandUserInfoTxt.setText(this.mPhoneTxt.getText().toString());
            this.mPhoneTxt.setVisibility(4);
        }
        if (!v0.m2736try().m2739catch()) {
            this.mUpdatePasswordTitleTv.setText(ze.q(R.string.user_set_one_password));
            this.mUpdatePasswordBtn.setVisibility(0);
            return;
        }
        this.mUpdatePasswordTitleTv.setText(ze.q(R.string.user_update_password));
        this.mUpdatePasswordBtn.setVisibility(4);
    }

    public final void o() {
        if (this.f6713do == null) {
            this.f6713do = new g5(this, null);
        }
        g5 g5Var = this.f6713do;
        if (g5Var != null) {
            try {
                zu.Cdo cdo = new zu.Cdo(g5Var.f3559do);
                cdo.f6267do.f2941throw = new c5(g5Var);
                g5Var.f1509new = cdo.m3254else(ze.q(R.string.tips_tip_title_txt), ze.q(R.string.main_is_logout_txt), new b5(g5Var), null, R.layout.dialog_logout_layout).show();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        Uri fromFile;
        super.onActivityResult(i, i2, intent);
        if (i == 102 && i2 == -1) {
            n();
        } else if (i == 0 && i2 == -1) {
            File file = this.f6714if;
            if (file == null || !file.exists() || (fromFile = Uri.fromFile(this.f6714if)) == null) {
                return;
            }
            Intent intent2 = new Intent();
            intent2.setClass(this, ClipImageActivity.class);
            intent2.setData(fromFile);
            startActivityForResult(intent2, 1102);
        } else if (i != 1) {
            if (i == 1102 && i2 == -1) {
                p();
            }
        } else if (intent == null || (data = intent.getData()) == null) {
        } else {
            Intent intent3 = new Intent();
            intent3.setClass(this, ClipImageActivity.class);
            intent3.setData(data);
            startActivityForResult(intent3, 1102);
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        String str = mfVar.f3028do;
        if ("login_action".equals(str)) {
            if (!v0.m2736try().m2741const()) {
                finish();
            } else {
                n();
            }
        } else if ("EVENT_COMPLE_USERINFO_KEY".equals(str)) {
            n();
        }
    }

    public final void p() {
        if (this.mHeadView != null) {
            String m2620do = tt.m2620do("SP_SAVE_USER_HEADICON_KEY", "");
            if (TextUtils.isEmpty(m2620do)) {
                return;
            }
            u.m2660throws(m2620do, this.mHeadView);
        }
    }
}
