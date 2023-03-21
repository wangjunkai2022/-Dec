package com.biquge.ebook.app.ui.webread.ui;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.ui.webread.view.WebContentView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebReadActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebReadActivity f7837do;

    @UiThread
    public WebReadActivity_ViewBinding(WebReadActivity webReadActivity, View view) {
        this.f7837do = webReadActivity;
        webReadActivity.mWebContentView = (WebContentView) Utils.findRequiredViewAsType(view, R.id.popup_content_webview, "field 'mWebContentView'", WebContentView.class);
        webReadActivity.mAdViewBanner = (AdViewBanner) Utils.findRequiredViewAsType(view, R.id.adview_banner, "field 'mAdViewBanner'", AdViewBanner.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebReadActivity webReadActivity = this.f7837do;
        if (webReadActivity != null) {
            this.f7837do = null;
            webReadActivity.mWebContentView = null;
            webReadActivity.mAdViewBanner = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
