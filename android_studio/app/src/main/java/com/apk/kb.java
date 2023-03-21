package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.ExternalWebSite;
import com.biquge.ebook.app.ui.fragment.ExternalSearchFragment;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;

/* compiled from: ExternalSearchFragment.java */
/* loaded from: classes8.dex */
public class kb extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ExternalWebSite.WebSiteBean f2498do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ExternalSearchFragment f2499if;

    public kb(ExternalSearchFragment externalSearchFragment, ExternalWebSite.WebSiteBean webSiteBean) {
        this.f2499if = externalSearchFragment;
        this.f2498do = webSiteBean;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        p0.m2011super("SP_WEB_TO_RED_KEY", this.f2498do.getName());
        WebReadActivity.k(this.f2499if.getSupportActivity(), this.f2498do.getUrl(), true, false, !this.f2498do.isRuleSite(), this.f2498do.getName());
    }
}
