package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.bg;
import com.apk.eg;
import com.apk.lq0;
import com.apk.oc;
import com.apk.p;
import com.apk.tr0;
import com.apk.ze;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.biquge.ebook.app.bean.NewVersionBean;
import java.io.File;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AppUpgradeLayout extends FrameLayout {

    /* renamed from: break  reason: not valid java name */
    public final bg f7630break;

    /* renamed from: case  reason: not valid java name */
    public boolean f7631case;

    /* renamed from: do  reason: not valid java name */
    public TextView f7632do;

    /* renamed from: else  reason: not valid java name */
    public int f7633else;

    /* renamed from: for  reason: not valid java name */
    public DownloadProgressButton f7634for;

    /* renamed from: goto  reason: not valid java name */
    public NewVersionBean f7635goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f7636if;

    /* renamed from: new  reason: not valid java name */
    public TextView f7637new;

    /* renamed from: this  reason: not valid java name */
    public String f7638this;

    /* renamed from: try  reason: not valid java name */
    public Activity f7639try;

    /* renamed from: com.biquge.ebook.app.ui.view.AppUpgradeLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            Activity activity;
            if (view.getId() == R.id.app_upgrade_cancel_btn) {
                AppUpgradeLayout.this.setVisibility(8);
            } else if (view.getId() == R.id.app_upgrade_download_btn) {
                String file = AppUpgradeLayout.this.f7635goto.getFile();
                if (!TextUtils.isEmpty(file) && !file.endsWith(".apk")) {
                    eg.m584abstract(AppUpgradeLayout.this.f7639try, file);
                    return;
                }
                NewVersionBean newVersionBean = AppUpgradeLayout.this.f7635goto;
                boolean z = false;
                if (newVersionBean != null && ze.G(newVersionBean.getAppid()) && AppUpgradeLayout.this.f7635goto.getNewVersion() == ze.l(AppUpgradeLayout.this.f7635goto.getAppid())) {
                    z = true;
                }
                if (z) {
                    AppUpgradeLayout appUpgradeLayout = AppUpgradeLayout.this;
                    ze.g0(appUpgradeLayout.f7639try, appUpgradeLayout.f7635goto.getAppid());
                } else if (!TextUtils.isEmpty(AppUpgradeLayout.this.f7638this) && new File(AppUpgradeLayout.this.f7638this).exists()) {
                    AppUpgradeLayout appUpgradeLayout2 = AppUpgradeLayout.this;
                    ze.z(appUpgradeLayout2.f7639try, new File(appUpgradeLayout2.f7638this));
                } else {
                    p.m1990for().m1991else(AppUpgradeLayout.this.f7639try);
                }
            } else if (view.getId() != R.id.app_upgrade_close_btn || (activity = AppUpgradeLayout.this.f7639try) == null) {
            } else {
                activity.finish();
            }
        }
    }

    public AppUpgradeLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7630break = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.view_app_upgrade, this);
        setOnClickListener(null);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3389do(File file) {
        this.f7638this = file.getPath();
        m3393try(false);
        TextView textView = this.f7637new;
        if (textView == null || textView.getVisibility() == 4) {
            return;
        }
        this.f7637new.setVisibility(4);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3390for() {
        DownloadProgressButton downloadProgressButton = this.f7634for;
        if (downloadProgressButton != null) {
            downloadProgressButton.setCurrentText(ze.q(R.string.tips_reload_txt));
        }
        TextView textView = this.f7637new;
        if (textView == null || textView.getVisibility() == 4) {
            return;
        }
        this.f7637new.setVisibility(4);
    }

    /* renamed from: if  reason: not valid java name */
    public void m3391if(long j, long j2) {
        DownloadProgressButton downloadProgressButton = this.f7634for;
        if (downloadProgressButton != null) {
            downloadProgressButton.setCurrentText(ze.m3182return(j, j2));
            this.f7634for.setState(1);
            this.f7634for.setMaxProgress((int) j2);
            this.f7634for.setProgress((float) j);
        }
        TextView textView = this.f7637new;
        if (textView == null || textView.getVisibility() == 0) {
            return;
        }
        this.f7637new.setVisibility(0);
    }

    /* renamed from: new  reason: not valid java name */
    public void m3392new(@NonNull Activity activity, NewVersionBean newVersionBean, boolean z) {
        this.f7639try = activity;
        this.f7631case = newVersionBean.isForce_user();
        this.f7633else = newVersionBean.getXgDay_user();
        this.f7635goto = newVersionBean;
        this.f7632do = (TextView) findViewById(R.id.app_upgrade_desc_tv);
        this.f7636if = (TextView) findViewById(R.id.app_upgrade_cancel_btn);
        this.f7637new = (TextView) findViewById(R.id.app_upgrade_download_status_tv);
        DownloadProgressButton downloadProgressButton = (DownloadProgressButton) findViewById(R.id.app_upgrade_download_btn);
        this.f7634for = downloadProgressButton;
        downloadProgressButton.setButtonRadius(25);
        this.f7634for.setBtnTextColor(ze.p(R.color.color_ffffff));
        this.f7634for.setBackgroundSecondColor(lq0.m1660do(getContext(), tr0.m2617do(R.color.half_colorPrimary_color)));
        this.f7634for.setmBackgroundColor(lq0.m1660do(getContext(), tr0.m2617do(R.color.colorAccent)));
        this.f7634for.setCurrentText(ze.q(R.string.main_update_txt));
        this.f7634for.setState(1);
        this.f7636if.setOnClickListener(this.f7630break);
        this.f7634for.setOnClickListener(this.f7630break);
        NewVersionBean newVersionBean2 = this.f7635goto;
        if (newVersionBean2 != null) {
            if (this.f7631case) {
                this.f7636if.setVisibility(8);
                this.f7632do.setText(Html.fromHtml(this.f7635goto.getTips2()));
            } else {
                String tips = newVersionBean2.getTips();
                this.f7632do.setText(Html.fromHtml(tips.replace("{days}", this.f7633else + "")));
            }
            this.f7638this = p.m1990for().m1993new();
            m3393try(true);
            if (this.f7631case && TextUtils.isEmpty(this.f7638this)) {
                this.f7634for.post(new oc(this));
            }
        }
        if (z) {
            findViewById(R.id.app_upgrade_close_layout).setVisibility(0);
            findViewById(R.id.app_upgrade_close_btn).setOnClickListener(this.f7630break);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3393try(boolean z) {
        try {
            boolean z2 = true;
            boolean z3 = this.f7635goto != null && ze.G(this.f7635goto.getAppid()) && this.f7635goto.getNewVersion() == ze.l(this.f7635goto.getAppid());
            if (TextUtils.isEmpty(this.f7638this) || !new File(this.f7638this).exists()) {
                z2 = false;
            }
            if (z && this.f7632do != null) {
                StringBuilder sb = new StringBuilder();
                if (this.f7635goto != null) {
                    sb.append((CharSequence) Html.fromHtml(this.f7635goto.getTips2()));
                    sb.append(SimpleMultipartEntity.STR_CR_LF);
                }
                if (!z3 && z2) {
                    sb.append(SimpleMultipartEntity.STR_CR_LF);
                    sb.append(ze.q(R.string.app_speediness_install_txt));
                }
                this.f7632do.setText(sb.toString());
            }
            if (this.f7634for != null) {
                if (z3) {
                    this.f7634for.setCurrentText(ze.q(R.string.mgtg_two_btn_open_txt));
                } else if (z2) {
                    this.f7634for.setCurrentText(ze.q(R.string.main_install_txt));
                }
                this.f7634for.setState(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
