package com.apk;

import android.app.Activity;
import android.content.ContentValues;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.webread.WebChapterBatchBean;
import com.biquge.ebook.app.bean.webread.WebSiteRulesBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.LitePal;
import org.litepal.parser.LitePalParser;
/* compiled from: WebPresenter.java */
/* loaded from: classes8.dex */
public class qd extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final md f3830for;

    /* compiled from: WebPresenter.java */
    /* renamed from: com.apk.qd$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<List<ChapterBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f3831do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ int f3832for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ WebSiteBean f3833if;

        public Cdo(String str, WebSiteBean webSiteBean, int i) {
            this.f3831do = str;
            this.f3833if = webSiteBean;
            this.f3832for = i;
        }

        @Override // com.apk.c1
        public List<ChapterBean> doInBackground() {
            WebSiteRulesBean m1859goto = nd.m1859goto(this.f3831do, this.f3833if);
            if (m1859goto != null) {
                return nd.m1867try(m1859goto.getBaseUrl(), true);
            }
            return nd.m1867try(this.f3831do, true);
        }

        @Override // com.apk.c1
        public void onPostExecute(List<ChapterBean> list) {
            md mdVar;
            List<ChapterBean> list2 = list;
            super.onPostExecute(list2);
            if (list2 == null || list2.size() <= 0 || (mdVar = qd.this.f3830for) == null) {
                return;
            }
            mdVar.mo1690do(this.f3832for, null, list2);
        }
    }

    /* compiled from: WebPresenter.java */
    /* renamed from: com.apk.qd$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<List<ChapterBean>> {

        /* renamed from: do  reason: not valid java name */
        public WebChapterBatchBean f3835do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ WebSiteBean f3836for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f3837if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ int f3838new;

        public Cif(String str, WebSiteBean webSiteBean, int i) {
            this.f3837if = str;
            this.f3836for = webSiteBean;
            this.f3838new = i;
        }

        @Override // com.apk.c1
        public List<ChapterBean> doInBackground() {
            WebSiteRulesBean m1859goto = nd.m1859goto(this.f3837if, this.f3836for);
            if (m1859goto != null) {
                String baseUrl = m1859goto.getBaseUrl();
                String m1868while = nd.m1868while(baseUrl);
                if (!TextUtils.isEmpty(m1868while)) {
                    this.f3835do = nd.m1865this(baseUrl, m1868while, m1859goto, this.f3836for);
                    return nd.m1867try(baseUrl, true);
                }
            }
            WebSiteRulesBean m1854const = nd.m1854const(this.f3837if);
            String m1868while2 = nd.m1868while(this.f3837if);
            if (!TextUtils.isEmpty(m1868while2)) {
                this.f3835do = nd.m1865this(this.f3837if, m1868while2, m1854const, this.f3836for);
                return nd.m1867try(this.f3837if, true);
            }
            return (List) super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(List<ChapterBean> list) {
            md mdVar;
            List<ChapterBean> list2 = list;
            super.onPostExecute(list2);
            if (list2 == null || (mdVar = qd.this.f3830for) == null) {
                return;
            }
            mdVar.mo1690do(this.f3838new, this.f3835do, list2);
        }
    }

    public qd(Activity activity, md mdVar) {
        this.f3559do = activity;
        this.f3830for = mdVar;
    }

    /* renamed from: case  reason: not valid java name */
    public static void m2112case() {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        String str;
        String str2;
        CollectBook collectBook;
        JSONObject jSONObject;
        try {
            JSONObject m2961super = x4.m2961super(w.m2845extends() + "/api/v1/User/GetBookCollect?userId=" + v0.m2736try().m2746goto(), 0L, xw.NO_CACHE);
            if (m2961super == null || (optJSONObject = m2961super.optJSONObject("data")) == null || (optJSONArray = optJSONObject.optJSONArray("items")) == null) {
                return;
            }
            int length = optJSONArray.length();
            int i = 0;
            int i2 = 0;
            while (i2 < length) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i2);
                if (optJSONObject2 != null) {
                    String optString = optJSONObject2.optString("bookId");
                    String optString2 = optJSONObject2.optString("name");
                    String optString3 = optJSONObject2.optString("img");
                    String optString4 = optJSONObject2.optString(NotificationCompat.CarExtender.KEY_AUTHOR);
                    String optString5 = optJSONObject2.optString("bookUrl");
                    if ("null".equals(optString5)) {
                        optString5 = null;
                    }
                    String optString6 = optJSONObject2.optString("firstChaptherUrl");
                    if ("null".equals(optString6)) {
                        optString6 = null;
                    }
                    String optString7 = optJSONObject2.optString("externalUrl");
                    if ("null".equals(optString7)) {
                        optString7 = null;
                    }
                    JSONArray optJSONArray2 = optJSONObject2.optJSONArray("chapters");
                    if (optJSONArray2 == null || optJSONArray2.length() <= 0 || (jSONObject = optJSONArray2.getJSONObject(i)) == null) {
                        str = null;
                        str2 = null;
                    } else {
                        str2 = jSONObject.optString("name");
                        str = jSONObject.optString("url");
                    }
                    if (!TextUtils.isEmpty(optString7)) {
                        try {
                            if (!TextUtils.isEmpty(optString7)) {
                                collectBook = (CollectBook) LitePal.where("externalUrl = ?", optString7).findFirst(CollectBook.class);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        collectBook = null;
                    } else {
                        collectBook = n2.m1841throw(optString);
                    }
                    if (collectBook != null) {
                        if (TextUtils.isEmpty(optString7) && !optString.startsWith("wap_") && !collectBook.getLastCapterId().equals(str)) {
                            WebSiteBean m1853class = nd.m1853class(optString);
                            m1853class.setLastChapterUrl(str);
                            m1853class.setLastChapterName(str2);
                            nd.m1861import(optString, m1853class);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("lastCapterId", str);
                            contentValues.put("lastCapterName", str2);
                            contentValues.put("isNew", Boolean.TRUE);
                            LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", collectBook.getCollectId());
                        }
                    } else {
                        Book book = new Book();
                        book.setId(optString);
                        book.setName(optString2);
                        book.setImg(optString3);
                        book.setAuthor(optString4);
                        book.setWebSite(true);
                        book.setExternalUrl(optString7);
                        book.setChapterUrl(optString5);
                        book.setLastChapterId(str);
                        book.setLastChapter(str2);
                        n2.y(book);
                        WebSiteBean webSiteBean = new WebSiteBean();
                        webSiteBean.setTitle(optString2);
                        webSiteBean.setNovelId(optString);
                        webSiteBean.setAuthor(optString4);
                        webSiteBean.setImg(optString3);
                        webSiteBean.setFirstChapterUrl(optString6);
                        webSiteBean.setChapterUrl(optString5);
                        if (!TextUtils.isEmpty(str2)) {
                            webSiteBean.setLastChapterName(str2);
                        }
                        if (!TextUtils.isEmpty(str)) {
                            webSiteBean.setLastChapterUrl(str);
                        }
                        nd.m1861import(optString, webSiteBean);
                    }
                    i2++;
                    i = 0;
                }
                i2++;
                i = 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static void m2113catch(final String str, final String str2, final String str3, final String str4) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.ld
                @Override // java.lang.Runnable
                public final void run() {
                    qd.m2117new(str, str2, str3, str4);
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
                return;
            }
            return;
        }
        m2117new(str, str2, str3, str4);
    }

    /* renamed from: else  reason: not valid java name */
    public static List<ChapterBean> m2114else(String str, WebSiteBean webSiteBean) {
        WebSiteRulesBean m1859goto = nd.m1859goto(str, webSiteBean);
        if (m1859goto != null) {
            String baseUrl = m1859goto.getBaseUrl();
            String m1868while = nd.m1868while(baseUrl);
            if (!TextUtils.isEmpty(m1868while)) {
                nd.m1865this(baseUrl, m1868while, m1859goto, webSiteBean);
                return nd.m1867try(baseUrl, true);
            }
        }
        WebSiteRulesBean m1854const = nd.m1854const(str);
        String m1868while2 = nd.m1868while(str);
        if (TextUtils.isEmpty(m1868while2)) {
            return null;
        }
        nd.m1865this(str, m1868while2, m1854const, webSiteBean);
        return nd.m1867try(str, true);
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2115for(qd qdVar, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        if (qdVar == null) {
            throw null;
        }
        new b1().m141do(new pd(qdVar, str2, z, str, z2, z3, z4));
    }

    /* renamed from: goto  reason: not valid java name */
    public static b6 m2116goto(String str, String str2, int i, boolean z) {
        String m1019this;
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        if (z) {
            m1019this = w.m2847finally(str, str2, i);
        } else {
            StringBuilder sb = new StringBuilder();
            String m2620do = tt.m2620do("SP_WEB_SEARCH_HOST_KEY", "");
            if (TextUtils.isEmpty(m2620do)) {
                m2620do = "https://searchapi.apptianwangxing.com";
            }
            Cgoto.m993continue(sb, m2620do, "/api/v1/Search/", str, "/0/");
            m1019this = Cgoto.m1019this(sb, i, ".html");
        }
        JSONObject m2963throw = x4.m2963throw(m1019this, 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new rd(str, System.currentTimeMillis()), null);
        List list = null;
        if (m2963throw == null || (optJSONObject = m2963throw.optJSONObject("data")) == null || (optJSONArray = optJSONObject.optJSONArray(LitePalParser.NODE_LIST)) == null) {
            return null;
        }
        try {
            list = (List) Convert.fromJson(optJSONArray.toString(), new rf().getType());
        } catch (Exception unused) {
        }
        return new b6(list, optJSONObject.optBoolean("hasnext"));
    }

    /* renamed from: new  reason: not valid java name */
    public static void m2117new(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("UserId", v0.m2736try().m2746goto());
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("externalUrl", str4);
            } else {
                jSONObject.put("BookId", str);
            }
            jSONObject.put("bookName", str2);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("bookUrl", str3);
            }
            JSONObject m2962switch = x4.m2962switch(w.m2845extends() + "/api/v1/User/SaveCollect", jSONObject);
            if (m2962switch == null || m2962switch.optInt(NotificationCompat.CATEGORY_STATUS) != 1 || !v0.m2736try().m2741const() || ((CollectBook) LitePal.where("collectId = ?", str).findFirst(CollectBook.class)) == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("loginName", v0.m2736try().m2738case());
            LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static boolean m2119try(String str, String str2, String str3) {
        int optInt;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("UserId", v0.m2736try().m2746goto());
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("externalUrl", str3);
                jSONObject.put("bookName", str2);
            } else {
                jSONObject.put("BookId", str);
            }
            JSONObject m2962switch = x4.m2962switch(w.m2845extends() + "/api/v1/User/DeleteCollect", jSONObject);
            if (m2962switch != null && ((optInt = m2962switch.optInt(NotificationCompat.CATEGORY_STATUS)) == 1 || optInt == 1001)) {
                n2.m1812class(new String[]{str});
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* renamed from: break  reason: not valid java name */
    public void m2120break(int i, String str, WebSiteBean webSiteBean) {
        if (da.m421final(webSiteBean.getNovelId())) {
            new b1().m141do(new Cdo(str, webSiteBean, i));
        }
        new b1().m141do(new Cif(str, webSiteBean, i));
    }
}
