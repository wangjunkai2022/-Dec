package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.hf;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebViewFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebViewFragment f7627do;

    /* renamed from: if  reason: not valid java name */
    public View f7628if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.WebViewFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebViewFragment f7629do;

        public Cdo(WebViewFragment_ViewBinding webViewFragment_ViewBinding, WebViewFragment webViewFragment) {
            this.f7629do = webViewFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            BookSearchActivity.i(this.f7629do.getSupportActivity(), hf.BOOK);
        }
    }

    @UiThread
    public WebViewFragment_ViewBinding(WebViewFragment webViewFragment, View view) {
        this.f7627do = webViewFragment;
        webViewFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.activity_webview_refresh_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        webViewFragment.mProgressBarWebView = (ProgressBarWebView) Utils.findRequiredViewAsType(view, R.id.fragment_webview, "field 'mProgressBarWebView'", ProgressBarWebView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.fragment_home_search_bt, "method 'menuClick'");
        this.f7628if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, webViewFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebViewFragment webViewFragment = this.f7627do;
        if (webViewFragment != null) {
            this.f7627do = null;
            webViewFragment.mPtrClassicFrameLayout = null;
            webViewFragment.mProgressBarWebView = null;
            this.f7628if.setOnClickListener(null);
            this.f7628if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
