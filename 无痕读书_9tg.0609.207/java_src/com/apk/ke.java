package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.webkit.WebView;
import com.biquge.ebook.app.bean.webread.WebSiteRulesBean;
import com.biquge.ebook.app.ui.webread.ui.WebHistoryActivity;
import com.biquge.ebook.app.ui.webread.view.WebContentPopup;
import com.biquge.ebook.app.ui.webread.view.WebContentView;
import com.biquge.ebook.app.ui.webread.view.WebMenuGuidePopupView;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import java.util.concurrent.ThreadPoolExecutor;
/* compiled from: WebContentView.java */
/* loaded from: classes8.dex */
public class ke implements ProgressBarWebView.Cif {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebContentView f2518do;

    /* compiled from: WebContentView.java */
    /* renamed from: com.apk.ke$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<Boolean> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f2519do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ WebView f2521if;

        public Cdo(String str, WebView webView) {
            this.f2519do = str;
            this.f2521if = webView;
        }

        @Override // com.apk.c1
        public Boolean doInBackground() {
            WebSiteRulesBean m1854const = nd.m1854const(this.f2519do);
            if (m1854const != null) {
                boolean m1822goto = n2.m1822goto(this.f2519do, m1854const.getInfo_urlExpression());
                n2.m1822goto(this.f2519do, m1854const.getContent_urlExpression());
                return Boolean.valueOf(m1822goto);
            }
            return Boolean.FALSE;
        }

        @Override // com.apk.c1
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (!bool2.booleanValue()) {
                ke.this.f2518do.m3449goto(true);
                this.f2521if.loadUrl(this.f2519do);
                return;
            }
            Context context = ke.this.f2518do.getContext();
            String str = this.f2519do;
            WebContentView webContentView = ke.this.f2518do;
            WebContentPopup.m3437this(context, str, webContentView.f7921this, webContentView.f7909catch, true);
        }
    }

    public ke(WebContentView webContentView) {
        this.f2518do = webContentView;
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: for  reason: not valid java name */
    public void mo1476for(WebView webView, String str, Bitmap bitmap) {
        ProgressBarWebView.Cif cif = this.f2518do.f7913else;
        if (cif != null) {
            cif.mo1476for(webView, str, bitmap);
        }
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: goto  reason: not valid java name */
    public void mo1477goto() {
        ProgressBarWebView.Cif cif = this.f2518do.f7913else;
        if (cif != null) {
            cif.mo1477goto();
        }
        WebContentView webContentView = this.f2518do;
        if (webContentView.f7910class) {
            return;
        }
        webContentView.f7910class = true;
        if (webContentView.mWebView.getWebView().getSettings().getJavaScriptEnabled()) {
            WebContentView webContentView2 = this.f2518do;
            webContentView2.f7917if = false;
            webContentView2.mWebView.getWebView().getSettings().setJavaScriptEnabled(this.f2518do.f7917if);
            ProgressBarWebView progressBarWebView = this.f2518do.mWebView;
            progressBarWebView.m3537try(progressBarWebView.getWebView().getUrl());
        }
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: instanceof  reason: not valid java name */
    public void mo1478instanceof(WebView webView, String str) {
        ProgressBarWebView.Cif cif = this.f2518do.f7913else;
        if (cif != null) {
            cif.mo1478instanceof(webView, str);
        }
        WebContentView webContentView = this.f2518do;
        if (webContentView != null) {
            if (ze.m3179private("SP_SHOW_WEB_READ_JS_POPUP_KEY", true)) {
                tt.f4763do.putBoolean("SP_SHOW_WEB_READ_JS_POPUP_KEY", false);
                webContentView.getContext();
                lv lvVar = new lv();
                lvVar.f2940this = ov.NoAnimation;
                WebMenuGuidePopupView webMenuGuidePopupView = new WebMenuGuidePopupView(webContentView.getContext());
                if (webMenuGuidePopupView instanceof CenterPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webMenuGuidePopupView instanceof BottomPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webMenuGuidePopupView instanceof AttachPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webMenuGuidePopupView instanceof ImageViewerPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else {
                    lvVar.f2917continue = zu.f6266try;
                }
                webMenuGuidePopupView.popupInfo = lvVar;
                webMenuGuidePopupView.show();
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: interface  reason: not valid java name */
    public void mo1479interface(final String str) {
        ProgressBarWebView.Cif cif = this.f2518do.f7913else;
        if (cif != null) {
            cif.mo1479interface(str);
        }
        WebContentView webContentView = this.f2518do;
        final String curUrl = webContentView.getCurUrl();
        if (webContentView != null) {
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.ce
                @Override // java.lang.Runnable
                public final void run() {
                    WebHistoryActivity.k(str, curUrl);
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
            WebContentView webContentView2 = this.f2518do;
            webContentView2.m3446class(webContentView2.getCurUrl(), false, true);
            return;
        }
        throw null;
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: static  reason: not valid java name */
    public void mo1480static(WebView webView, String str) {
        ProgressBarWebView.Cif cif = this.f2518do.f7913else;
        if (cif != null) {
            cif.mo1480static(webView, str);
        }
        new b1().m141do(new Cdo(str, webView));
    }
}
