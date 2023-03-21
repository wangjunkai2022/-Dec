package com.biquge.ebook.app.ui.webread.ui;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.browse.IndeterminateProgressBar;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.google.android.material.appbar.AppBarLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebSiteSearchFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebSiteSearchFragment f7855do;

    @UiThread
    public WebSiteSearchFragment_ViewBinding(WebSiteSearchFragment webSiteSearchFragment, View view) {
        this.f7855do = webSiteSearchFragment;
        webSiteSearchFragment.mAppBarLayout = (AppBarLayout) Utils.findRequiredViewAsType(view, R.id.web_search_top_appbarlayout, "field 'mAppBarLayout'", AppBarLayout.class);
        webSiteSearchFragment.mIndeterminateView = (IndeterminateProgressBar) Utils.findRequiredViewAsType(view, R.id.web_search_site_indeterminate_loading, "field 'mIndeterminateView'", IndeterminateProgressBar.class);
        webSiteSearchFragment.mPlatfromTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.web_search_platfrom_title_tv, "field 'mPlatfromTitleTv'", TextView.class);
        webSiteSearchFragment.mWebView = (ProgressBarWebView) Utils.findRequiredViewAsType(view, R.id.activity_website_webview, "field 'mWebView'", ProgressBarWebView.class);
        webSiteSearchFragment.mBgView = Utils.findRequiredView(view, R.id.activity_website_bgview, "field 'mBgView'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebSiteSearchFragment webSiteSearchFragment = this.f7855do;
        if (webSiteSearchFragment != null) {
            this.f7855do = null;
            webSiteSearchFragment.mAppBarLayout = null;
            webSiteSearchFragment.mIndeterminateView = null;
            webSiteSearchFragment.mPlatfromTitleTv = null;
            webSiteSearchFragment.mWebView = null;
            webSiteSearchFragment.mBgView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
