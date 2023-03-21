package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;

/* compiled from: BridgeWebView.java */
/* loaded from: classes8.dex */
public class ih extends WebView {

    /* renamed from: do  reason: not valid java name */
    public ProgressBarWebView.Cdo f2109do;

    public ih(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setOverScrollMode(2);
        setFocusable(true);
        setDrawingCacheEnabled(true);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setLoadsImagesAutomatically(false);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        settings.setMixedContentMode(0);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setAppCachePath(getContext().getApplicationContext().getDir("cache", 0).getPath());
        settings.setDomStorageEnabled(true);
        if (eg.m600implements()) {
            settings.setCacheMode(-1);
        } else {
            settings.setCacheMode(1);
        }
        settings.setAppCacheEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        setDownloadListener(new gh(this));
        setOnLongClickListener(new hh(this));
        removeJavascriptInterface("searchBoxJavaBridge_");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
    }

    public ProgressBarWebView.Cdo getWebViewListener() {
        return this.f2109do;
    }

    public void setWebViewListener(ProgressBarWebView.Cdo cdo) {
        this.f2109do = cdo;
    }
}
