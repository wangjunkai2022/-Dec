package com.apk;

import android.view.ViewStub;
import com.apk.p;
import com.biquge.ebook.app.bean.NewVersionBean;
import com.biquge.ebook.app.ui.fragment.HomeFragment;
import com.biquge.ebook.app.ui.view.AppUpgradeLayout;
import java.io.File;
import kimi.wuhends.ebooks.R;
/* compiled from: HomeFragment.java */
/* loaded from: classes8.dex */
public class pb implements p.Cnew {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ HomeFragment f3599do;

    public pb(HomeFragment homeFragment) {
        this.f3599do = homeFragment;
    }

    @Override // com.apk.p.Cnew
    public void a(File file) {
        AppUpgradeLayout appUpgradeLayout = this.f3599do.f7468for;
        if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
            return;
        }
        this.f3599do.f7468for.m3389do(file);
    }

    @Override // com.apk.p.Cnew
    /* renamed from: for */
    public void mo153for() {
    }

    @Override // com.apk.p.Cnew
    /* renamed from: goto */
    public void mo154goto() {
    }

    @Override // com.apk.p.Cnew
    public void h() {
        AppUpgradeLayout appUpgradeLayout = this.f3599do.f7468for;
        if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
            return;
        }
        this.f3599do.f7468for.setVisibility(8);
    }

    @Override // com.apk.p.Cnew
    /* renamed from: instanceof */
    public void mo155instanceof() {
        AppUpgradeLayout appUpgradeLayout = this.f3599do.f7468for;
        if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
            return;
        }
        this.f3599do.f7468for.m3390for();
    }

    @Override // com.apk.p.Cnew
    public void onProgress(long j, long j2) {
        AppUpgradeLayout appUpgradeLayout = this.f3599do.f7468for;
        if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
            return;
        }
        this.f3599do.f7468for.m3391if(j, j2);
    }

    @Override // com.apk.p.Cnew
    /* renamed from: static */
    public void mo156static(NewVersionBean newVersionBean) {
        if (newVersionBean != null) {
            try {
                if (this.f3599do.f7468for == null) {
                    this.f3599do.f7468for = (AppUpgradeLayout) ((ViewStub) this.f3599do.findViewById(R.id.home_app_upgrade_layout)).inflate();
                }
                if (this.f3599do.f7468for == null || this.f3599do.f7468for.getVisibility() != 0) {
                    return;
                }
                this.f3599do.f7468for.m3392new(this.f3599do.getSupportActivity(), newVersionBean, false);
            } catch (Exception unused) {
            }
        }
    }
}
