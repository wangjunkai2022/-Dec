package com.biquge.ebook.app.ui.webread.ui;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.ae;
import com.apk.b1;
import com.apk.bg;
import com.apk.dg;
import com.apk.g1;
import com.apk.g6;
import com.apk.i6;
import com.apk.kd;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import com.biquge.ebook.app.widget.browse.IndeterminateProgressBar;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebSiteSearchFragment extends g6 {

    /* renamed from: case  reason: not valid java name */
    public kd f7839case;

    /* renamed from: catch  reason: not valid java name */
    public List<List<WebBook>> f7840catch;

    /* renamed from: class  reason: not valid java name */
    public int f7841class;

    /* renamed from: const  reason: not valid java name */
    public boolean f7842const;

    /* renamed from: goto  reason: not valid java name */
    public boolean f7847goto;

    /* renamed from: if  reason: not valid java name */
    public int f7848if;
    @BindView(R.id.web_search_top_appbarlayout)
    public AppBarLayout mAppBarLayout;
    @BindView(R.id.activity_website_bgview)
    public View mBgView;
    @BindView(R.id.web_search_site_indeterminate_loading)
    public IndeterminateProgressBar mIndeterminateView;
    @BindView(R.id.web_search_platfrom_title_tv)
    public TextView mPlatfromTitleTv;
    @BindView(R.id.activity_website_webview)
    public ProgressBarWebView mWebView;

    /* renamed from: new  reason: not valid java name */
    public String f7849new;

    /* renamed from: this  reason: not valid java name */
    public int f7850this;

    /* renamed from: try  reason: not valid java name */
    public String f7851try;

    /* renamed from: do  reason: not valid java name */
    public boolean f7843do = true;

    /* renamed from: for  reason: not valid java name */
    public int f7846for = 1;

    /* renamed from: else  reason: not valid java name */
    public int f7844else = 1;

    /* renamed from: break  reason: not valid java name */
    public final List<WebBook> f7838break = new ArrayList();

    /* renamed from: final  reason: not valid java name */
    public final Runnable f7845final = new Cfor();

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ProgressBarWebView.Cif {
        public Cdo() {
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
            WebSiteSearchFragment webSiteSearchFragment = WebSiteSearchFragment.this;
            if (webSiteSearchFragment.f7848if == 0) {
                webSiteSearchFragment.mAppBarLayout.setExpanded(true, false);
            }
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: interface */
        public void mo1479interface(String str) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: static */
        public void mo1480static(WebView webView, String str) {
            i6 supportActivity = WebSiteSearchFragment.this.getSupportActivity();
            StringBuilder m1016super = Cgoto.m1016super("站外搜索-");
            m1016super.append(WebSiteSearchFragment.this.f7849new);
            WebReadActivity.j(supportActivity, str, true, false, m1016super.toString());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int size = WebSiteSearchFragment.this.f7840catch.size();
                WebSiteSearchFragment.this.f7847goto = WebSiteSearchFragment.this.f7841class == size + (-1);
                if (WebSiteSearchFragment.this.f7839case != null && WebSiteSearchFragment.this.f7841class < size) {
                    WebSiteSearchFragment.this.f7850this += WebSiteSearchFragment.this.f7840catch.get(WebSiteSearchFragment.this.f7841class).size();
                    WebSiteSearchFragment.this.f7838break.addAll(WebSiteSearchFragment.this.f7840catch.get(WebSiteSearchFragment.this.f7841class));
                    ((WebSearchResultLayout.Cfor) WebSiteSearchFragment.this.f7839case).m3462if(WebSiteSearchFragment.this.f7848if, WebSiteSearchFragment.this.f7840catch.get(WebSiteSearchFragment.this.f7841class), WebSiteSearchFragment.this.f7847goto);
                }
                if (WebSiteSearchFragment.this.f7847goto) {
                    if (!WebSiteSearchFragment.this.f7842const || WebSiteSearchFragment.this.f7839case == null) {
                        return;
                    }
                    kd kdVar = WebSiteSearchFragment.this.f7839case;
                    int i = WebSiteSearchFragment.this.f7848if;
                    WebSearchResultLayout.Ctry ctry = WebSearchResultLayout.this.f7951case;
                    if (ctry != null) {
                        ctry.setEnableLoadMore(true);
                        return;
                    }
                    return;
                }
                WebSiteSearchFragment.this.f7841class++;
                WebSiteSearchFragment.this.getSupportActivity().postDelayed(WebSiteSearchFragment.this.f7845final, dg.f857do.nextInt(300) + 300);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            kd kdVar = WebSiteSearchFragment.this.f7839case;
            if (kdVar != null) {
                WebSearchResultLayout webSearchResultLayout = WebSearchResultLayout.this;
                webSearchResultLayout.f7959goto = true;
                webSearchResultLayout.m3458if();
            }
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_webread_search_engine;
    }

    @Override // com.apk.g6
    public void initData() {
        String str;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7848if = arguments.getInt("WEBVIEW_INDEX_KEY");
            this.f7846for = arguments.getInt("WEBVIEW_SOURCE_KEY");
            str = arguments.getString("WEBVIEW_SEARCH_KEY_KEY");
            this.f7849new = arguments.getString("WEBVIEW_NAME_KEY");
            String string = arguments.getString("WEBVIEW_URL_KEY");
            this.f7851try = string;
            ProgressBarWebView progressBarWebView = this.mWebView;
            if (!TextUtils.isEmpty(string) && !string.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                string = Cgoto.m989case("http://", string);
            }
            progressBarWebView.m3537try(string);
            this.mPlatfromTitleTv.setText(ze.r(R.string.web_search_source_platform_txt, this.f7849new, this.mWebView.getWebView().getUrl()));
        } else {
            str = null;
        }
        new b1().m141do(new ae(this, str, this.f7846for));
    }

    @Override // com.apk.g6
    public void initView() {
        WebSettings settings = this.mWebView.getWebView().getSettings();
        if (!TextUtils.isEmpty(null)) {
            settings.setUserAgentString(null);
        }
        settings.setJavaScriptEnabled(this.f7843do);
        this.mWebView.setInterceptRequest(true);
        this.mWebView.setWebViewListener(new Cdo());
        this.mBgView.setOnClickListener(new Cif());
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ProgressBarWebView progressBarWebView = this.mWebView;
        if (progressBarWebView != null) {
            ze.m3181public(progressBarWebView.getWebView());
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public /* synthetic */ void m3427synchronized(g1 g1Var) {
        this.mIndeterminateView.m3530new();
        if (g1Var != null) {
            g1Var.onData(null);
        }
    }
}
