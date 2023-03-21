package com.biquge.ebook.app.ui.webread.view;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ui.view.SlideRecyclerView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebSearchResultLayout_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebSearchResultLayout f7973do;

    /* renamed from: for  reason: not valid java name */
    public View f7974for;

    /* renamed from: if  reason: not valid java name */
    public View f7975if;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebSearchResultLayout f7976do;

        public Cdo(WebSearchResultLayout_ViewBinding webSearchResultLayout_ViewBinding, WebSearchResultLayout webSearchResultLayout) {
            this.f7976do = webSearchResultLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7976do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebSearchResultLayout f7977do;

        public Cif(WebSearchResultLayout_ViewBinding webSearchResultLayout_ViewBinding, WebSearchResultLayout webSearchResultLayout) {
            this.f7977do = webSearchResultLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7977do.menuClick(view);
        }
    }

    @UiThread
    public WebSearchResultLayout_ViewBinding(WebSearchResultLayout webSearchResultLayout, View view) {
        this.f7973do = webSearchResultLayout;
        webSearchResultLayout.mIndicator = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.webread_indicator, "field 'mIndicator'", ScrollIndicatorView.class);
        webSearchResultLayout.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.webread_viewpager, "field 'mViewPager'", SViewPager.class);
        webSearchResultLayout.mBgView = Utils.findRequiredView(view, R.id.dialog_website_bg, "field 'mBgView'");
        webSearchResultLayout.mWebSiteLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_webread_site_layout, "field 'mWebSiteLayout'", LinearLayout.class);
        webSearchResultLayout.mPlatformIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.web_search_platfrom_icon, "field 'mPlatformIcon'", ImageView.class);
        webSearchResultLayout.mPlatformName = (TextView) Utils.findRequiredViewAsType(view, R.id.web_search_platfrom_name, "field 'mPlatformName'", TextView.class);
        webSearchResultLayout.mSearchResultTv = (TextView) Utils.findRequiredViewAsType(view, R.id.web_search_result_num, "field 'mSearchResultTv'", TextView.class);
        webSearchResultLayout.mShowBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_website_dialog_show, "field 'mShowBtn'", TextView.class);
        webSearchResultLayout.mRecyclerView = (SlideRecyclerView) Utils.findRequiredViewAsType(view, R.id.view_webread_site_rv, "field 'mRecyclerView'", SlideRecyclerView.class);
        webSearchResultLayout.mHideLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.bottom_website_dialog_hide_layout, "field 'mHideLayout'", FrameLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.bottom_website_dialog_hide, "field 'mHideBtn' and method 'menuClick'");
        webSearchResultLayout.mHideBtn = (TextView) Utils.castView(findRequiredView, R.id.bottom_website_dialog_hide, "field 'mHideBtn'", TextView.class);
        this.f7975if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, webSearchResultLayout));
        webSearchResultLayout.mHideTipView = (TextView) Utils.findRequiredViewAsType(view, R.id.bottom_website_jiexi_loading, "field 'mHideTipView'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.bottom_website_dialog_show_layout, "method 'menuClick'");
        this.f7974for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, webSearchResultLayout));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebSearchResultLayout webSearchResultLayout = this.f7973do;
        if (webSearchResultLayout != null) {
            this.f7973do = null;
            webSearchResultLayout.mIndicator = null;
            webSearchResultLayout.mViewPager = null;
            webSearchResultLayout.mBgView = null;
            webSearchResultLayout.mWebSiteLayout = null;
            webSearchResultLayout.mPlatformIcon = null;
            webSearchResultLayout.mPlatformName = null;
            webSearchResultLayout.mSearchResultTv = null;
            webSearchResultLayout.mShowBtn = null;
            webSearchResultLayout.mRecyclerView = null;
            webSearchResultLayout.mHideLayout = null;
            webSearchResultLayout.mHideBtn = null;
            webSearchResultLayout.mHideTipView = null;
            this.f7975if.setOnClickListener(null);
            this.f7975if = null;
            this.f7974for.setOnClickListener(null);
            this.f7974for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
