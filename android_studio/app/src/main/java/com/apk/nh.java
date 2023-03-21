package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.lang.ref.WeakReference;
import kimi.wuhends.ebooks.R;

/* compiled from: ProgressBarWebView.java */
/* loaded from: classes8.dex */
public class nh extends jh {

    /* renamed from: for  reason: not valid java name */
    public boolean f3227for;

    /* renamed from: if  reason: not valid java name */
    public boolean f3228if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ ProgressBarWebView f3229new;

    public nh(ProgressBarWebView progressBarWebView) {
        this.f3229new = progressBarWebView;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f3227for = this.f3228if;
        ProgressBarWebView progressBarWebView = this.f3229new;
        if (!progressBarWebView.f8307goto) {
            progressBarWebView.f8308if.setVisibility(0);
        }
        if (this.f3229new.f8304do.getVisibility() != 8) {
            this.f3229new.f8304do.setVisibility(8);
        }
        ProgressBarWebView progressBarWebView2 = this.f3229new;
        progressBarWebView2.f8307goto = true;
        if (!progressBarWebView2.f8311try) {
            ProgressBarWebView.Cif cif = progressBarWebView2.f8305else;
            if (cif != null) {
                cif.mo1477goto();
            }
            re reVar = this.f3229new.f8306for;
            if (reVar != null) {
                if (reVar.f4034do.getVisibility() != 8) {
                    reVar.f4034do.setVisibility(8);
                }
                if (reVar.getVisibility() != 8) {
                    reVar.setVisibility(8);
                }
            }
        } else {
            re reVar2 = progressBarWebView2.f8306for;
            if (reVar2 != null) {
                reVar2.setError(null);
            }
        }
        if (!this.f3229new.f8308if.getSettings().getLoadsImagesAutomatically()) {
            this.f3229new.f8308if.getSettings().setLoadsImagesAutomatically(true);
        }
        ProgressBarWebView.Cif cif2 = this.f3229new.f8305else;
        if (cif2 != null) {
            cif2.mo1478instanceof(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f3228if = true;
        this.f3227for = false;
        ProgressBarWebView progressBarWebView = this.f3229new;
        progressBarWebView.f8311try = false;
        if (!progressBarWebView.f8307goto) {
            progressBarWebView.f8308if.setVisibility(4);
        }
        if (this.f3229new.f8304do.getVisibility() != 0) {
            this.f3229new.f8304do.setProgress(10);
            this.f3229new.f8304do.setVisibility(0);
        }
        ProgressBarWebView.Cif cif = this.f3229new.f8305else;
        if (cif != null) {
            cif.mo1476for(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (i == 404) {
            this.f3229new.f8311try = true;
        } else if (i == -2) {
            this.f3229new.f8311try = true;
        } else if (i == -8) {
            this.f3229new.f8311try = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        sslErrorHandler.proceed();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!TextUtils.isEmpty(str) && str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
            String decode = Uri.decode(str);
            try {
                if (decode.contains("url=http")) {
                    String substring = decode.substring(decode.indexOf("url=http") + 4);
                    int indexOf = substring.indexOf("&");
                    if (indexOf == -1) {
                        indexOf = substring.length();
                    }
                    String substring2 = substring.substring(0, indexOf);
                    if (!TextUtils.isEmpty(substring2)) {
                        decode = substring2;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            String decode2 = Uri.decode(decode);
            this.f3228if = false;
            if (this.f3227for) {
                ProgressBarWebView.Cif cif = this.f3229new.f8305else;
                if (cif != null) {
                    cif.mo1480static(webView, decode2);
                }
                this.f3229new.m3536new();
                return true;
            }
            return false;
        }
        final ProgressBarWebView progressBarWebView = this.f3229new;
        String str2 = null;
        if (progressBarWebView != null) {
            try {
                if (progressBarWebView.f8310this == null || progressBarWebView.f8310this.get() == null) {
                    Context context = progressBarWebView.getContext();
                    lv lvVar = new lv();
                    Boolean bool = Boolean.FALSE;
                    lvVar.f2943try = bool;
                    lvVar.f2924for = bool;
                    String q = ze.q(R.string.progress_dialog_holdon);
                    lvVar.f2917continue = zu.f6266try;
                    LoadingPopupView loadingPopupView = new LoadingPopupView(context, R.layout.code_public_loading_view);
                    loadingPopupView.m3605if(q);
                    loadingPopupView.popupInfo = lvVar;
                    progressBarWebView.f8310this = new WeakReference<>(loadingPopupView);
                }
                if (TextUtils.isEmpty(null)) {
                    String q2 = ze.q(R.string.progress_dialog_holdon);
                    if (!progressBarWebView.f8310this.get().getTitle().equals(q2)) {
                        str2 = q2;
                    }
                }
                if (!progressBarWebView.f8310this.get().isShow()) {
                    LoadingPopupView loadingPopupView2 = progressBarWebView.f8310this.get();
                    loadingPopupView2.m3605if(str2);
                    loadingPopupView2.show();
                }
                if (!progressBarWebView.f8302break) {
                    progressBarWebView.f8302break = true;
                    progressBarWebView.postDelayed(new Runnable() { // from class: com.apk.fh
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProgressBarWebView.this.m3536new();
                        }
                    }, 5000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return true;
        }
        throw null;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }
}
