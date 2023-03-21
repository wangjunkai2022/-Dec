package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.view.ConfigImagePopupView;
import com.swl.gg.ggs.SwlAdHelper;
/* compiled from: ConfigImagePopupView.java */
/* loaded from: classes8.dex */
public class sc extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ConfigImagePopupView f4321do;

    public sc(ConfigImagePopupView configImagePopupView) {
        this.f4321do = configImagePopupView;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        String landingtype = this.f4321do.f7660do.getLandingtype();
        String navtitle = this.f4321do.f7660do.getNavtitle();
        SwlAdHelper.setAdClick(this.f4321do.getContext(), landingtype, this.f4321do.f7660do.getClicktarget(), navtitle);
        ConfigImagePopupView configImagePopupView = this.f4321do;
        if (configImagePopupView.f7662if) {
            return;
        }
        configImagePopupView.dismiss();
    }
}
