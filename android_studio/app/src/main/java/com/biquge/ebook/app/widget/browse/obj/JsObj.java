package com.biquge.ebook.app.widget.browse.obj;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.PointerIconCompat;
import com.apk.Ccontinue;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.c1;
import com.apk.eg;
import com.apk.ft;
import com.apk.kf;
import com.apk.mu;
import com.apk.n2;
import com.apk.o;
import com.apk.p0;
import com.apk.tt;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.biquge.ebook.app.bean.SameCommendBean;
import com.biquge.ebook.app.bean.SameTjHistory;
import com.biquge.ebook.app.bean.StoreConfigBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.expand.listen.bean.ListenDetail;
import com.expand.videoplayer.bean.VideoDetail;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicListDetailActivity;
import com.manhua.ui.activity.ComicReadActivity;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class JsObj {
    public String listenUrl;
    public final Activity mActivity;
    public final WebView mWebView;

    public JsObj(Activity activity, WebView webView) {
        this.mActivity = activity;
        this.mWebView = webView;
    }

    public static void openLogin(Activity activity) {
        activity.startActivityForResult(new Intent(activity, LoginActivity.class), PointerIconCompat.TYPE_GRABBING);
    }

    @JavascriptInterface
    public void back() {
        eg.i(this.mActivity, ze.q(R.string.is_exit_app_tips_tx), new ft() { // from class: com.biquge.ebook.app.widget.browse.obj.JsObj.6
            @Override // com.apk.ft
            public void onClick() {
                if (JsObj.this.mActivity != null) {
                    JsObj.this.mActivity.finish();
                }
            }
        }, null, true);
    }

    @JavascriptInterface
    public boolean checkAppIsInstall(String str) {
        return ze.G(str);
    }

    @JavascriptInterface
    public void decodeResForh5(String str) {
        final String decodeContent = CryptDesManager.decodeContent(str);
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.biquge.ebook.app.widget.browse.obj.JsObj.1
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView2 = JsObj.this.mWebView;
                    StringBuilder m1016super = Cgoto.m1016super("javascript:getDecodeResFromNative('");
                    m1016super.append(decodeContent);
                    m1016super.append("');");
                    webView2.loadUrl(m1016super.toString());
                }
            });
        }
    }

    @JavascriptInterface
    public void downloadFile(String str, String str2) {
        if (ze.G(str)) {
            ze.g0(this.mActivity, str);
        } else if (TextUtils.isEmpty(str2)) {
        } else {
            kf.m1482for(this.mActivity, str2, "推荐");
        }
    }

    @JavascriptInterface
    public void encryParamsForh5(String str) {
        final String encodeContent = CryptDesManager.encodeContent(str);
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.biquge.ebook.app.widget.browse.obj.JsObj.2
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView2 = JsObj.this.mWebView;
                    StringBuilder m1016super = Cgoto.m1016super("javascript:getEncryDatasFromNative('");
                    m1016super.append(encodeContent);
                    m1016super.append("');");
                    webView2.loadUrl(m1016super.toString());
                }
            });
        }
    }

    @JavascriptInterface
    public void erweimaURL(String str) {
        tt.f4763do.putString("SP_YU_POOLS_DOWNLOAD_HOST_VALUE_KEY", str);
    }

    @JavascriptInterface
    public void getAudioChapterData(final String str, final String str2) {
        new b1().m141do(new c1<JSONObject>() { // from class: com.biquge.ebook.app.widget.browse.obj.JsObj.3
            @Override // com.apk.c1
            public JSONObject doInBackground() {
                String str3;
                JSONArray optJSONArray;
                String str4;
                xw xwVar = xw.ALWAYS_FIRST_CACHE_THEN_REQUEST;
                String str5 = eg.m604native() + "/BookFiles/Html/" + ((Integer.parseInt(str3) / 1000) + 1) + "/" + str + "/" + str2;
                if (!str5.endsWith(".html")) {
                    str5 = Cgoto.m989case(str5, ".html");
                }
                JSONObject m2961super = x4.m2961super(str5, 180000L, xwVar);
                if (m2961super != null) {
                    JSONObject optJSONObject = m2961super.optJSONObject("data");
                    if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("exturl")) != null && optJSONArray.length() > 0) {
                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(0);
                        String optString = optJSONObject2.optString("SourceAddress");
                        List<StoreConfigBean> list = Ccontinue.m379if().f707case;
                        if (list != null) {
                            for (StoreConfigBean storeConfigBean : list) {
                                if ("tingshu".equals(storeConfigBean.getType())) {
                                    str4 = storeConfigBean.getParse_yu();
                                    break;
                                }
                            }
                        }
                        str4 = "";
                        JSONObject m2961super2 = x4.m2961super(optString.replace("convert://", str4), 180000L, xwVar);
                        if (m2961super2 != null) {
                            try {
                                optJSONObject2.put("urlData", m2961super2.optJSONObject("data"));
                            } catch (JSONException unused) {
                            }
                        }
                    }
                    return m2961super.optJSONObject("data");
                }
                return (JSONObject) super.doInBackground();
            }

            @Override // com.apk.c1
            public void onPostExecute(JSONObject jSONObject) {
                super.onPostExecute((AnonymousClass3) jSONObject);
                if (JsObj.this.mWebView != null) {
                    WebView webView = JsObj.this.mWebView;
                    StringBuilder m1016super = Cgoto.m1016super("javascript:initAudio('");
                    m1016super.append(jSONObject != null ? jSONObject.toString() : "");
                    m1016super.append("')");
                    webView.loadUrl(m1016super.toString());
                }
            }
        });
    }

    @JavascriptInterface
    public String getAudioData() {
        String str;
        int i;
        SameCommendBean.MovieBean tingshu;
        JSONObject jSONObject = new JSONObject();
        try {
            ListenDetail listenDetail = (ListenDetail) p0.m2001do("SP_TEMP_COMMEND_LISTENETAIL_KEY");
            if (listenDetail != null) {
                SameCommendBean sameCommendBean = Ccontinue.m379if().f712else;
                String str2 = "";
                int i2 = 0;
                if (sameCommendBean == null || (tingshu = sameCommendBean.getTingshu()) == null) {
                    str = "";
                    i = 0;
                } else {
                    i2 = tingshu.getTime_gap();
                    int time_total = tingshu.getTime_total();
                    String ys_pkg = tingshu.getYs_pkg();
                    str = tingshu.getYs_apk();
                    i = time_total;
                    str2 = ys_pkg;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("time_gap", i2);
                jSONObject2.put("time_total", i);
                jSONObject2.put("pkg", str2);
                jSONObject2.put("apk", str);
                jSONObject2.put("url", this.listenUrl);
                JSONObject jSONObject3 = null;
                try {
                    SameTjHistory m610return = eg.m610return("tingshu", listenDetail.getId());
                    if (m610return != null) {
                        String historyData = m610return.getHistoryData();
                        if (!TextUtils.isEmpty(historyData)) {
                            jSONObject3 = new JSONObject(historyData);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (jSONObject3 == null) {
                    jSONObject3 = new JSONObject();
                }
                jSONObject2.put("history", jSONObject3);
                jSONObject.put("config", jSONObject2);
                jSONObject.put("data", new JSONObject(Convert.toJson(listenDetail)));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public void getAudioSectionData(final String str) {
        new b1().m141do(new c1<JSONObject>() { // from class: com.biquge.ebook.app.widget.browse.obj.JsObj.4
            @Override // com.apk.c1
            public JSONObject doInBackground() {
                String str2;
                String str3 = str;
                StringBuilder sb = new StringBuilder();
                List<StoreConfigBean> list = Ccontinue.m379if().f707case;
                if (list != null) {
                    for (StoreConfigBean storeConfigBean : list) {
                        if ("tingshu".equals(storeConfigBean.getType())) {
                            str2 = storeConfigBean.getDir_yu();
                            break;
                        }
                    }
                }
                str2 = "";
                sb.append(str2);
                sb.append("/BookFiles/Html/");
                sb.append((Integer.parseInt(str3) / 1000) + 1);
                sb.append("/");
                sb.append(str3);
                sb.append("/index.html");
                JSONObject m2961super = x4.m2961super(sb.toString(), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST);
                if (m2961super != null) {
                    return m2961super.optJSONObject("data");
                }
                return (JSONObject) super.doInBackground();
            }

            @Override // com.apk.c1
            public void onPostExecute(JSONObject jSONObject) {
                super.onPostExecute((AnonymousClass4) jSONObject);
                if (JsObj.this.mWebView != null) {
                    WebView webView = JsObj.this.mWebView;
                    StringBuilder m1016super = Cgoto.m1016super("javascript:initSection('");
                    m1016super.append(jSONObject != null ? jSONObject.toString() : "");
                    m1016super.append("')");
                    webView.loadUrl(m1016super.toString());
                }
            }
        });
    }

    @JavascriptInterface
    public String getVideoData() {
        String str;
        int i;
        SameCommendBean.MovieBean movie;
        JSONObject jSONObject = new JSONObject();
        try {
            VideoDetail videoDetail = (VideoDetail) p0.m2001do("SP_TEMP_COMMEND_VIDEODETAIL_KEY");
            if (videoDetail != null) {
                SameCommendBean sameCommendBean = Ccontinue.m379if().f712else;
                String str2 = "";
                int i2 = 0;
                if (sameCommendBean == null || (movie = sameCommendBean.getMovie()) == null) {
                    str = "";
                    i = 0;
                } else {
                    i2 = movie.getTime_gap();
                    int time_total = movie.getTime_total();
                    String ys_pkg = movie.getYs_pkg();
                    str = movie.getYs_apk();
                    i = time_total;
                    str2 = ys_pkg;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("time_gap", i2);
                jSONObject2.put("time_total", i);
                jSONObject2.put("pkg", str2);
                jSONObject2.put("apk", str);
                JSONObject jSONObject3 = null;
                try {
                    SameTjHistory m610return = eg.m610return("movie", videoDetail.getId());
                    if (m610return != null) {
                        String historyData = m610return.getHistoryData();
                        if (!TextUtils.isEmpty(historyData)) {
                            jSONObject3 = new JSONObject(historyData);
                        }
                    }
                } catch (Exception unused) {
                }
                if (jSONObject3 == null) {
                    jSONObject3 = new JSONObject();
                }
                jSONObject2.put("history", jSONObject3);
                jSONObject.put("config", jSONObject2);
                jSONObject.put("data", new JSONObject(Convert.toJson(videoDetail)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public void loginResForh5(String str) {
        openLogin(this.mActivity);
    }

    @JavascriptInterface
    public void openDetail(String str, String str2, String str3) {
        try {
            if ("manhua".equals(str3)) {
                ComicDetailActivity.n(this.mActivity, mu.m1765final(str, str2, ""));
            } else if ("novel".equals(str3)) {
                BookDetailActivity.o(this.mActivity, n2.m1811catch(str, str2, ""));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void openReader(String str, String str2, String str3) {
        try {
            if ("manhua".equals(str3)) {
                ComicReadActivity.J(this.mActivity, str);
            } else if ("novel".equals(str3)) {
                NewBookReadActivity.b0(this.mActivity, str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void qrcodeImaURL(String str) {
        tt.f4763do.putString("SP_YU_POOLS_QRCODE_IMAGE_KEY", str);
    }

    @JavascriptInterface
    public void saveProgress(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            final String optString = jSONObject.optString("type");
            final String optString2 = jSONObject.optString("id");
            jSONObject.optString("name");
            jSONObject.optString("index");
            final String optString3 = jSONObject.optString("cname");
            jSONObject.optString(NotificationCompat.CATEGORY_PROGRESS);
            final String optString4 = jSONObject.optString("protxt");
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.biquge.ebook.app.widget.browse.obj.JsObj.5
                @Override // java.lang.Runnable
                public void run() {
                    if ("movie".equals(optString)) {
                        eg.o(optString, optString2, optString3, optString4, str);
                    } else if ("tingshu".equals(optString)) {
                        eg.o(optString, optString2, optString3, optString4, str);
                    }
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setListenUrl(String str) {
        this.listenUrl = str;
    }

    @JavascriptInterface
    public void setVideoTimeoutFlag() {
    }

    @JavascriptInterface
    public void toManhuaDetail(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("Id");
            String optString2 = jSONObject.optString("Name");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            openDetail(optString, optString2, "manhua");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void toManhuaRead(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("Id");
            String optString2 = jSONObject.optString("Name");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            openReader(optString, optString2, "manhua");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void toNewH5Screen(String str) {
        toNewH5Screen(str, null);
    }

    @JavascriptInterface
    public void toNovelDetail(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("Id");
            String optString2 = jSONObject.optString("Name");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            openDetail(optString, optString2, "novel");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void toNovelRead(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("Id");
            String optString2 = jSONObject.optString("Name");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            openReader(optString, optString2, "novel");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void toShudanDetail(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("Id");
                String optString2 = jSONObject.optString("Name");
                String optString3 = jSONObject.optString("type");
                if (!TextUtils.isEmpty(optString)) {
                    if ("novel".equals(optString3)) {
                        BookListDetailActivity.k(this.mActivity, optString, optString2);
                    } else {
                        ComicListDetailActivity.k(this.mActivity, optString, optString2);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void loginResForh5() {
        openLogin(this.mActivity);
    }

    @JavascriptInterface
    public void toNewH5Screen(String str, String str2) {
        try {
            WebViewActivity.i(this.mActivity, null, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
