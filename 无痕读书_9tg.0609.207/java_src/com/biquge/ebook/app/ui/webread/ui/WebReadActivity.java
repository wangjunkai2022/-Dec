package com.biquge.ebook.app.ui.webread.ui;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.view.ViewStub;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.a1;
import com.apk.c60;
import com.apk.eg;
import com.apk.f6;
import com.apk.i;
import com.apk.jd;
import com.apk.kg;
import com.apk.o;
import com.apk.p0;
import com.apk.tt;
import com.apk.v;
import com.apk.yd;
import com.apk.zd;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;
import com.biquge.ebook.app.ui.webread.view.WebContentView;
import com.biquge.ebook.app.widget.RewardVideoAdView;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import java.util.Timer;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class WebReadActivity extends f6 {

    /* renamed from: break  reason: not valid java name */
    public c60 f7822break;

    /* renamed from: case  reason: not valid java name */
    public CollectBook f7823case;

    /* renamed from: class  reason: not valid java name */
    public boolean f7825class;

    /* renamed from: do  reason: not valid java name */
    public String f7826do;

    /* renamed from: else  reason: not valid java name */
    public RewardVideoAdView f7827else;

    /* renamed from: for  reason: not valid java name */
    public boolean f7828for;

    /* renamed from: goto  reason: not valid java name */
    public String f7829goto;

    /* renamed from: if  reason: not valid java name */
    public String f7830if;
    @BindView(R.id.adview_banner)
    public AdViewBanner mAdViewBanner;
    @BindView(R.id.popup_content_webview)
    public WebContentView mWebContentView;

    /* renamed from: new  reason: not valid java name */
    public boolean f7831new;

    /* renamed from: try  reason: not valid java name */
    public boolean f7833try;

    /* renamed from: this  reason: not valid java name */
    public boolean f7832this = false;

    /* renamed from: catch  reason: not valid java name */
    public final ProgressBarWebView.Cif f7824catch = new Cif();

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebReadActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements jd {
        public Cdo() {
        }

        @Override // com.apk.jd
        /* renamed from: continue */
        public void mo1188continue() {
            WebReadActivity.this.finish();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebReadActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements RewardVideoAdView.Cif {
        public Cfor() {
        }

        @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
        /* renamed from: do */
        public void mo905do() {
            RewardVideoActivity.q(WebReadActivity.this, 15, 10213);
        }

        @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
        /* renamed from: if */
        public void mo906if() {
            FragmentManagerActivity.i(WebReadActivity.this, ze.q(R.string.new_share_lb_title), "9");
        }

        @Override // com.biquge.ebook.app.widget.RewardVideoAdView.Cif
        public void onClose() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.ui.WebReadActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ProgressBarWebView.Cif {
        public Cif() {
        }

        /* renamed from: do  reason: not valid java name */
        public /* synthetic */ void m3426do(String str) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
            contentValues.put("externalUrl", str);
            LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", WebReadActivity.this.f7823case.getCollectId());
            ze.V();
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: for */
        public void mo1476for(WebView webView, String str, Bitmap bitmap) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: goto */
        public void mo1477goto() {
            WebReadActivity webReadActivity = WebReadActivity.this;
            if (webReadActivity.f7827else == null && !webReadActivity.f7825class) {
                webReadActivity.f7825class = true;
                a1.m12this().m13break(new zd(webReadActivity));
            }
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: instanceof */
        public void mo1478instanceof(WebView webView, final String str) {
            if (WebReadActivity.this.f7823case != null) {
                o m1921for = o.m1921for();
                Runnable runnable = new Runnable() { // from class: com.apk.sd
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebReadActivity.Cif.this.m3426do(str);
                    }
                };
                ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.execute(runnable);
                }
            }
            tt.f4763do.putString("SP_WEBVIEW_CACHE_MODE_TODAY_KEY", kg.m1498if());
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: interface */
        public void mo1479interface(String str) {
            WebReadActivity webReadActivity = WebReadActivity.this;
            if (webReadActivity.f7829goto == null) {
                webReadActivity.f7829goto = str;
                v m2734do = v.m2734do();
                String str2 = WebReadActivity.this.f7830if;
                if (m2734do == null) {
                    throw null;
                }
            }
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: static */
        public void mo1480static(WebView webView, String str) {
        }
    }

    public static void j(Context context, String str, boolean z, boolean z2, String str2) {
        k(context, str, z, z2, false, str2);
    }

    public static void k(Context context, String str, boolean z, boolean z2, boolean z3, String str2) {
        Intent intent = new Intent(context, WebReadActivity.class);
        intent.putExtra("WEBVIEW_SITE_OPEN_URL_KEY", str);
        intent.putExtra("WEBVIEW_SITE_IS_ZHUANMA_KEY", z);
        intent.putExtra("WEBVIEW_SITE_IS_DEFAULT_JS_KEY", z2);
        intent.putExtra("WEBVIEW_SITE_IS_OPEN_DOWNLOAD_KEY", z3);
        intent.putExtra("WEBVIEW_SOURCE_VALUE_KEY", str2);
        intent.putExtra("WEBVIEW_SITE_SOURCE_KEY", true);
        context.startActivity(intent);
    }

    public static void l(Context context, String str, boolean z, boolean z2, CollectBook collectBook) {
        Intent intent = new Intent(context, WebReadActivity.class);
        intent.putExtra("WEBVIEW_SITE_OPEN_URL_KEY", str);
        intent.putExtra("WEBVIEW_SITE_IS_ZHUANMA_KEY", z);
        intent.putExtra("WEBVIEW_SITE_IS_DEFAULT_JS_KEY", z2);
        intent.putExtra("WEBVIEW_SITE_IS_OPEN_DOWNLOAD_KEY", false);
        intent.putExtra("WEBVIEW_SITE_SOURCE_SHELF_KEY", collectBook);
        intent.putExtra("WEBVIEW_SOURCE_VALUE_KEY", "书架");
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_web_read_layout;
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        boolean z = false;
        this.mWebContentView.m3445catch(this.f7826do, this.f7828for, this.f7831new, false);
        if (this.f7833try) {
            this.mWebContentView.f7915for = true;
        }
        Cfinally m797else = Cfinally.m797else();
        if (m797else.f1345default != null && m797else.m808final() && Cfinally.m796do(m797else.f1345default, "bannerzhanwai") != null) {
            z = true;
        }
        if (z) {
            this.mAdViewBanner.m3271for(this, "bannerzhanwai");
        }
    }

    @Override // com.apk.f6
    public void initView() {
        Intent intent = getIntent();
        if (intent != null) {
            this.f7826do = intent.getStringExtra("WEBVIEW_SITE_OPEN_URL_KEY");
            this.f7828for = intent.getBooleanExtra("WEBVIEW_SITE_IS_ZHUANMA_KEY", true);
            this.f7831new = intent.getBooleanExtra("WEBVIEW_SITE_IS_DEFAULT_JS_KEY", false);
            this.f7833try = intent.getBooleanExtra("WEBVIEW_SITE_IS_OPEN_DOWNLOAD_KEY", false);
            if (intent.hasExtra("WEBVIEW_SITE_SOURCE_SHELF_KEY")) {
                this.f7823case = (CollectBook) intent.getSerializableExtra("WEBVIEW_SITE_SOURCE_SHELF_KEY");
            }
            this.f7830if = intent.getStringExtra("WEBVIEW_SOURCE_VALUE_KEY");
            if (intent.getBooleanExtra("WEBVIEW_SITE_SOURCE_KEY", false) && this.f7828for) {
                try {
                    ProgressBarWebView webView = this.mWebContentView.getWebView();
                    if (webView != null) {
                        webView.setInterceptRequest(true);
                    }
                    if (kg.m1498if().equals(tt.m2620do("SP_WEBVIEW_CACHE_MODE_TODAY_KEY", ""))) {
                        webView.getWebView().getSettings().setCacheMode(1);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        this.mWebContentView.setWebCodeCallback(new Cdo());
        this.mWebContentView.setWebViewListener(this.f7824catch);
    }

    @Override // com.apk.f6
    public boolean isDarkFont() {
        return true;
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void m(boolean z) {
        try {
            if (this.f7827else != null && z && this.f7827else.getVisibility() == 0) {
                return;
            }
            if (this.f7827else == null) {
                RewardVideoAdView rewardVideoAdView = (RewardVideoAdView) ((ViewStub) findViewById(R.id.read_book_reward_view)).inflate();
                this.f7827else = rewardVideoAdView;
                rewardVideoAdView.f8113try.setVisibility(8);
                this.f7827else.setTitle(a1.m12this().m1801else());
                this.f7827else.setDes(a1.m12this().m1802for());
                this.f7827else.setAdBtnTxt(a1.m12this().m1804if());
                this.f7827else.setShareBtnTxt(a1.m12this().m1799case());
                this.f7827else.setOnRewardBtnCallback(new Cfor());
            }
            NewShareDisBean m382for = Ccontinue.m379if().m382for();
            if (m382for != null && !m382for.isOnlyCheckTime() && this.f7827else != null) {
                this.f7827else.m3484if(true);
            }
            if (z) {
                if (this.f7827else != null) {
                    this.f7827else.setVisibility(0);
                }
            } else if (this.f7827else != null) {
                this.f7827else.setVisibility(8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10213) {
            if (i2 == -1) {
                try {
                    m(false);
                    eg.h(this, ze.r(R.string.read_reward_video_from_ad_tips_txt, a1.m12this().m1806try()), null);
                    a1.m12this().m14catch();
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            m(true);
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f7829goto != null && v.m2734do() == null) {
            throw null;
        }
        AdViewBanner adViewBanner = this.mAdViewBanner;
        if (adViewBanner != null) {
            adViewBanner.m3272new();
        }
        this.f7825class = false;
        ze.m3181public(this.mWebContentView.mWebView.getWebView());
        a1 m12this = a1.m12this();
        m12this.f6package = false;
        m12this.f3148break = false;
        Timer timer = m12this.f3153default;
        if (timer != null) {
            timer.cancel();
        }
        a1.f4private = null;
        p0.m2011super("CACHE_WEB_AD_KEY", Integer.valueOf(m12this.f3165return));
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AdViewBanner adViewBanner = this.mAdViewBanner;
        if (adViewBanner != null) {
            adViewBanner.f6314this = true;
        }
        a1 m12this = a1.m12this();
        if (m12this.f3169this) {
            return;
        }
        m12this.f6package = false;
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AdViewBanner adViewBanner = this.mAdViewBanner;
        if (adViewBanner != null) {
            adViewBanner.f6314this = false;
        }
        a1.m12this().f6package = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && !this.f7832this && this.f7828for) {
            boolean z2 = true;
            this.f7832this = true;
            Cfinally m797else = Cfinally.m797else();
            if ((m797else.f1351for == null || !m797else.m822super(true) || !i.m1177new("page_web_insert", m797else.f1351for.optInt("showInterval"), m797else.f1351for.optInt("maxcount")) || Cfinally.m796do(m797else.f1351for, "page_web_insert") == null) ? false : false) {
                c60 c60Var = new c60(this, new yd(this, "page_web_insert"), "page_web_insert");
                this.f7822break = c60Var;
                c60Var.m314try();
            }
        }
    }
}
