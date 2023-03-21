package com.biquge.ebook.app.ui.webread.view;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebSettings;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.multidex.MultiDexExtractor;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.ft;
import com.apk.jd;
import com.apk.je;
import com.apk.ke;
import com.apk.kf;
import com.apk.le;
import com.apk.lv;
import com.apk.md;
import com.apk.me;
import com.apk.n2;
import com.apk.nd;
import com.apk.o1;
import com.apk.od;
import com.apk.oe;
import com.apk.pe;
import com.apk.ph;
import com.apk.qd;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.bean.webread.WebSiteRulesBean;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.view.WebReadMenuPopup;
import com.biquge.ebook.app.ui.webread.entity.WebContentBean;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.ConfirmPopupView;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebContentView extends FrameLayout implements ProgressBarWebView.Cdo {

    /* renamed from: break  reason: not valid java name */
    public String f7907break;

    /* renamed from: case  reason: not valid java name */
    public jd f7908case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f7909catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f7910class;

    /* renamed from: const  reason: not valid java name */
    public boolean f7911const;

    /* renamed from: do  reason: not valid java name */
    public EditText f7912do;

    /* renamed from: else  reason: not valid java name */
    public ProgressBarWebView.Cif f7913else;

    /* renamed from: final  reason: not valid java name */
    public WebSiteBean f7914final;

    /* renamed from: for  reason: not valid java name */
    public boolean f7915for;

    /* renamed from: goto  reason: not valid java name */
    public WebReadMenuPopup f7916goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f7917if;

    /* renamed from: import  reason: not valid java name */
    public final md f7918import;
    @BindView(R.id.website_webview_back_view)
    public ImageView mGoBackView;
    @BindView(R.id.website_webview_forward_view)
    public ImageView mGoForwardView;
    @BindView(R.id.web_site_transcoding_layout)
    public LinearLayout mTranscodingLayout;
    @BindView(R.id.web_book_detail_view)
    public WebBookDetailView mWebBookDetailView;
    @BindView(R.id.web_content_webview)
    public ProgressBarWebView mWebView;

    /* renamed from: new  reason: not valid java name */
    public boolean f7919new;

    /* renamed from: super  reason: not valid java name */
    public WebContentBean f7920super;

    /* renamed from: this  reason: not valid java name */
    public boolean f7921this;

    /* renamed from: throw  reason: not valid java name */
    public qd f7922throw;

    /* renamed from: try  reason: not valid java name */
    public boolean f7923try;

    /* renamed from: while  reason: not valid java name */
    public final WebReadMenuPopup.Cfor f7924while;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements WebReadMenuPopup.Cfor {
        public Cdo() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f7926do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f7927if;

        public Cfor(WebContentView webContentView, String str, String str2) {
            this.f7926do = str;
            this.f7927if = str2;
        }

        @Override // com.apk.ft
        public void onClick() {
            kf.m1486this(new TaskInfo(this.f7926do, this.f7927if));
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends md {
        public Cif() {
        }

        @Override // com.apk.md
        /* renamed from: if */
        public void mo1691if(boolean z, boolean z2, boolean z3, boolean z4, WebSiteBean webSiteBean, WebContentBean webContentBean) {
            WebLoadingView webLoadingView;
            WebContentView webContentView = WebContentView.this;
            webContentView.f7919new = z3;
            webContentView.f7923try = z4;
            webContentView.f7914final = webSiteBean;
            webContentView.f7920super = webContentBean;
            if (z2) {
                if (webSiteBean == null && webContentBean == null) {
                    return;
                }
                WebContentView.this.mTranscodingLayout.setVisibility(0);
            } else if (webSiteBean == null && webContentBean == null) {
                WebBookDetailView webBookDetailView = webContentView.mWebBookDetailView;
                if (webBookDetailView != null) {
                    WebLoadingView webLoadingView2 = webBookDetailView.mWebLoadingView;
                    if (webLoadingView2 != null) {
                        webLoadingView2.setError(null);
                    }
                    webBookDetailView.setVisibility(0);
                }
            } else {
                WebContentView webContentView2 = WebContentView.this;
                if (!webContentView2.f7919new && !webContentView2.f7923try) {
                    webContentView2.mTranscodingLayout.setVisibility(8);
                } else {
                    if (z) {
                        webContentView2.m3447const();
                    }
                    webContentView2.mTranscodingLayout.setVisibility(0);
                }
                WebBookDetailView webBookDetailView2 = WebContentView.this.mWebBookDetailView;
                if (webBookDetailView2 == null || (webLoadingView = webBookDetailView2.mWebLoadingView) == null) {
                    return;
                }
                webLoadingView.m3452if();
            }
        }
    }

    public WebContentView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7917if = false;
        this.f7915for = false;
        this.f7924while = new Cdo();
        this.f7918import = new Cif();
        LayoutInflater.from(getContext()).inflate(R.layout.layout_web_content, this);
        ButterKnife.bind(this);
        if (!TextUtils.isEmpty(null)) {
            this.mWebView.getWebView().getSettings().setUserAgentString(null);
        }
        this.mWebView.getWebView().getSettings().setJavaScriptEnabled(this.f7917if);
        this.mWebView.setDownloadListener(this);
        WebSettings settings = this.mWebView.f8308if.getSettings();
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        this.mWebView.f8308if.setOnKeyListener(null);
        this.mWebView.setWebViewBackForwardListener(new je(this));
        this.mWebView.setWebViewListener(new ke(this));
        this.mWebBookDetailView.setWebCodeCallback(new le(this));
        this.mWebBookDetailView.setReloadListener(new me(this));
        this.f7922throw = new qd((Activity) getContext(), this.f7918import);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3440do(WebContentView webContentView) {
        webContentView.m3449goto(false);
    }

    private String getBookId() {
        String curUrl = getCurUrl();
        if (TextUtils.isEmpty(curUrl)) {
            return curUrl;
        }
        StringBuilder m1016super = Cgoto.m1016super("web_");
        m1016super.append(curUrl.hashCode());
        return m1016super.toString();
    }

    /* renamed from: new  reason: not valid java name */
    public static void m3443new(WebContentView webContentView) {
        String title = webContentView.mWebView.getWebView().getTitle();
        Context context = webContentView.getContext();
        lv lvVar = new lv();
        lvVar.f2941throw = new pe(webContentView, title);
        String q = ze.q(R.string.web_book_save_collect_title);
        String q2 = ze.q(R.string.main_cancel);
        String q3 = ze.q(R.string.main_confirm);
        oe oeVar = new oe(webContentView, title);
        lvVar.f2917continue = zu.f6266try;
        ConfirmPopupView confirmPopupView = new ConfirmPopupView(context, R.layout.dialog_web_book_collect_layout);
        confirmPopupView.f9575else = q;
        confirmPopupView.f9577goto = title;
        confirmPopupView.f9580this = null;
        confirmPopupView.f9569break = q2;
        confirmPopupView.f9571catch = q3;
        confirmPopupView.f9574do = null;
        confirmPopupView.f9578if = oeVar;
        confirmPopupView.f9573const = false;
        confirmPopupView.popupInfo = lvVar;
        confirmPopupView.show();
    }

    /* renamed from: try  reason: not valid java name */
    public static void m3444try(WebContentView webContentView, String str, String str2) {
        Book m1862native;
        if (webContentView != null) {
            if (n2.g(str) || (m1862native = nd.m1862native(new WebSiteBean())) == null) {
                return;
            }
            m1862native.setId(webContentView.getBookId());
            m1862native.setName(str2);
            m1862native.setExternalUrl(str);
            n2.u(m1862native, true);
            WebReadMenuPopup webReadMenuPopup = webContentView.f7916goto;
            if (webReadMenuPopup != null) {
                webReadMenuPopup.dismiss();
            }
            ze.V();
            return;
        }
        throw null;
    }

    /* renamed from: catch  reason: not valid java name */
    public void m3445catch(String str, boolean z, boolean z2, boolean z3) {
        this.f7907break = str;
        this.f7921this = z;
        this.f7909catch = z2;
        this.f7911const = z3;
        if (!z3 && str.startsWith("https://boxnovel.baidu.com")) {
            this.f7910class = true;
            z2 = true;
        }
        this.f7917if = z2;
        this.mWebView.getWebView().getSettings().setJavaScriptEnabled(this.f7917if);
        m3450this();
    }

    /* renamed from: class  reason: not valid java name */
    public final void m3446class(String str, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        WebBookDetailView webBookDetailView;
        if (!z2 && (webBookDetailView = this.mWebBookDetailView) != null) {
            WebLoadingView webLoadingView = webBookDetailView.mWebLoadingView;
            if (webLoadingView != null) {
                webLoadingView.m3451do();
            }
            webBookDetailView.setVisibility(0);
        }
        qd qdVar = this.f7922throw;
        if (qdVar != null) {
            if (qdVar != null) {
                WebSiteRulesBean m1854const = nd.m1854const(str);
                if (m1854const != null) {
                    z3 = n2.m1822goto(str, m1854const.getInfo_urlExpression());
                    z4 = n2.m1822goto(str, m1854const.getContent_urlExpression());
                } else {
                    z3 = false;
                    z4 = false;
                }
                if (z3 || z4) {
                    x4.m2957import(str, 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new od(qdVar, str, z3, z4, z, z2));
                    return;
                }
                return;
            }
            throw null;
        }
    }

    /* renamed from: const  reason: not valid java name */
    public final void m3447const() {
        if (this.f7919new) {
            WebSiteBean webSiteBean = this.f7914final;
            if (webSiteBean != null) {
                webSiteBean.setOpenUrl(getCurUrl());
                WebBookDetailView webBookDetailView = this.mWebBookDetailView;
                WebSiteBean webSiteBean2 = this.f7914final;
                webBookDetailView.f7856do = (Activity) getContext();
                webBookDetailView.f7857for = webSiteBean2;
                webBookDetailView.m3431new();
                this.mWebBookDetailView.setVisibility(0);
                this.mTranscodingLayout.setVisibility(0);
            }
        } else if (!this.f7923try || this.f7920super == null) {
        } else {
            WebSiteBean webSiteBean3 = new WebSiteBean();
            webSiteBean3.setReadChapterUrl(getCurUrl());
            WebContentBean webContentBean = this.f7920super;
            webSiteBean3.setChapterUrl(webContentBean != null ? webContentBean.getChapterUrl() : "");
            NewBookReadActivity.c0((Activity) getContext(), webSiteBean3);
            this.mTranscodingLayout.setVisibility(0);
        }
    }

    @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cdo
    /* renamed from: continue */
    public void mo3387continue(String str, String str2, String str3, long j, String str4, String str5) {
        String str6 = "";
        if (this.f7915for) {
            if (!TextUtils.isEmpty(str)) {
                str = Uri.encode(str);
            }
            if (!TextUtils.isEmpty(str2)) {
                try {
                    str2 = URLDecoder.decode(str2, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            try {
                if (!TextUtils.isEmpty(str)) {
                    str6 = URLDecoder.decode(str, "UTF-8");
                }
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
            if (ze.J(str6)) {
                if (!ze.J(str2)) {
                    str2 = Cgoto.m989case(str2, MultiDexExtractor.EXTRACTED_SUFFIX);
                }
            } else if (!ze.I(str2)) {
                str2 = Cgoto.m989case(str2, ".txt");
            }
            eg.i(getContext(), ze.r(R.string.create_txt_download_tips_txt, str2), new Cfor(this, str2, str6), null, false);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3448else() {
        if (this.mWebBookDetailView.getVisibility() == 0) {
            this.mWebBookDetailView.setVisibility(8);
        }
        if (!this.mWebView.getWebView().canGoBack()) {
            jd jdVar = this.f7908case;
            if (jdVar != null) {
                jdVar.mo1188continue();
                return;
            }
            return;
        }
        this.mWebView.m3535if();
    }

    public String getCurUrl() {
        if (!TextUtils.isEmpty(this.f7907break)) {
            return this.f7907break;
        }
        return this.mWebView.getWebView().getUrl();
    }

    public ProgressBarWebView getWebView() {
        return this.mWebView;
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m3449goto(boolean z) {
        try {
            if (this.mWebView != null) {
                if (z) {
                    this.mGoBackView.setSelected(true);
                } else {
                    this.mGoBackView.setSelected(this.mWebView.getWebView().canGoBack());
                }
                this.mGoForwardView.setSelected(this.mWebView.getWebView().canGoForward());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnClick({R.id.website_webview_back_view, R.id.website_webview_forward_view, R.id.website_webview_refresh_view, R.id.transcoding_read_btn, R.id.website_webview_menu_view})
    public void menuClick(View view) {
        boolean g;
        int id = view.getId();
        if (id != R.id.transcoding_read_btn) {
            switch (id) {
                case R.id.website_webview_back_view /* 2131297866 */:
                    m3448else();
                    return;
                case R.id.website_webview_forward_view /* 2131297867 */:
                    if (this.mWebBookDetailView.getVisibility() == 0) {
                        return;
                    }
                    ProgressBarWebView progressBarWebView = this.mWebView;
                    if (progressBarWebView.f8308if.canGoForward()) {
                        progressBarWebView.f8308if.goForward();
                        o1 o1Var = progressBarWebView.f8303case;
                        if (o1Var != null) {
                            progressBarWebView.getWebView().getUrl();
                            m3440do(((je) o1Var).f2311do);
                            return;
                        }
                        return;
                    }
                    return;
                case R.id.website_webview_menu_view /* 2131297868 */:
                    if (this.mWebBookDetailView.getVisibility() == 0) {
                        WebSiteBean webSiteBean = this.f7914final;
                        g = webSiteBean != null ? n2.f(webSiteBean.getNovelId()) : false;
                    } else {
                        g = n2.g(getCurUrl());
                    }
                    this.f7916goto = new WebReadMenuPopup(getContext(), this.f7917if, g, this.f7924while);
                    getContext();
                    lv lvVar = new lv();
                    WebReadMenuPopup webReadMenuPopup = this.f7916goto;
                    if (webReadMenuPopup instanceof CenterPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webReadMenuPopup instanceof BottomPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webReadMenuPopup instanceof AttachPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webReadMenuPopup instanceof ImageViewerPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else if (webReadMenuPopup instanceof PositionPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    }
                    webReadMenuPopup.popupInfo = lvVar;
                    webReadMenuPopup.show();
                    return;
                case R.id.website_webview_refresh_view /* 2131297869 */:
                    if (!this.f7919new && !this.f7923try) {
                        this.mWebView.m3532case();
                        return;
                    } else {
                        m3450this();
                        return;
                    }
                default:
                    return;
            }
        }
        m3447const();
    }

    public void setWebCodeCallback(jd jdVar) {
        this.f7908case = jdVar;
    }

    public void setWebViewListener(ProgressBarWebView.Cif cif) {
        this.f7913else = cif;
    }

    /* renamed from: this  reason: not valid java name */
    public final void m3450this() {
        if (this.f7911const) {
            m3446class(this.f7907break, this.f7921this, false);
            return;
        }
        String str = this.f7907break;
        ph phVar = this.mWebView.f8308if;
        if (phVar != null) {
            phVar.loadUrl(str);
        }
        m3446class(this.f7907break, false, true);
    }
}
