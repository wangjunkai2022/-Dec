package com.biquge.ebook.app.ui.activity;

import butterknife.OnClick;
import com.apk.d5;
import com.apk.f6;
import com.apk.g5;
import com.apk.mf;
import com.apk.v0;
import com.apk.ze;
import com.apk.zu;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class SecurityCenterActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public g5 f6772do;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_security_center;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_security_center_actionbar, R.string.set_security_center);
        registerEventBus(this);
    }

    @OnClick({R.id.my_account_remove_account_layout})
    public void menuClick() {
        if (this.f6772do == null) {
            this.f6772do = new g5(this, null);
        }
        g5 g5Var = this.f6772do;
        if (g5Var != null) {
            try {
                g5Var.f1509new = new zu.Cdo(g5Var.f3559do).m3249case(ze.q(R.string.tips_tip_title_txt), ze.q(R.string.main_is_remove_account_txt), new d5(g5Var), null).show();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if (!"login_action".equals(mfVar.f3028do) || v0.m2736try().m2741const()) {
            return;
        }
        finish();
    }
}
