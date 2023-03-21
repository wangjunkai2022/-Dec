package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.apk.eg;
import com.apk.lq0;
import com.apk.p;
import com.apk.pc;
import com.apk.tr0;
import com.apk.ze;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.biquge.ebook.app.bean.NewVersionBean;
import com.lxj.xpopup.impl.FullScreenPopupView;
import java.io.File;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class AppUpgradePopupView extends FullScreenPopupView {

    /* renamed from: break  reason: not valid java name */
    public TextView f7641break;

    /* renamed from: catch  reason: not valid java name */
    public final Activity f7642catch;

    /* renamed from: class  reason: not valid java name */
    public final boolean f7643class;

    /* renamed from: const  reason: not valid java name */
    public final int f7644const;

    /* renamed from: else  reason: not valid java name */
    public TextView f7645else;

    /* renamed from: final  reason: not valid java name */
    public final NewVersionBean f7646final;

    /* renamed from: goto  reason: not valid java name */
    public TextView f7647goto;

    /* renamed from: super  reason: not valid java name */
    public String f7648super;

    /* renamed from: this  reason: not valid java name */
    public DownloadProgressButton f7649this;

    /* renamed from: throw  reason: not valid java name */
    public final bg f7650throw;

    /* renamed from: com.biquge.ebook.app.ui.view.AppUpgradePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.app_upgrade_cancel_btn) {
                AppUpgradePopupView.this.dismiss();
            } else if (view.getId() == R.id.app_upgrade_download_btn) {
                String file = AppUpgradePopupView.this.f7646final.getFile();
                if (!TextUtils.isEmpty(file) && !file.endsWith(".apk")) {
                    eg.m584abstract(AppUpgradePopupView.this.f7642catch, file);
                    return;
                }
                NewVersionBean newVersionBean = AppUpgradePopupView.this.f7646final;
                boolean z = false;
                if (newVersionBean != null && ze.G(newVersionBean.getAppid()) && AppUpgradePopupView.this.f7646final.getNewVersion() == ze.l(AppUpgradePopupView.this.f7646final.getAppid())) {
                    z = true;
                }
                if (z) {
                    AppUpgradePopupView appUpgradePopupView = AppUpgradePopupView.this;
                    ze.g0(appUpgradePopupView.f7642catch, appUpgradePopupView.f7646final.getAppid());
                } else if (!TextUtils.isEmpty(AppUpgradePopupView.this.f7648super) && new File(AppUpgradePopupView.this.f7648super).exists()) {
                    AppUpgradePopupView appUpgradePopupView2 = AppUpgradePopupView.this;
                    ze.z(appUpgradePopupView2.f7642catch, new File(appUpgradePopupView2.f7648super));
                } else {
                    p.m1990for().m1991else(AppUpgradePopupView.this.f7642catch);
                }
            }
        }
    }

    public AppUpgradePopupView(@NonNull Activity activity, NewVersionBean newVersionBean) {
        super(activity);
        this.f7650throw = new Cdo();
        this.f7642catch = activity;
        this.f7643class = newVersionBean.isForce_user();
        this.f7644const = newVersionBean.getXgDay_user();
        this.f7646final = newVersionBean;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.view_app_upgrade;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7645else = (TextView) findViewById(R.id.app_upgrade_desc_tv);
        this.f7647goto = (TextView) findViewById(R.id.app_upgrade_cancel_btn);
        this.f7641break = (TextView) findViewById(R.id.app_upgrade_download_status_tv);
        DownloadProgressButton downloadProgressButton = (DownloadProgressButton) findViewById(R.id.app_upgrade_download_btn);
        this.f7649this = downloadProgressButton;
        downloadProgressButton.setButtonRadius(25);
        this.f7649this.setBtnTextColor(ze.p(R.color.color_ffffff));
        this.f7649this.setBackgroundSecondColor(lq0.m1660do(getContext(), tr0.m2617do(R.color.half_colorPrimary_color)));
        this.f7649this.setmBackgroundColor(lq0.m1660do(getContext(), tr0.m2617do(R.color.colorAccent)));
        this.f7649this.setCurrentText(ze.q(R.string.main_update_txt));
        this.f7649this.setState(1);
        this.f7647goto.setOnClickListener(this.f7650throw);
        this.f7649this.setOnClickListener(this.f7650throw);
        NewVersionBean newVersionBean = this.f7646final;
        if (newVersionBean != null) {
            if (this.f7643class) {
                this.f7647goto.setVisibility(8);
                this.f7645else.setText(Html.fromHtml(this.f7646final.getTips2()));
            } else {
                String tips = newVersionBean.getTips();
                this.f7645else.setText(Html.fromHtml(tips.replace("{days}", this.f7644const + "")));
            }
            this.f7648super = p.m1990for().m1993new();
            m3394this(true);
            if (this.f7643class && TextUtils.isEmpty(this.f7648super)) {
                this.f7649this.post(new pc(this));
            }
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: this  reason: not valid java name */
    public final void m3394this(boolean z) {
        try {
            boolean z2 = true;
            boolean z3 = this.f7646final != null && ze.G(this.f7646final.getAppid()) && this.f7646final.getNewVersion() == ze.l(this.f7646final.getAppid());
            if (TextUtils.isEmpty(this.f7648super) || !new File(this.f7648super).exists()) {
                z2 = false;
            }
            if (z && this.f7645else != null) {
                StringBuilder sb = new StringBuilder();
                if (this.f7646final != null) {
                    sb.append((CharSequence) Html.fromHtml(this.f7646final.getTips2()));
                    sb.append(SimpleMultipartEntity.STR_CR_LF);
                }
                if (!z3 && z2) {
                    sb.append(SimpleMultipartEntity.STR_CR_LF);
                    sb.append(ze.q(R.string.app_speediness_install_txt));
                }
                this.f7645else.setText(sb.toString());
            }
            if (this.f7649this != null) {
                if (z3) {
                    this.f7649this.setCurrentText(ze.q(R.string.mgtg_two_btn_open_txt));
                } else if (z2) {
                    this.f7649this.setCurrentText(ze.q(R.string.main_install_txt));
                }
                this.f7649this.setState(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
