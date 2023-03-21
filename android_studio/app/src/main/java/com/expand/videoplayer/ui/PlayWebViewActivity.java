package com.expand.videoplayer.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.apk.b1;
import com.apk.c1;
import com.apk.eg;
import com.apk.f6;
import com.apk.ft;
import com.apk.ih;
import com.apk.iu;
import com.apk.p0;
import com.apk.u0;
import com.apk.x4;
import com.apk.xt;
import com.apk.xw;
import com.apk.yt;
import com.apk.ze;
import com.biquge.ebook.app.widget.AppProgressBar;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import com.biquge.ebook.app.widget.browse.obj.JsObj;
import com.expand.listen.bean.ListenDetail;
import com.expand.videoplayer.bean.VideoDetail;
import com.jni.crypt.project.CryptDesManager;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class PlayWebViewActivity extends f6 {

    /* renamed from: case  reason: not valid java name */
    public yt f9420case;

    /* renamed from: do  reason: not valid java name */
    public WebView f9421do;

    /* renamed from: else  reason: not valid java name */
    public iu f9422else;

    /* renamed from: for  reason: not valid java name */
    public String f9423for;

    /* renamed from: if  reason: not valid java name */
    public String f9424if;
    @BindView(R.id.activity_play_layout)
    public FrameLayout mFrameLayout;
    @BindView(R.id.activity_play_loadingview)
    public AppProgressBar mLoadingView;
    @BindView(R.id.activity_play_webview_webview)
    public ProgressBarWebView mProgressBarWebView;

    /* renamed from: new  reason: not valid java name */
    public String f9425new;

    /* renamed from: try  reason: not valid java name */
    public boolean f9426try;

    /* renamed from: com.expand.videoplayer.ui.PlayWebViewActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends WebViewClient {
        public Cdo() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AppProgressBar appProgressBar = PlayWebViewActivity.this.mLoadingView;
            if (appProgressBar != null) {
                appProgressBar.setVisibility(8);
            }
        }
    }

    /* renamed from: com.expand.videoplayer.ui.PlayWebViewActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1<Object> {
        public Cfor() {
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            JSONObject optJSONObject;
            JSONObject m2961super = x4.m2961super(PlayWebViewActivity.this.f9423for, 43200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST);
            if (m2961super != null && (optJSONObject = m2961super.optJSONObject("data")) != null) {
                if ("movie".equals(PlayWebViewActivity.this.f9425new)) {
                    VideoDetail videoDetail = (VideoDetail) ze.m3194while(VideoDetail.class, optJSONObject);
                    if (videoDetail != null) {
                        CryptDesManager.decodeClass(videoDetail);
                        p0.m2011super("SP_TEMP_COMMEND_VIDEODETAIL_KEY", videoDetail);
                    }
                } else if ("tingshu".equals(PlayWebViewActivity.this.f9425new)) {
                    ListenDetail listenDetail = (ListenDetail) ze.m3194while(ListenDetail.class, optJSONObject);
                    if (listenDetail != null) {
                        CryptDesManager.decodeClass(listenDetail);
                        p0.m2011super("SP_TEMP_COMMEND_LISTENETAIL_KEY", listenDetail);
                    }
                    p0.m2011super("SP_TEMP_COMMEND_LISTENETAIL_KEY", listenDetail);
                }
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            PlayWebViewActivity playWebViewActivity = PlayWebViewActivity.this;
            playWebViewActivity.f9421do.loadUrl(playWebViewActivity.f9424if);
        }
    }

    /* renamed from: com.expand.videoplayer.ui.PlayWebViewActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements xt {
        public Cif(PlayWebViewActivity playWebViewActivity) {
        }
    }

    /* renamed from: com.expand.videoplayer.ui.PlayWebViewActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ft {
        public Cnew() {
        }

        @Override // com.apk.ft
        public void onClick() {
            PlayWebViewActivity.this.finish();
        }
    }

    /* renamed from: com.expand.videoplayer.ui.PlayWebViewActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends WebChromeClient {

        /* renamed from: do  reason: not valid java name */
        public View f9430do;

        /* renamed from: if  reason: not valid java name */
        public WebChromeClient.CustomViewCallback f9432if;

        public Ctry(Cdo cdo) {
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            PlayWebViewActivity.this.f9421do.setVisibility(0);
            View view = this.f9430do;
            if (view == null) {
                return;
            }
            view.setVisibility(8);
            PlayWebViewActivity.this.mFrameLayout.removeView(this.f9430do);
            this.f9432if.onCustomViewHidden();
            this.f9430do = null;
            PlayWebViewActivity.this.setRequestedOrientation(1);
            super.onHideCustomView();
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
            if (this.f9430do != null) {
                customViewCallback.onCustomViewHidden();
                return;
            }
            this.f9430do = view;
            PlayWebViewActivity.this.mFrameLayout.addView(view);
            this.f9432if = customViewCallback;
            PlayWebViewActivity.this.f9421do.setVisibility(8);
            PlayWebViewActivity.this.setRequestedOrientation(0);
        }
    }

    public static void j(Context context, String str, String str2, String str3, String str4) {
        Intent intent = new Intent(context, PlayWebViewActivity.class);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("WEBVIEW_TITLE_KEY", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("WEBVIEW_URL_KEY", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            intent.putExtra("WEBVIEW_REQUEST_URL_KEY", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            intent.putExtra("WEBVIEW_SOURCE_TYPE_KEY", str4);
        }
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_video_play_webview;
    }

    public void i(boolean z) {
        try {
            if (z) {
                getWindow().addFlags(128);
            } else {
                getWindow().clearFlags(128);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        JsObj jsObj = new JsObj(this, this.f9421do);
        jsObj.setListenUrl(this.f9424if);
        this.f9421do.addJavascriptInterface(jsObj, "vPlay");
        this.f9421do.addJavascriptInterface(jsObj, "aPlay");
        if (TextUtils.isEmpty(this.f9423for)) {
            this.f9421do.loadUrl(this.f9424if);
        } else {
            new b1().m141do(new Cfor());
        }
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
        getWindow().setFlags(16777216, 16777216);
        iu m1273super = iu.m1273super(this);
        this.f9422else = m1273super;
        m1273super.f2235class.f767goto = false;
        m1273super.f2235class.f761do = ContextCompat.getColor(m1273super.f2238do, 17170444);
        m1273super.m1281else();
        Intent intent = getIntent();
        intent.getStringExtra("WEBVIEW_TITLE_KEY");
        this.f9424if = intent.getStringExtra("WEBVIEW_URL_KEY");
        this.f9423for = intent.getStringExtra("WEBVIEW_REQUEST_URL_KEY");
        this.f9425new = intent.getStringExtra("WEBVIEW_SOURCE_TYPE_KEY");
        ih webView = this.mProgressBarWebView.getWebView();
        this.f9421do = webView;
        webView.setWebChromeClient(new Ctry(null));
        this.f9421do.setWebViewClient(new Cdo());
        this.f9420case = new yt(this, new Cif(this));
        i(true);
    }

    @Override // com.apk.f6
    public boolean isImmersionBarEnabled() {
        return false;
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void k(boolean z) {
        Window window = getWindow();
        if (z) {
            window.setFlags(1024, 1024);
            if (u0.m2663do().m2665if()) {
                u0.m2664for(this, false, false, false);
            }
        } else {
            window.setFlags(2048, 1024);
            if (u0.m2663do().m2665if()) {
                u0.m2664for(this, true, true, false);
            }
        }
        setWindowStatusBarColor(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f9426try) {
            setRequestedOrientation(1);
            return;
        }
        AppProgressBar appProgressBar = this.mLoadingView;
        if (appProgressBar != null && appProgressBar.getVisibility() == 0) {
            eg.i(this, ze.q(R.string.is_exit_app_tips_tx), new Cnew(), null, true);
            return;
        }
        WebView webView = this.f9421do;
        if (webView != null) {
            webView.loadUrl("javascript:canBack()");
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2) {
            this.f9426try = true;
            k(true);
            return;
        }
        this.f9426try = false;
        k(false);
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        i(false);
        super.onDestroy();
        WebView webView = this.f9421do;
        if (webView != null) {
            ze.m3181public(webView);
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        WebView webView = this.f9421do;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        WebView webView = this.f9421do;
        if (webView != null) {
            webView.onResume();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        OrientationEventListener orientationEventListener;
        super.onStart();
        yt ytVar = this.f9420case;
        if (ytVar == null || (orientationEventListener = ytVar.f6070if) == null) {
            return;
        }
        orientationEventListener.enable();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        OrientationEventListener orientationEventListener;
        super.onStop();
        yt ytVar = this.f9420case;
        if (ytVar != null && (orientationEventListener = ytVar.f6070if) != null) {
            orientationEventListener.disable();
        }
        WebView webView = this.f9421do;
        if (webView != null) {
            webView.loadUrl("javascript:triggerSave()");
        }
    }
}
