package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegate;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.da;
import com.apk.f6;
import com.apk.ft;
import com.apk.hf;
import com.apk.k8;
import com.apk.l8;
import com.apk.lv;
import com.apk.m8;
import com.apk.mu;
import com.apk.n2;
import com.apk.n8;
import com.apk.o;
import com.apk.o8;
import com.apk.p;
import com.apk.rz;
import com.apk.tt;
import com.apk.w0;
import com.apk.x6;
import com.apk.yp0;
import com.apk.yv;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.NewVersionBean;
import com.biquge.ebook.app.bean.SkinModel;
import com.biquge.ebook.app.ui.view.AppUpgradePopupView;
import com.biquge.ebook.app.ui.view.DownloadProgressButton;
import com.biquge.ebook.app.widget.SwitchButton;
import com.biquge.ebook.app.widget.SwitchNightRelativeLayout;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.umeng.analytics.pro.ak;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SetActivity extends f6 implements SwitchButton.Cnew, p.Cnew, rz {

    /* renamed from: new  reason: not valid java name */
    public static final long[] f6784new = new long[5];

    /* renamed from: do  reason: not valid java name */
    public SwitchNightRelativeLayout f6785do;

    /* renamed from: for  reason: not valid java name */
    public AppUpgradePopupView f6786for;

    /* renamed from: if  reason: not valid java name */
    public boolean f6787if;
    @BindView(R.id.set_disk_cache_size_txt)
    public TextView mBookCacheSizeTxt;
    @BindView(R.id.set_disk_comic_cache_size_txt)
    public TextView mComicCacheSizeTxt;
    @BindView(R.id.function_navigation_mode)
    public TextView mNightDayTView;

    /* renamed from: com.biquge.ebook.app.ui.activity.SetActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {
        public Cdo() {
        }

        @Override // com.apk.ft
        public void onClick() {
            SetActivity.i(SetActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.SetActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ft {
        public Cfor() {
        }

        @Override // com.apk.ft
        public void onClick() {
            SetActivity.k(SetActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.SetActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ft {
        public Cif() {
        }

        @Override // com.apk.ft
        public void onClick() {
            SetActivity.j(SetActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.SetActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends yv {
        public Cnew() {
        }

        @Override // com.apk.yv
        /* renamed from: for */
        public void mo397for(BasePopupView basePopupView) {
            SetActivity.this.f6786for = null;
        }
    }

    public static void i(SetActivity setActivity) {
        if (setActivity == null) {
            throw null;
        }
        new b1().m141do(new m8(setActivity));
    }

    public static void j(SetActivity setActivity) {
        if (setActivity == null) {
            throw null;
        }
        new b1().m141do(new n8(setActivity));
    }

    public static void k(SetActivity setActivity) {
        if (setActivity == null) {
            throw null;
        }
        new b1().m141do(new o8(setActivity));
    }

    public static void l(SetActivity setActivity) {
        if (setActivity != null) {
            o m1921for = o.m1921for();
            x6 x6Var = new x6(setActivity);
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(x6Var);
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.p.Cnew
    public void a(File file) {
        AppUpgradePopupView appUpgradePopupView = this.f6786for;
        if (appUpgradePopupView != null) {
            appUpgradePopupView.f7648super = file.getPath();
            appUpgradePopupView.m3394this(false);
            TextView textView = appUpgradePopupView.f7641break;
            if (textView == null || textView.getVisibility() == 4) {
                return;
            }
            appUpgradePopupView.f7641break.setVisibility(4);
        }
    }

    @Override // com.apk.p.Cnew
    /* renamed from: for */
    public void mo153for() {
        hideBaseLoading();
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_set;
    }

    @Override // com.apk.p.Cnew
    /* renamed from: goto */
    public void mo154goto() {
        showBaseLoading();
    }

    @Override // com.apk.p.Cnew
    public void h() {
        AppUpgradePopupView appUpgradePopupView = this.f6786for;
        if (appUpgradePopupView != null) {
            appUpgradePopupView.dismiss();
        }
    }

    @Override // com.apk.f6
    public void initData() {
        m(da.m438while());
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.set_actionbar, R.string.setting_title_txt);
        StringBuilder m1016super = Cgoto.m1016super(ak.aE);
        m1016super.append(ze.m());
        ((TextView) findViewById(R.id.set_soft_version_txt)).setText(m1016super.toString());
        if (Build.VERSION.SDK_INT <= 28) {
            findViewById(R.id.activity_dark_theme_mode_layout).setVisibility(8);
        } else {
            SwitchButton switchButton = (SwitchButton) findViewById(R.id.cb_dark_theme_mode);
            switchButton.setChecked(ze.m3179private("SP_APP_DARK_THEME_SWITCH_KEY", true));
            switchButton.setOnCheckedChangeListener(this);
        }
        o m1921for = o.m1921for();
        x6 x6Var = new x6(this);
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(x6Var);
        }
        if (Ccontinue.m379if().f729while == hf.BOOK) {
            findViewById(R.id.clear_disk_comic_cache_layout).setVisibility(8);
        } else if (Ccontinue.m379if().f729while == hf.COMIC) {
            findViewById(R.id.clear_disk_cache_layout).setVisibility(8);
        }
    }

    @Override // com.apk.p.Cnew
    /* renamed from: instanceof */
    public void mo155instanceof() {
        AppUpgradePopupView appUpgradePopupView = this.f6786for;
        if (appUpgradePopupView != null) {
            DownloadProgressButton downloadProgressButton = appUpgradePopupView.f7649this;
            if (downloadProgressButton != null) {
                downloadProgressButton.setCurrentText(ze.q(R.string.tips_reload_txt));
            }
            TextView textView = appUpgradePopupView.f7641break;
            if (textView == null || textView.getVisibility() == 4) {
                return;
            }
            appUpgradePopupView.f7641break.setVisibility(4);
        }
    }

    public final void m(boolean z) {
        this.mNightDayTView.setText(z ? ze.q(R.string.app_model_day_txt) : ze.q(R.string.app_model_night_txt));
        this.mNightDayTView.setCompoundDrawablesWithIntrinsicBounds(z ? R.drawable.lm_day : R.drawable.lm_night, 0, R.drawable.sjxq_right_arrow, 0);
    }

    @OnClick({R.id.function_navigation_feedback, R.id.set_disclaimer_layout, R.id.set_about_layout, R.id.set_checknew_layout, R.id.clear_disk_cache_layout, R.id.clear_disk_comic_cache_layout, R.id.clear_other_cache_layout, R.id.activity_public_title_txt, R.id.set_menu_skin_layout, R.id.function_navigation_mode})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.activity_public_title_txt /* 2131296386 */:
                long[] jArr = f6784new;
                System.arraycopy(jArr, 1, jArr, 0, jArr.length - 1);
                long[] jArr2 = f6784new;
                jArr2[jArr2.length - 1] = SystemClock.uptimeMillis();
                if (SystemClock.uptimeMillis() - f6784new[0] > 1000 || this.f6787if) {
                    return;
                }
                this.f6787if = true;
                startActivityForResult(new Intent(this, DeviceActivity.class), 1192);
                return;
            case R.id.clear_disk_cache_layout /* 2131296600 */:
                showTipDialog(this, ze.q(R.string.tips_id_local_clear_txt), new Cdo());
                return;
            case R.id.clear_disk_comic_cache_layout /* 2131296601 */:
                showTipDialog(this, ze.q(R.string.tips_id_comic_clear_txt), new Cif());
                return;
            case R.id.clear_other_cache_layout /* 2131296602 */:
                showTipDialog(this, ze.q(R.string.tips_id_local_clear_other_cache_txt), new Cfor());
                return;
            case R.id.function_navigation_feedback /* 2131296853 */:
                w0.m2867case(this, hf.BOOK, ze.q(R.string.main_send_message_app_txt));
                return;
            case R.id.function_navigation_mode /* 2131296854 */:
                boolean m438while = da.m438while();
                if (this.f6785do == null) {
                    this.f6785do = (SwitchNightRelativeLayout) ((ViewStub) findViewById(R.id.rl_switch_night)).inflate();
                }
                if (m438while) {
                    this.f6785do.m3521for(8, true);
                    int m3174instanceof = ze.m3174instanceof("APP_SKIN_STYLE_KEY", 0);
                    if (m3174instanceof == 0) {
                        yp0.f6038class.m3110for("", null, -1);
                    } else {
                        SkinModel skinModel = (SkinModel) ((ArrayList) ze.i()).get(m3174instanceof);
                        if (skinModel != null) {
                            yp0.f6038class.m3111if(skinModel.getTag(), 1);
                        }
                    }
                    AppContext.f6392case.m3293for(false);
                } else {
                    yp0.f6038class.m3110for("night", new l8(this, m438while), 1);
                }
                m(!m438while);
                da.m422finally(!m438while);
                return;
            case R.id.set_about_layout /* 2131297476 */:
                startActivity(new Intent(this, AbountActivity.class));
                return;
            case R.id.set_checknew_layout /* 2131297478 */:
                p m1990for = p.m1990for();
                m1990for.f3535try = this;
                m1990for.m1992if(true);
                return;
            case R.id.set_disclaimer_layout /* 2131297480 */:
                startActivity(new Intent(this, DisclaimerActivity.class));
                return;
            case R.id.set_menu_skin_layout /* 2131297484 */:
                startActivityForResult(new Intent(this, SkinActivity.class), 101);
                return;
            default:
                return;
        }
    }

    public /* synthetic */ void n() {
        long j = 0;
        try {
            List<CollectBook> m1826instanceof = n2.m1826instanceof();
            if (m1826instanceof != null && m1826instanceof.size() > 0) {
                for (CollectBook collectBook : m1826instanceof) {
                    if (!collectBook.isLocalBook()) {
                        j += ze.m3178package(collectBook.getCollectId());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        runOnUiThread(new k8(this, ze.m3190throws(j), mu.m1784switch(this)));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1192) {
            this.f6787if = false;
        } else if (i == 101) {
            m(da.m438while());
        }
    }

    @Override // com.biquge.ebook.app.widget.SwitchButton.Cnew
    public void onCheckedChanged(SwitchButton switchButton, boolean z) {
        if (switchButton.getId() == R.id.cb_dark_theme_mode) {
            tt.f4763do.putBoolean("SP_APP_DARK_THEME_SWITCH_KEY", z);
            if (z) {
                AppCompatDelegate.setDefaultNightMode(-1);
                if (ze.m3175interface(true)) {
                    yp0.f6038class.m3110for("night", null, 1);
                    da.m422finally(true);
                    AppContext.f6392case.m3293for(true);
                    return;
                }
                return;
            }
            AppCompatDelegate.setDefaultNightMode(1);
            String tag = ((SkinModel) ((ArrayList) ze.i()).get(ze.m3174instanceof("APP_SKIN_STYLE_KEY", 0))).getTag();
            if (TextUtils.isEmpty(tag)) {
                return;
            }
            yp0.f6038class.m3111if(tag, 1);
            da.m422finally(false);
            AppContext.f6392case.m3293for("black".equals(tag));
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        p.m1990for().f3535try = null;
    }

    @Override // com.apk.p.Cnew
    public void onProgress(long j, long j2) {
        AppUpgradePopupView appUpgradePopupView = this.f6786for;
        if (appUpgradePopupView != null) {
            DownloadProgressButton downloadProgressButton = appUpgradePopupView.f7649this;
            if (downloadProgressButton != null) {
                downloadProgressButton.setCurrentText(ze.m3182return(j, j2));
                appUpgradePopupView.f7649this.setState(1);
                appUpgradePopupView.f7649this.setMaxProgress((int) j2);
                appUpgradePopupView.f7649this.setProgress((float) j);
            }
            TextView textView = appUpgradePopupView.f7641break;
            if (textView == null || textView.getVisibility() == 0) {
                return;
            }
            appUpgradePopupView.f7641break.setVisibility(0);
        }
    }

    @Override // com.apk.p.Cnew
    /* renamed from: static */
    public void mo156static(NewVersionBean newVersionBean) {
        if (newVersionBean != null) {
            this.f6786for = new AppUpgradePopupView(this, newVersionBean);
            lv lvVar = new lv();
            lvVar.f2926if = Boolean.FALSE;
            lvVar.f2941throw = new Cnew();
            lvVar.f2924for = Boolean.valueOf(!newVersionBean.isForce_user());
            AppUpgradePopupView appUpgradePopupView = this.f6786for;
            if (appUpgradePopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (appUpgradePopupView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (appUpgradePopupView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (appUpgradePopupView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (appUpgradePopupView instanceof PositionPopupView) {
                lvVar.f2917continue = zu.f6266try;
            }
            appUpgradePopupView.popupInfo = lvVar;
            appUpgradePopupView.show();
        }
    }
}
