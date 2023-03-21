package com.biquge.ebook.app.ui.fragment;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import butterknife.BindView;
import com.apk.eg;
import com.apk.g6;
import com.apk.kf;
import com.apk.ss;
import com.apk.ts;
import com.apk.tt;
import com.apk.ze;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.biquge.ebook.app.widget.browse.obj.JsObj;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebViewFragment extends g6 implements ProgressBarWebView.Cdo, ProgressBarWebView.Cif {

    /* renamed from: do  reason: not valid java name */
    public String f7619do;

    /* renamed from: for  reason: not valid java name */
    public boolean f7620for;

    /* renamed from: if  reason: not valid java name */
    public String f7621if;
    @BindView(R.id.fragment_webview)
    public ProgressBarWebView mProgressBarWebView;
    @BindView(R.id.activity_webview_refresh_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;

    /* renamed from: new  reason: not valid java name */
    public boolean f7622new;

    /* renamed from: try  reason: not valid java name */
    public ProgressBarWebView.Cif f7623try;

    /* renamed from: com.biquge.ebook.app.ui.fragment.WebViewFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {

        /* renamed from: com.biquge.ebook.app.ui.fragment.WebViewFragment$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0094do implements Runnable {
            public RunnableC0094do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                PtrClassicFrameLayout ptrClassicFrameLayout = WebViewFragment.this.mPtrClassicFrameLayout;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.m2532break();
                }
            }
        }

        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            WebViewFragment webViewFragment = WebViewFragment.this;
            if (webViewFragment.mProgressBarWebView != null) {
                webViewFragment.m3388synchronized();
                WebViewFragment.this.mProgressBarWebView.postDelayed(new RunnableC0094do(), ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(WebViewFragment.this.mProgressBarWebView.getWebView());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.WebViewFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ProgressBarWebView.Cif {
        public Cif() {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: for */
        public void mo1476for(WebView webView, String str, Bitmap bitmap) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: goto */
        public void mo1477goto() {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: instanceof */
        public void mo1478instanceof(WebView webView, String str) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: interface */
        public void mo1479interface(String str) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: static */
        public void mo1480static(WebView webView, String str) {
            if (WebViewFragment.this.f7622new) {
                WebViewActivity.i(webView.getContext(), null, str);
            }
        }
    }

    public static WebViewFragment a(String str, String str2, boolean z, boolean z2, boolean z3) {
        WebViewFragment webViewFragment = new WebViewFragment();
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("WEBVIEW_TITLE_KEY", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("WEBVIEW_URL_KEY", str2);
        }
        if (z2) {
            bundle.putBoolean("WEBVIEW_SHOW_TOOLBAR_KEY", true);
        }
        if (z) {
            bundle.putBoolean("WEBVIEW_TYPE_KEY", true);
        }
        if (z3) {
            bundle.putBoolean("WEBVIEW_IS_INTERCEPT_KEY", true);
        }
        webViewFragment.setArguments(bundle);
        return webViewFragment;
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cdo
    /* renamed from: continue  reason: not valid java name */
    public void mo3387continue(String str, String str2, String str3, long j, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.endsWith(".apk") || str.endsWith(".APK")) {
            if (str2.endsWith(".bin")) {
                str2 = str2.replace(".bin", ".apk");
            }
            kf.m1482for(getSupportActivity(), str, str2);
        }
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: for */
    public void mo1476for(WebView webView, String str, Bitmap bitmap) {
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_webview;
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: goto */
    public void mo1477goto() {
        if (this.mProgressBarWebView != null) {
            String m2620do = tt.m2620do("SP_YU_POOLS_HOST_VALUE_KEY", "");
            if (!TextUtils.isEmpty(m2620do)) {
                ProgressBarWebView progressBarWebView = this.mProgressBarWebView;
                progressBarWebView.m3537try("javascript:getRdomYu('" + m2620do + "');");
            }
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.m2532break();
        }
        ProgressBarWebView.Cif cif = this.f7623try;
        if (cif != null) {
            cif.mo1477goto();
        }
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        JsObj jsObj = new JsObj(getSupportActivity(), this.mProgressBarWebView.getWebView());
        this.mProgressBarWebView.getWebView().addJavascriptInterface(jsObj, "azhandler");
        this.mProgressBarWebView.getWebView().addJavascriptInterface(jsObj, "sandeshandler");
        this.mProgressBarWebView.getWebView().addJavascriptInterface(jsObj, "userhandler");
        this.mProgressBarWebView.getWebView().addJavascriptInterface(jsObj, "contenthandler");
        this.mProgressBarWebView.getWebView().addJavascriptInterface(jsObj, "readhandler");
        this.mProgressBarWebView.getWebView().addJavascriptInterface(jsObj, "varlogin");
        this.mProgressBarWebView.setWebViewListener(this);
        this.mProgressBarWebView.setDownloadListener(this);
        m3388synchronized();
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7619do = arguments.getString("WEBVIEW_TITLE_KEY");
            this.f7621if = arguments.getString("WEBVIEW_URL_KEY");
            this.f7620for = arguments.getBoolean("WEBVIEW_TYPE_KEY", false);
            if (arguments.getBoolean("WEBVIEW_SHOW_TOOLBAR_KEY", false)) {
                findViewById(R.id.fragment_webview_tollbar_layout).setVisibility(0);
                ((TextView) findViewById(R.id.fragment_webview_title_txt)).setText(this.f7619do);
            }
            this.f7622new = arguments.getBoolean("WEBVIEW_IS_INTERCEPT_KEY", false);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
        this.mProgressBarWebView.setWebViewListener(new Cif());
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: instanceof */
    public void mo1478instanceof(WebView webView, String str) {
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: interface */
    public void mo1479interface(String str) {
        ProgressBarWebView.Cif cif = this.f7623try;
        if (cif != null) {
            cif.mo1479interface(str);
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ProgressBarWebView progressBarWebView = this.mProgressBarWebView;
        if (progressBarWebView != null) {
            ze.m3181public(progressBarWebView.getWebView());
        }
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
    /* renamed from: static */
    public void mo1480static(WebView webView, String str) {
    }

    /* renamed from: synchronized  reason: not valid java name */
    public final void m3388synchronized() {
        if (this.f7620for) {
            if (TextUtils.isEmpty(this.f7621if)) {
                return;
            }
            this.mProgressBarWebView.getWebView().loadData(this.f7621if, "text/html; charset=UTF-8", null);
        } else if (TextUtils.isEmpty(this.f7621if)) {
        } else {
            this.mProgressBarWebView.m3537try(this.f7621if);
        }
    }
}
