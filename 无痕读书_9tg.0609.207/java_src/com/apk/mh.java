package com.apk;

import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
/* compiled from: ProgressBarWebView.java */
/* loaded from: classes8.dex */
public class mh extends WebChromeClient {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ProgressBarWebView f3036do;

    public mh(ProgressBarWebView progressBarWebView) {
        this.f3036do = progressBarWebView;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (!str3.contains("File") && !str2.contains("File")) {
            jsPromptResult.confirm();
            return true;
        }
        jsPromptResult.confirm();
        webView.loadUrl(str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        if (i <= 95) {
            this.f3036do.f8304do.setProgress(i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        ProgressBarWebView.Cif cif = this.f3036do.f8305else;
        if (cif != null) {
            cif.mo1479interface(str);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.toLowerCase().contains(com.umeng.analytics.pro.d.O) || str.toLowerCase().contains("404") || str.toLowerCase().contains("网页无法打开")) {
            this.f3036do.f8311try = true;
        }
    }
}
