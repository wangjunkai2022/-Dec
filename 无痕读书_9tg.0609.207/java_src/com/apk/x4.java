package com.apk;

import android.app.Activity;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.ArrayMap;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.app.Person;
import com.apk.zu;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.InitConfNews;
import com.biquge.ebook.app.bean.MyInfoMsgBean;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.bean.SearchPlatform;
import com.biquge.ebook.app.bean.SearchTop;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookNovelDirActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.jni.crypt.project.CryptDesManager;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.impl.ConfirmPopupView;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.data.bean.ComicImageConifg;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicNovelDirActivity;
import com.manhua.ui.activity.ComicReadActivity;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.tencent.bugly.Bugly;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import javax.net.ssl.SSLHandshakeException;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.LitePal;
import org.litepal.parser.LitePalParser;
/* compiled from: PublicPresenter.java */
/* loaded from: classes8.dex */
public class x4 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final w5 f5453for;

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends yv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicBean f5454do;

        public Ccase(ComicBean comicBean) {
            this.f5454do = comicBean;
        }

        @Override // com.apk.yv
        /* renamed from: if */
        public void mo308if(BasePopupView basePopupView) {
            try {
                TextView textView = (TextView) basePopupView.findViewById(R.id.a8w);
                if (textView != null) {
                    String charSequence = textView.getText().toString();
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
                    spannableStringBuilder.setSpan(new uc(x4.this.f3559do, false, this.f5454do.getId(), this.f5454do.getName()), charSequence.indexOf("《"), charSequence.indexOf("》") + 1, 17);
                    textView.setMovementMethod(LinkMovementMethod.getInstance());
                    textView.setText(spannableStringBuilder);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends JsonCallback<LzyResponse<List<SearchTop>>> {
        public Cdo(String str) {
            super(str);
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<List<SearchTop>>> iyVar) {
            List<SearchTop> list;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null || x4.this.f5453for == null) {
                        return;
                    }
                    x4.this.f5453for.mo2904new(list);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<List<SearchTop>>> iyVar) {
            List<SearchTop> list;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null || x4.this.f5453for == null) {
                        return;
                    }
                    x4.this.f5453for.mo2904new(list);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse extends c1<ComicCollectBean> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f5457do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f5458for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f5459if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f5460new;

        public Celse(boolean z, String str, boolean z2, String str2) {
            this.f5457do = z;
            this.f5459if = str;
            this.f5458for = z2;
            this.f5460new = str2;
        }

        @Override // com.apk.c1
        public ComicCollectBean doInBackground() {
            ComicCollectBean m1766finally = mu.m1766finally(this.f5459if);
            if (m1766finally == null) {
                ComicBean m3134super = z2.m3134super(this.f5459if, true);
                if (m3134super != null) {
                    mu.w(m3134super, true);
                }
                m1766finally = mu.m1766finally(this.f5459if);
            }
            if (m1766finally != null) {
                if (v.m2734do() != null) {
                    if (this.f5458for) {
                        mu.B(this.f5459if, String.valueOf(System.currentTimeMillis()));
                    }
                    ze.V();
                    m1766finally.setGroupTitle(this.f5460new);
                } else {
                    throw null;
                }
            }
            return m1766finally;
        }

        @Override // com.apk.c1
        public void onPostExecute(ComicCollectBean comicCollectBean) {
            ComicCollectBean comicCollectBean2 = comicCollectBean;
            super.onPostExecute(comicCollectBean2);
            if (comicCollectBean2 == null || !this.f5457do) {
                return;
            }
            x4.super.m2016do();
            ComicNovelDirActivity.j(x4.this.f3559do, comicCollectBean2);
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            if (this.f5457do) {
                x4.super.m2017if();
            }
        }
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends yv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Book f5462do;

        public Cfor(Book book) {
            this.f5462do = book;
        }

        @Override // com.apk.yv
        /* renamed from: if */
        public void mo308if(BasePopupView basePopupView) {
            try {
                TextView textView = (TextView) basePopupView.findViewById(R.id.a8w);
                if (textView != null) {
                    String charSequence = textView.getText().toString();
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
                    spannableStringBuilder.setSpan(new uc(x4.this.f3559do, true, this.f5462do.getId(), this.f5462do.getName()), charSequence.indexOf("《"), charSequence.indexOf("》") + 1, 17);
                    textView.setMovementMethod(LinkMovementMethod.getInstance());
                    textView.setText(spannableStringBuilder);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cgoto {
        /* renamed from: do */
        void mo162do(boolean z, int i, String str);

        /* renamed from: if */
        void mo163if();
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements uv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f5464do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f5465for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Book f5466if;

        public Cif(String str, Book book, boolean z) {
            this.f5464do = str;
            this.f5466if = book;
            this.f5465for = z;
        }

        @Override // com.apk.uv
        public void onConfirm() {
            v m2734do = v.m2734do();
            String str = this.f5464do;
            if (m2734do != null) {
                try {
                    if (!"".equals(str) && !"to_detail".equals(this.f5464do)) {
                        if ("to_chapterlist".equals(this.f5464do)) {
                            CollectBook m1841throw = n2.m1841throw(this.f5466if.getId());
                            if (m1841throw != null) {
                                BookNovelDirActivity.j(x4.this.f3559do, m1841throw, null);
                            } else {
                                x4.this.m2975this(this.f5466if.getId(), this.f5465for, this.f5464do, true);
                            }
                        } else if ("to_read".equals(this.f5464do)) {
                            NewBookReadActivity.b0(x4.this.f3559do, this.f5466if.getId());
                        } else {
                            NewBookReadActivity.Z(x4.this.f3559do, this.f5466if, this.f5464do, "shelf");
                        }
                        return;
                    }
                    BookDetailActivity.r(x4.this.f3559do, this.f5466if);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            throw null;
        }
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends c1<CollectBook> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f5468do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f5469for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f5470if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f5471new;

        public Cnew(boolean z, String str, boolean z2, String str2) {
            this.f5468do = z;
            this.f5470if = str;
            this.f5469for = z2;
            this.f5471new = str2;
        }

        @Override // com.apk.c1
        public CollectBook doInBackground() {
            CollectBook m1841throw = n2.m1841throw(this.f5470if);
            if (m1841throw == null) {
                Book m2761throw = v3.m2761throw(this.f5470if, true);
                if (m2761throw != null) {
                    n2.u(m2761throw, true);
                }
                m1841throw = n2.m1841throw(this.f5470if);
            }
            if (m1841throw != null) {
                if (v.m2734do() != null) {
                    if (this.f5469for) {
                        n2.H(this.f5470if, String.valueOf(System.currentTimeMillis()));
                    }
                    ze.V();
                    m1841throw.setGroupTitle(this.f5471new);
                } else {
                    throw null;
                }
            }
            return m1841throw;
        }

        @Override // com.apk.c1
        public void onPostExecute(CollectBook collectBook) {
            CollectBook collectBook2 = collectBook;
            super.onPostExecute(collectBook2);
            if (collectBook2 == null || !this.f5468do) {
                return;
            }
            x4.super.m2016do();
            BookNovelDirActivity.j(x4.this.f3559do, collectBook2, null);
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            if (this.f5468do) {
                x4.super.m2017if();
            }
        }
    }

    /* compiled from: PublicPresenter.java */
    /* renamed from: com.apk.x4$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements uv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f5473do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f5474for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicBean f5475if;

        public Ctry(String str, ComicBean comicBean, boolean z) {
            this.f5473do = str;
            this.f5475if = comicBean;
            this.f5474for = z;
        }

        @Override // com.apk.uv
        public void onConfirm() {
            try {
                if (v.m2734do() != null) {
                    if (!"".equals(this.f5473do) && !"to_detail".equals(this.f5473do)) {
                        if ("to_chapterlist".equals(this.f5473do)) {
                            ComicCollectBean m1766finally = mu.m1766finally(this.f5475if.getId());
                            if (m1766finally != null) {
                                ComicNovelDirActivity.j(x4.this.f3559do, m1766finally);
                                return;
                            } else {
                                x4.this.m2969goto(this.f5475if.getId(), this.f5474for, this.f5473do, true);
                                return;
                            }
                        } else if ("to_read".equals(this.f5473do)) {
                            ComicReadActivity.J(x4.this.f3559do, this.f5475if.getId());
                            return;
                        } else {
                            ComicReadActivity.G(x4.this.f3559do, this.f5475if, this.f5473do);
                            return;
                        }
                    }
                    ComicDetailActivity.n(x4.this.f3559do, this.f5475if);
                    return;
                }
                throw null;
            } catch (Exception unused) {
            }
        }
    }

    public x4(Activity activity, w5 w5Var) {
        this.f3559do = activity;
        this.f5453for = w5Var;
    }

    /* renamed from: break  reason: not valid java name */
    public static void m2947break(String str) {
        if ("SP_HOST_APP_INIT_KEY".equals(str)) {
            p0.m2010public("SP_HOST_APP_INIT_KEY", p0.m1997case("SP_HOST_APP_INIT_KEY") + 1);
        } else if ("SP_HOST_XZ_XS_KEY".equals(str)) {
            p0.m2010public("SP_HOST_XZ_XS_KEY", p0.m1997case("SP_HOST_XZ_XS_KEY") + 1);
        } else if ("SP_HOST_CHAP_XS_KEY".equals(str)) {
            p0.m2010public("SP_HOST_CHAP_XS_KEY", p0.m1997case("SP_HOST_CHAP_XS_KEY") + 1);
        } else if ("SP_HOST_SHUC_XS_KEY".equals(str)) {
            p0.m2010public("SP_HOST_SHUC_XS_KEY", p0.m1997case("SP_HOST_SHUC_XS_KEY") + 1);
        } else if ("SP_HOST_CHAP_MH_KEY".equals(str)) {
            p0.m2010public("SP_HOST_CHAP_MH_KEY", p0.m1997case("SP_HOST_CHAP_MH_KEY") + 1);
        } else if ("SP_HOST_INFO_DEX_MH_KEY".equals(str)) {
            p0.m2010public("SP_HOST_INFO_DEX_MH_KEY", p0.m1997case("SP_HOST_INFO_DEX_MH_KEY") + 1);
        } else if ("SP_HOST_SHUC_MH_KEY".equals(str)) {
            p0.m2010public("SP_HOST_SHUC_MH_KEY", p0.m1997case("SP_HOST_SHUC_MH_KEY") + 1);
        } else {
            "SP_HOST_XZ_MH_KEY".equals(str);
        }
    }

    /* renamed from: class  reason: not valid java name */
    public static boolean m2949class(String str, Map<String, String> map, long j, xw xwVar) {
        ly lyVar = new ly(str);
        if (j <= -1) {
            j = -1;
        }
        lyVar.f3965goto = j;
        lyVar.f3957case = xwVar;
        lyVar.m2191class(map, new boolean[0]);
        lyVar.f3963final = new ox();
        iy<T> m2197try = lyVar.m2197try();
        return m2197try != 0 && m2197try.m1293for();
    }

    /* renamed from: const  reason: not valid java name */
    public static <T> boolean m2950const(iy<T> iyVar) {
        if (iyVar != null) {
            try {
                if (iyVar.m1292do() != 403 && iyVar.m1292do() != 404 && iyVar.m1292do() != 500) {
                    if (!eg.m600implements()) {
                        return false;
                    }
                    Throwable th = iyVar.f2264if;
                    if (!(th instanceof SocketTimeoutException) && !(th instanceof UnknownHostException)) {
                        if (!(th instanceof SSLHandshakeException)) {
                            return false;
                        }
                    }
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: default  reason: not valid java name */
    public static <T> void m2951default(String str, Map<String, String> map, mx<T> mxVar) {
        m2964throws(str, map, 0L, xw.NO_CACHE, mxVar);
    }

    /* renamed from: extends  reason: not valid java name */
    public static JSONObject m2953extends(String str, Map<String, String> map) {
        return m2955finally(str, map, null, 0L, xw.NO_CACHE, null, null);
    }

    /* renamed from: final  reason: not valid java name */
    public static fy m2954final(String str) {
        fy fyVar = new fy();
        if (!w.m2852native().equals(str)) {
            String m2620do = tt.m2620do("SP_LOGIN_COOKIE_VALUE", "");
            if (!TextUtils.isEmpty(m2620do)) {
                fyVar.m897for("cookie", m2620do);
            }
        }
        return fyVar;
    }

    /* renamed from: finally  reason: not valid java name */
    public static JSONObject m2955finally(String str, Map<String, String> map, JSONObject jSONObject, long j, xw xwVar, Cgoto cgoto, String str2) {
        iy m2197try;
        String str3;
        int i;
        System.currentTimeMillis();
        try {
            if (map == null && jSONObject == null) {
                ky kyVar = new ky(str);
                kyVar.m2190catch(m2954final(str));
                if (j <= -1) {
                    j = -1;
                }
                kyVar.f3965goto = j;
                kyVar.f3957case = xwVar;
                kyVar.f3963final = new ox();
                m2197try = kyVar.m2197try();
            } else if (map != null) {
                ly lyVar = new ly(str);
                lyVar.m2190catch(m2954final(str));
                if (j <= -1) {
                    j = -1;
                }
                lyVar.f3965goto = j;
                lyVar.f3957case = xwVar;
                lyVar.f3963final = new ox();
                lyVar.m2191class(map, new boolean[0]);
                lyVar.f3136while = map.size() > 0;
                m2197try = lyVar.m2197try();
            } else {
                ly lyVar2 = new ly(str);
                lyVar2.m2190catch(m2954final(str));
                if (j <= -1) {
                    j = -1;
                }
                lyVar2.f3965goto = j;
                lyVar2.f3957case = xwVar;
                lyVar2.f3963final = new ox();
                lyVar2.m1796final(jSONObject);
                m2197try = lyVar2.m2197try();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (m2197try != null && m2197try.m1293for()) {
            if (w.m2852native().equals(str)) {
                v0 m2736try = v0.m2736try();
                ch0 ch0Var = m2197try.f2265new;
                m2736try.m2744final(ch0Var == null ? null : ch0Var.f611else);
            }
            if (cgoto != null) {
                cgoto.mo162do(true, 200, null);
            }
            return new JSONObject((String) m2197try.f2262do);
        }
        if (m2197try == null) {
            str3 = null;
            i = 0;
        } else if (m2197try.m1292do() == 200) {
            return null;
        } else {
            i = m2197try.m1292do();
            if (!TextUtils.isEmpty(m2197try.m1294new())) {
                str3 = m2197try.m1294new();
            } else {
                str3 = m2197try.f2264if != null ? m2197try.f2264if.getMessage() : null;
            }
        }
        if (cgoto != null) {
            cgoto.mo162do(false, i, str3);
            if (m2950const(m2197try)) {
                m2947break(str2);
                cgoto.mo163if();
                if (v.m2734do() == null) {
                    throw null;
                }
            }
        }
        v m2734do = v.m2734do();
        System.currentTimeMillis();
        if (m2734do != null) {
            return null;
        }
        throw null;
    }

    /* renamed from: import  reason: not valid java name */
    public static <T> void m2957import(String str, long j, xw xwVar, mx<T> mxVar) {
        ky kyVar = new ky(str);
        if (j <= -1) {
            j = -1;
        }
        kyVar.f3965goto = j;
        kyVar.f3957case = xwVar;
        kyVar.m2195new(mxVar);
    }

    /* renamed from: native  reason: not valid java name */
    public static <T> void m2958native(String str, long j, xw xwVar, mx<T> mxVar) {
        ky kyVar = new ky(str);
        if (j <= -1) {
            j = -1;
        }
        kyVar.f3965goto = j;
        kyVar.f3957case = xwVar;
        kyVar.m2189case(mxVar);
    }

    /* renamed from: public  reason: not valid java name */
    public static void m2960public(String str) {
        HashMap m1007native = com.apk.Cgoto.m1007native("action", "verifycode");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sourceType", BarrageDataUtils.BARRAGE_OPTION_KEY_NOVEL.toLowerCase());
            jSONObject.put("platform", ze.h());
            jSONObject.put("packageName", ze.m3168finally());
            jSONObject.put(LitePalParser.NODE_VERSION, ze.m());
            jSONObject.put("channel", ze.m3156abstract());
            jSONObject.put("deviceno", eg.m613super());
            jSONObject.put("ts", kg.m1498if());
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m1007native.put("data", CryptDesManager.encodeContent(jSONObject.toString()));
        JSONObject m2953extends = m2953extends(w.m2841const(), m1007native);
        if (m2953extends == null || m2953extends.optInt(NotificationCompat.CATEGORY_STATUS) != 1) {
            return;
        }
        tt.f4763do.putBoolean("SP_NEW_SHARE_REPORT_KEY", true);
    }

    /* renamed from: super  reason: not valid java name */
    public static JSONObject m2961super(String str, long j, xw xwVar) {
        return m2963throw(str, j, xwVar, null, null);
    }

    /* renamed from: switch  reason: not valid java name */
    public static JSONObject m2962switch(String str, JSONObject jSONObject) {
        return m2955finally(str, null, jSONObject, 0L, xw.NO_CACHE, null, null);
    }

    /* renamed from: throw  reason: not valid java name */
    public static JSONObject m2963throw(String str, long j, xw xwVar, Cgoto cgoto, String str2) {
        return m2955finally(str, null, null, j, xwVar, cgoto, str2);
    }

    /* renamed from: throws  reason: not valid java name */
    public static <T> void m2964throws(String str, Map<String, String> map, long j, xw xwVar, mx<T> mxVar) {
        ly lyVar = new ly(str);
        if (j <= -1) {
            j = -1;
        }
        lyVar.f3965goto = j;
        lyVar.f3957case = xwVar;
        boolean z = false;
        lyVar.m2191class(map, new boolean[0]);
        if (map != null && map.size() > 0) {
            z = true;
        }
        lyVar.f3136while = z;
        lyVar.m2195new(mxVar);
    }

    /* renamed from: try  reason: not valid java name */
    public static void m2965try(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("data");
            if (optJSONObject != null) {
                JSONArray optJSONArray = optJSONObject.optJSONArray("bg_colors");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                        if (optJSONObject2 != null) {
                            RedBgImageBean redBgImageBean = new RedBgImageBean();
                            redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_COLOR);
                            redBgImageBean.setIcon(optJSONObject2.optString("bcolor"));
                            redBgImageBean.setBgColor(optJSONObject2.optString("bcolor"));
                            redBgImageBean.setName(optJSONObject2.optString("alias"));
                            redBgImageBean.setfColor(optJSONObject2.optString("fcolor"));
                            arrayList.add(redBgImageBean);
                        }
                    }
                }
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("bg_imgs");
                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i2);
                        if (optJSONObject3 != null) {
                            RedBgImageBean redBgImageBean2 = new RedBgImageBean();
                            redBgImageBean2.setType("3");
                            redBgImageBean2.setIcon(optJSONObject3.optString("bimg_alum"));
                            redBgImageBean2.setBgImage(optJSONObject3.optString("bimg"));
                            redBgImageBean2.setName(optJSONObject3.optString("alias"));
                            redBgImageBean2.setfColor(optJSONObject3.optString("fcolor"));
                            redBgImageBean2.setFileName(rt.m2362if(redBgImageBean2.getBgImage()));
                            arrayList.add(redBgImageBean2);
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    LitePal.deleteAll(RedBgImageBean.class, new String[0]);
                    LitePal.saveAll(arrayList);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public final void m2966abstract(Book book, boolean z, String str) {
        if (v.m2734do() != null) {
            m2975this(book.getId(), z, str, false);
            String r = ze.r(R.string.copy_recomment_tgver_desc_txt, book.getName());
            zu.Cdo cdo = new zu.Cdo(this.f3559do);
            cdo.f6267do.f2924for = Boolean.FALSE;
            cdo.f6267do.f2941throw = new Cfor(book);
            ConfirmPopupView m3249case = cdo.m3249case(ze.q(R.string.permissions_local_import_title), r, new Cif(str, book, z), null);
            m3249case.f9571catch = ze.q(R.string.copy_recomment_tgver_read_txt);
            m3249case.f9569break = ze.q(R.string.copy_recomment_tgver_cose_txt);
            m3249case.show();
            ze.m3158case();
            return;
        }
        throw null;
    }

    /* renamed from: catch  reason: not valid java name */
    public void m2967catch(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.contains("tgver9#")) {
            String replace = str.replace("tgver9#", "");
            if (v.m2734do() != null) {
                try {
                    if (!TextUtils.isEmpty(replace)) {
                        JSONObject jSONObject = new JSONObject(replace);
                        String optString = jSONObject.optString("id");
                        String optString2 = jSONObject.optString("name");
                        String optString3 = jSONObject.optString(NotificationCompat.CarExtender.KEY_AUTHOR);
                        boolean optBoolean = jSONObject.optBoolean("istop", true);
                        String optString4 = jSONObject.optString("cid");
                        if (!TextUtils.isEmpty(optString)) {
                            Book book = new Book();
                            book.setId(optString);
                            book.setName(optString2);
                            book.setAuthor(optString3);
                            m2966abstract(book, optBoolean, optString4);
                        } else {
                            new b1().m141do(new y4(this, optString2, optString3, optBoolean, optString4));
                        }
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            throw null;
        } else if (str.contains("tgver9mh#")) {
            String replace2 = str.replace("tgver9mh#", "");
            if (v.m2734do() != null) {
                try {
                    if (!TextUtils.isEmpty(replace2)) {
                        JSONObject jSONObject2 = new JSONObject(replace2);
                        String optString5 = jSONObject2.optString("id");
                        String optString6 = jSONObject2.optString("name");
                        String optString7 = jSONObject2.optString(NotificationCompat.CarExtender.KEY_AUTHOR);
                        boolean optBoolean2 = jSONObject2.optBoolean("istop", true);
                        String optString8 = jSONObject2.optString("cid");
                        if (!TextUtils.isEmpty(optString5)) {
                            ComicBean comicBean = new ComicBean();
                            comicBean.setId(optString5);
                            comicBean.setName(optString6);
                            comicBean.setAuthor(optString7);
                            m2971private(comicBean, optBoolean2, optString8);
                        } else {
                            new b1().m141do(new z4(this, optString6, optString7, optBoolean2, optString8));
                        }
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            throw null;
        } else if (!str.contains("FromShare#") || Ccontinue.m379if().m382for() == null) {
        } else {
            final String replace3 = str.replace("FromShare#", "");
            if (TextUtils.isEmpty(replace3) || ze.D("SP_NEW_SHARE_REPORT_KEY")) {
                return;
            }
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.v2
                @Override // java.lang.Runnable
                public final void run() {
                    x4.m2960public(replace3);
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
        }
    }

    /* renamed from: continue  reason: not valid java name */
    public final boolean m2968continue(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("first_show", 0);
        if (optInt != 0) {
            if (w0.m2894this() < optInt * 60 * 60 * 1000) {
                return false;
            }
        }
        int optInt2 = jSONObject.optInt("showinterval", 0);
        if (optInt2 > 0) {
            long a2 = ze.a("SP_HOME_HAIBAO_IMAGE_INTERBAL_KEY", 0L);
            if (a2 != 0 && Math.abs(System.currentTimeMillis() - a2) < optInt2 * 1000) {
                return false;
            }
        }
        w5 w5Var = this.f5453for;
        if (w5Var != null) {
            return w5Var.mo2905try(null, jSONObject);
        }
        return true;
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m2969goto(String str, boolean z, String str2, boolean z2) {
        new b1().m141do(new Celse(z2, str, z, str2));
    }

    /* renamed from: package  reason: not valid java name */
    public void m2970package(String str, int i, String str2, SearchPlatform searchPlatform) {
        String replace;
        xw xwVar = xw.NO_CACHE;
        if (!"movie".equals(str2) && !"tingshu".equals(str2)) {
            if (hf.BOOK.toString().equals(str2)) {
                m2957import(w.m2856return().replace("{nameorauthor}", str).replace("{page}", String.valueOf(i + 1)), 0L, xwVar, new u4(this, str, System.currentTimeMillis()));
                return;
            } else if (hf.COMIC.toString().equals(str2)) {
                m2957import(w.m2855public().replace("{nameorauthor}", str).replace("{page}", String.valueOf(i + 1)), 0L, xwVar, new a5(this, str, System.currentTimeMillis()));
                return;
            } else {
                return;
            }
        }
        if ("movie".equals(str2)) {
            String replace2 = searchPlatform.getUrl().replace("{keywords}", str);
            replace = replace2.replace("{page}", i + "");
        } else {
            String replace3 = searchPlatform.getUrl().replace("{nameorauthor}", str);
            replace = replace3.replace("{page}", i + "");
        }
        m2957import(replace, 0L, xwVar, new v4(this, str, "movie".equals(searchPlatform.getPid()) ? 4 : 5));
    }

    /* renamed from: private  reason: not valid java name */
    public final void m2971private(ComicBean comicBean, boolean z, String str) {
        if (v.m2734do() != null) {
            m2969goto(comicBean.getId(), z, str, false);
            String r = ze.r(R.string.copy_recomment_tgver_desc_txt, comicBean.getName());
            zu.Cdo cdo = new zu.Cdo(this.f3559do);
            cdo.f6267do.f2924for = Boolean.FALSE;
            cdo.f6267do.f2941throw = new Ccase(comicBean);
            ConfirmPopupView m3249case = cdo.m3249case(ze.q(R.string.permissions_local_import_title), r, new Ctry(str, comicBean, z), null);
            m3249case.f9571catch = ze.q(R.string.copy_recomment_tgver_read_txt);
            m3249case.f9569break = ze.q(R.string.copy_recomment_tgver_cose_txt);
            m3249case.show();
            ze.m3158case();
            return;
        }
        throw null;
    }

    /* renamed from: return  reason: not valid java name */
    public void m2972return(boolean z) {
        List<String> m1838switch;
        if (z) {
            m1838switch = n2.m1838switch("search_history_key");
        } else {
            m1838switch = n2.m1838switch("search_comic_history_key");
        }
        w5 w5Var = this.f5453for;
        if (w5Var != null) {
            w5Var.mo2902for(m1838switch);
        }
    }

    /* renamed from: static  reason: not valid java name */
    public void m2973static(boolean z) {
        String str;
        if (z) {
            str = p0.m1999class() + "/StaticFiles/NewHotBook.html";
        } else {
            str = p0.m1998catch() + "/StaticFiles/NewHotBook.html";
        }
        m2957import(str, 259200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cdo("SP_HOST_SHUC_XS_KEY"));
    }

    /* renamed from: strictfp  reason: not valid java name */
    public final boolean m2974strictfp(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("first_show", 0);
        if (optInt != 0) {
            if (w0.m2894this() < optInt * 60 * 60 * 1000) {
                return false;
            }
        }
        int optInt2 = jSONObject.optInt("showinterval", 0);
        if (optInt2 > 0) {
            long a2 = ze.a("SP_HOME_HAIBAO_TEXT_INTERBAL_KEY", 0L);
            if (a2 != 0 && Math.abs(System.currentTimeMillis() - a2) < optInt2 * 1000) {
                return false;
            }
        }
        w5 w5Var = this.f5453for;
        if (w5Var != null) {
            return w5Var.mo2905try(jSONObject, null);
        }
        return true;
    }

    /* renamed from: this  reason: not valid java name */
    public final void m2975this(String str, boolean z, String str2, boolean z2) {
        new b1().m141do(new Cnew(z2, str, z, str2));
    }

    /* renamed from: volatile  reason: not valid java name */
    public final void m2976volatile(JSONArray jSONArray, boolean z, boolean z2) {
        w5 w5Var;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("pkg");
                if (TextUtils.isEmpty(optString) || !ze.G(optString)) {
                    arrayList.add(optJSONObject);
                }
            }
        }
        if (arrayList.size() <= 0 || (w5Var = this.f5453for) == null) {
            return;
        }
        w5Var.mo2900case(arrayList, z, z2);
    }

    /* renamed from: while  reason: not valid java name */
    public boolean m2977while(boolean z) {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        int optInt;
        boolean m2968continue;
        JSONArray optJSONArray2;
        List<InitConfNews> list;
        MyInfoMsgBean myInfoMsgBean;
        JSONObject optJSONObject2;
        ComicImageConifg comicImageConifg;
        JSONObject m2963throw = m2963throw(p0.m1999class() + "/ver9/base/initconf2.html", 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, null, "SP_HOST_SHUC_XS_KEY");
        boolean z2 = false;
        if (m2963throw != null && m2963throw.optInt(PluginConstants.KEY_ERROR_CODE) == 0 && (optJSONObject = m2963throw.optJSONObject("data")) != null) {
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("error_conf");
            if (optJSONObject3 != null) {
                tt.f4763do.putString("SP_ERROR_CONF_KEY", optJSONObject3.toString());
            }
            JSONArray optJSONArray3 = optJSONObject.optJSONArray("nr_cloud");
            if (optJSONArray3 != null && optJSONArray3.length() > 0) {
                for (int i = 0; i < optJSONArray3.length(); i++) {
                    JSONObject optJSONObject4 = optJSONArray3.optJSONObject(i);
                    if (optJSONObject4 != null) {
                        tt.f4763do.putString(com.apk.Cgoto.m989case("SP_NOVEL_CLOUD_HOST_KEY", optJSONObject4.optString("cloud")), optJSONObject4.optString("yu"));
                    }
                }
            }
            JSONObject optJSONObject5 = optJSONObject.optJSONObject("new_host");
            if (optJSONObject5 != null) {
                if (optJSONObject5.has("app_init")) {
                    p0.m2015while("SP_HOST_APP_INIT_KEY", optJSONObject5.optJSONArray("app_init"));
                }
                if (optJSONObject5.has("chap_xs")) {
                    p0.m2015while("SP_HOST_CHAP_XS_KEY", optJSONObject5.optJSONArray("chap_xs"));
                }
                if (optJSONObject5.has("xz_xs")) {
                    p0.m2015while("SP_HOST_XZ_XS_KEY", optJSONObject5.optJSONArray("xz_xs"));
                }
                if (optJSONObject5.has("imagehost")) {
                    tt.f4763do.putString("URL_HOST_IMAGE_KEY", optJSONObject5.optString("imagehost"));
                }
                if (optJSONObject5.has("dynichost_xs")) {
                    tt.f4763do.putString("URL_HOST_DYNIC_KEY", optJSONObject5.optString("dynichost_xs"));
                }
                if (optJSONObject5.has("souhost_xs")) {
                    tt.f4763do.putString("URL_HOST_SOUSUO_KEY", optJSONObject5.optString("souhost_xs"));
                }
                if (optJSONObject5.has("info_dex_xs")) {
                    p0.m2015while("SP_HOST_INFO_DEX_XS_KEY", optJSONObject5.optJSONArray("info_dex_xs"));
                }
                if (optJSONObject5.has("shuc_xs")) {
                    p0.m2015while("SP_HOST_SHUC_XS_KEY", optJSONObject5.optJSONArray("shuc_xs"));
                }
                if (optJSONObject5.has("xzxs_zip")) {
                    tt.f4763do.putString("NOVEL_CACHE_ZIP_HOST_KEY", optJSONObject5.optString("xzxs_zip"));
                }
                if (optJSONObject5.has("chap_mh")) {
                    p0.m2015while("SP_HOST_CHAP_MH_KEY", optJSONObject5.optJSONArray("chap_mh"));
                }
                if (optJSONObject5.has("info_dex_mh")) {
                    p0.m2015while("SP_HOST_INFO_DEX_MH_KEY", optJSONObject5.optJSONArray("info_dex_mh"));
                }
                if (optJSONObject5.has("shuc_mh")) {
                    p0.m2015while("SP_HOST_SHUC_MH_KEY", optJSONObject5.optJSONArray("shuc_mh"));
                }
                if (optJSONObject5.has("img_mh")) {
                    JSONObject optJSONObject6 = optJSONObject5.optJSONObject("img_mh");
                    if (optJSONObject6 != null) {
                        comicImageConifg = new ComicImageConifg();
                        String optString = optJSONObject6.optString(Person.KEY_KEY);
                        String optString2 = optJSONObject6.optString("label");
                        String optString3 = optJSONObject6.optString("domain");
                        JSONObject optJSONObject7 = optJSONObject6.optJSONObject("mhimghost");
                        HashMap hashMap = new HashMap();
                        if (optJSONObject7 != null) {
                            Iterator<String> keys = optJSONObject7.keys();
                            while (keys.hasNext()) {
                                try {
                                    String next = keys.next();
                                    String string = optJSONObject7.getString(next);
                                    if (!TextUtils.isEmpty(string)) {
                                        JSONArray jSONArray = new JSONArray(string);
                                        if (jSONArray.length() > 0) {
                                            String optString4 = jSONArray.optString(0);
                                            if (!TextUtils.isEmpty(optString4)) {
                                                hashMap.put(next, optString4);
                                            }
                                        }
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        comicImageConifg.setKey(optString);
                        comicImageConifg.setLabel(optString2);
                        comicImageConifg.setDomain(optString3);
                        comicImageConifg.setHostKeys(hashMap);
                    } else {
                        comicImageConifg = null;
                    }
                    p0.f3555this = comicImageConifg;
                }
                if (optJSONObject5.has("dynichost_mh")) {
                    tt.f4763do.putString("COMIC_URL_HOST_DYN_KEY", optJSONObject5.optString("dynichost_mh"));
                }
                if (optJSONObject5.has("souhost_mh")) {
                    tt.f4763do.putString("COMIC_URL_HOST_SOUSUO_KEY", optJSONObject5.optString("souhost_mh"));
                }
                if (optJSONObject5.has("ucenterhost")) {
                    tt.f4763do.putString("URL_HOST_LIEBIAN_KEY", optJSONObject5.optString("ucenterhost"));
                }
                if (optJSONObject5.has("lb_host")) {
                    tt.f4763do.putString("URL_HOST_SHARE_LIEBIAN_KEY", optJSONObject5.optString("lb_host"));
                }
                if (optJSONObject5.has("zwyd") && (optJSONObject2 = optJSONObject5.optJSONObject("zwyd")) != null) {
                    String optString5 = optJSONObject2.optString("def_yu");
                    if (!TextUtils.isEmpty(optString5)) {
                        tt.f4763do.putString("SP_WEB_SEARCH_HOST_KEY", optString5);
                    }
                    String optString6 = optJSONObject2.optString("hy_url");
                    if (!TextUtils.isEmpty(optString6)) {
                        tt.f4763do.putString("SP_WEB_ACCURATE_SEARCH_HOST_KEY", optString6);
                    }
                    String optString7 = optJSONObject2.optString("lx_def_yu");
                    if (!TextUtils.isEmpty(optString7)) {
                        tt.f4763do.putString("SP_WEB_FAST_SEARCH_HOST_KEY", optString7);
                    }
                    String optString8 = optJSONObject2.optString("lx_url");
                    if (!TextUtils.isEmpty(optString8)) {
                        tt.f4763do.putString("SP_WEB_SEARCH_FAST_URL_KEY", optString8);
                    }
                    String optString9 = optJSONObject2.optString("dyn_yu");
                    if (!TextUtils.isEmpty(optString9)) {
                        tt.f4763do.putString("SP_WEB_DYNIC_URL_KEY", optString9);
                    }
                }
            }
            JSONObject optJSONObject8 = optJSONObject.optJSONObject("my_msg");
            if (optJSONObject8 != null && (myInfoMsgBean = (MyInfoMsgBean) ze.n0(MyInfoMsgBean.class, optJSONObject8)) != null) {
                int ver = myInfoMsgBean.getVer();
                if (ver != ze.m3174instanceof("SP_MYINFO_MSG_RED_TAG_VER_KEY", -1)) {
                    tt.f4763do.putBoolean("SP_MYINFO_MSG_KEY", true);
                    tt.f4763do.putInt("SP_MYINFO_MSG_RED_TAG_VER_KEY", ver);
                }
                Ccontinue.m379if().f727throws = myInfoMsgBean;
                mf.m1712do("REFRESH_CHECK_TASK_RED_KEY", null);
                mf.m1712do("SP_MYINFO_MSG_KEY", null);
            }
            String optString10 = optJSONObject.optString("pkgs3");
            if ((TextUtils.isEmpty(optString10) ? true : optString10.contains(ze.m3168finally() + "&")) && (optJSONArray2 = optJSONObject.optJSONArray("msg_notice")) != null) {
                try {
                    list = (List) Convert.fromJson(optJSONArray2.toString(), new uf().getType());
                } catch (Exception unused) {
                    list = null;
                }
                if (list != null && list.size() > 0) {
                    ArrayMap arrayMap = new ArrayMap();
                    List<InitConfNews> findAll = LitePal.findAll(InitConfNews.class, new long[0]);
                    if (findAll != null && findAll.size() > 0) {
                        for (InitConfNews initConfNews : findAll) {
                            arrayMap.put(initConfNews.getNid(), initConfNews);
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    for (InitConfNews initConfNews2 : list) {
                        if (initConfNews2 != null && !arrayMap.containsKey(initConfNews2.getNid())) {
                            initConfNews2.setDelete(Bugly.SDK_IS_DEV);
                            initConfNews2.setRead(false);
                            arrayList.add(initConfNews2);
                        }
                    }
                    if (arrayList.size() > 0) {
                        LitePal.saveAll(arrayList);
                        mf.m1712do("REFRESH_CHECK_TASK_RED_KEY", null);
                    }
                }
            }
            if (z) {
                return false;
            }
            String optString11 = optJSONObject.optString("pkgs");
            boolean contains = TextUtils.isEmpty(optString11) ? true : optString11.contains(ze.m3168finally() + "&");
            String optString12 = optJSONObject.optString("pkgs2");
            boolean contains2 = TextUtils.isEmpty(optString12) ? true : optString12.contains(ze.m3168finally() + "&");
            String optString13 = optJSONObject.optString("use_this");
            if (contains) {
                JSONObject optJSONObject9 = optJSONObject.optJSONObject("pubnotice");
                JSONObject optJSONObject10 = optJSONObject.optJSONObject("products");
                if (!TextUtils.isEmpty(optString13)) {
                    if ("pubnotice".equals(optString13)) {
                        if (optJSONObject9 != null) {
                            m2968continue = m2974strictfp(optJSONObject9);
                            z2 = m2968continue;
                        }
                    } else if ("products".equals(optString13) && optJSONObject10 != null) {
                        m2968continue = m2968continue(optJSONObject10);
                        z2 = m2968continue;
                    }
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    if (optJSONObject9 != null) {
                        arrayList2.add("1");
                    }
                    if (optJSONObject10 != null) {
                        arrayList2.add("2");
                    }
                    if (arrayList2.size() > 0) {
                        int m3174instanceof = ze.m3174instanceof("SP_MAIN_PUBLIC_NEWS_POSITION_KEY", 0);
                        if (m3174instanceof >= arrayList2.size()) {
                            m3174instanceof = 0;
                        }
                        String str = (String) arrayList2.get(m3174instanceof);
                        tt.f4763do.putInt("SP_MAIN_PUBLIC_NEWS_POSITION_KEY", m3174instanceof + 1);
                        if ("1".equals(str)) {
                            if (optJSONObject9 != null) {
                                m2968continue = m2974strictfp(optJSONObject9);
                                z2 = m2968continue;
                            }
                        } else if ("2".equals(str) && optJSONObject10 != null) {
                            m2968continue = m2968continue(optJSONObject10);
                            z2 = m2968continue;
                        }
                    }
                }
            }
            JSONArray jSONArray2 = Ccontinue.m379if().f721return;
            if (jSONArray2 != null) {
                m2976volatile(jSONArray2, Ccontinue.m379if().f722static, Ccontinue.m379if().f724switch);
            } else if (contains2 && (optJSONArray = optJSONObject.optJSONArray("topmsg")) != null) {
                boolean optBoolean = optJSONObject.optBoolean("topmsg_close");
                boolean optBoolean2 = optJSONObject.optBoolean("topmsg_red", true);
                if (optJSONObject.has("topmsg_ver") && (optInt = optJSONObject.optInt("topmsg_ver")) != ze.m3174instanceof("SP_HOME_TOPMSG_RED_TAG_VER_KEY", -1)) {
                    tt.f4763do.putInt("SP_HOME_TOPMSG_RED_TAG_VER_KEY", optInt);
                    w0.m2898volatile(true);
                }
                m2976volatile(optJSONArray, optBoolean, optBoolean2);
            }
        }
        return z2;
    }
}
