package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.bean.UserPrivacyBean;
import java.util.ArrayList;
/* compiled from: UrlConfig.java */
/* loaded from: classes8.dex */
public class w {
    /* renamed from: break  reason: not valid java name */
    public static String m2837break(String str, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(p0.m1998catch());
        sb.append("/day/");
        Cgoto.m993continue(sb, w0.m2881import() ? "man" : "lady", "/", str, "/");
        return Cgoto.m1019this(sb, i, ".html");
    }

    /* renamed from: case  reason: not valid java name */
    public static String m2838case(String str) {
        return p0.m1998catch() + "/shudan/detail/" + str + ".html";
    }

    /* renamed from: catch  reason: not valid java name */
    public static String m2839catch() {
        return p0.m1999class() + "/ver9/base/fontlist_new.html";
    }

    /* renamed from: class  reason: not valid java name */
    public static String m2840class(String str) {
        String m2620do = tt.m2620do("SP_YU_POOLS_HOST_VALUE_KEY", "");
        NewShareDisBean m382for = Ccontinue.m379if().m382for();
        if (m382for != null) {
            String landing_page = m382for.getLanding_page();
            if (!TextUtils.isEmpty(landing_page)) {
                String replace = landing_page.replace("{cc}", str);
                return Cgoto.m989case(m2620do, replace.replace("{channel}", ze.m3168finally() + "_lb"));
            }
        }
        String replace2 = "/ver9/base/fxv9/dl.html?cc={cc}&channel={channel}".replace("{cc}", str);
        return Cgoto.m989case(m2620do, replace2.replace("{channel}", ze.m3168finally() + "_lb"));
    }

    /* renamed from: const  reason: not valid java name */
    public static String m2841const() {
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(p0.f3556throw)) {
            String n = ze.n("URL_HOST_SHARE_LIEBIAN_KEY");
            p0.f3556throw = n;
            if (TextUtils.isEmpty(n)) {
                p0.f3556throw = "https://lb.pigqq.com";
            }
        }
        return Cgoto.m991class(sb, p0.f3556throw, "/UserShareAction.aspx");
    }

    /* renamed from: default  reason: not valid java name */
    public static String m2842default() {
        return Cgoto.m988break(new StringBuilder(), "/UploadBook.aspx");
    }

    /* renamed from: do  reason: not valid java name */
    public static String m2843do() {
        String str = "https://sdk.qzbonline.com";
        try {
            if (p0.f3547do == null) {
                ArrayList arrayList = new ArrayList();
                p0.f3547do = arrayList;
                arrayList.add("https://sdk.qzbonline.com");
                p0.f3547do.add("https://sdk.leeyegy.com");
                p0.f3547do.addAll(p0.m2012this(ze.n("SP_HOST_APP_INIT_KEY")));
            }
            str = p0.f3547do.get(p0.m1997case("SP_HOST_APP_INIT_KEY") % p0.f3547do.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str2 = str + "/ver9/whds/sdk/v9_kimi_mh_conf.html";
        if (w0.m2881import()) {
            return str2;
        }
        return str + "/ver9/whds/sdk/v9_kimi_mh_conf.html";
    }

    /* renamed from: else  reason: not valid java name */
    public static String m2844else(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "1";
        }
        return p0.m2002else() + "/BookFiles/Html/" + ((Integer.parseInt(str) / 1000) + 1) + "/" + str + "/index.html";
    }

    /* renamed from: extends  reason: not valid java name */
    public static String m2845extends() {
        String m2620do = tt.m2620do("SP_WEB_DYNIC_URL_KEY", "");
        return TextUtils.isEmpty(m2620do) ? "https://bookshelf.apptianwangxing.com" : m2620do;
    }

    /* renamed from: final  reason: not valid java name */
    public static String m2846final() {
        return p0.m2000const() + "/ModifyUser.aspx";
    }

    /* renamed from: finally  reason: not valid java name */
    public static String m2847finally(String str, String str2, int i) {
        StringBuilder sb = new StringBuilder();
        String m2620do = tt.m2620do("SP_WEB_ACCURATE_SEARCH_HOST_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            m2620do = "https://precise.apptianwangxing.com";
        }
        Cgoto.m993continue(sb, m2620do, "/api/v1/Source/", str, "/");
        sb.append(str2);
        sb.append("/");
        sb.append(i);
        sb.append(".html");
        return sb.toString();
    }

    /* renamed from: for  reason: not valid java name */
    public static String m2848for(String str, String str2, int i) {
        return p0.m1999class() + "/Categories/" + str + "/" + str2 + "/" + i + ".html";
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m2849goto() {
        return Cgoto.m990catch(new StringBuilder(), "/BookAction.aspx");
    }

    /* renamed from: if  reason: not valid java name */
    public static String m2850if(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "1";
        }
        if (TextUtils.isEmpty(str)) {
            str = "https://contentxs.apptuxing.com";
        }
        StringBuilder m1025while = Cgoto.m1025while(str, "/BookFiles/Html/");
        m1025while.append((Integer.parseInt(str2) / 1000) + 1);
        m1025while.append("/");
        m1025while.append(str2);
        m1025while.append("/");
        m1025while.append(str3);
        String sb = m1025while.toString();
        return !sb.endsWith(".html") ? Cgoto.m989case(sb, ".html") : sb;
    }

    /* renamed from: import  reason: not valid java name */
    public static String m2851import() {
        String str;
        String str2;
        String str3;
        String m3166extends = ze.m3166extends();
        UserPrivacyBean userPrivacyBean = Ccontinue.m379if().f723super;
        String str4 = null;
        if (userPrivacyBean != null) {
            str4 = userPrivacyBean.getCompany();
            str2 = userPrivacyBean.getAddress();
            str3 = userPrivacyBean.getPhone();
            str = userPrivacyBean.getEmail();
        } else {
            str = null;
            str2 = null;
            str3 = null;
        }
        StringBuilder m1004import = Cgoto.m1004import("https://scxs.apptuxing.com/ver9/base/protocol/privacy_xy.html?appname=", m3166extends, "&company=", str4, "&dz=");
        Cgoto.m993continue(m1004import, str2, "&dh=", str3, "&yx=");
        m1004import.append(str);
        return m1004import.toString();
    }

    /* renamed from: native  reason: not valid java name */
    public static String m2852native() {
        return p0.m2000const() + "/QuickLogin.aspx";
    }

    /* renamed from: new  reason: not valid java name */
    public static String m2853new(String str, String str2, int i) {
        return p0.m1998catch() + "/Categories/" + str + "/" + str2 + "/" + i + ".html";
    }

    /* renamed from: package  reason: not valid java name */
    public static String m2854package() {
        return Cgoto.m988break(new StringBuilder(), "/BookAction.aspx");
    }

    /* renamed from: public  reason: not valid java name */
    public static String m2855public() {
        if (TextUtils.isEmpty(p0.f3549final)) {
            String n = ze.n("COMIC_URL_HOST_SOUSUO_KEY");
            p0.f3549final = n;
            if (TextUtils.isEmpty(n)) {
                p0.f3549final = "https://soumh.leeyegy.com/search.aspx?key={nameorauthor}&page={page}&siteid=manhuaapp2";
            }
        }
        return p0.f3549final;
    }

    /* renamed from: return  reason: not valid java name */
    public static String m2856return() {
        if (TextUtils.isEmpty(p0.f3545class)) {
            String n = ze.n("URL_HOST_SOUSUO_KEY");
            p0.f3545class = n;
            if (TextUtils.isEmpty(n)) {
                p0.f3545class = "https://souxs.leeyegy.com/search.aspx?key={nameorauthor}&page={page}&siteid=app2";
            }
        }
        return p0.f3545class;
    }

    /* renamed from: static  reason: not valid java name */
    public static String m2857static(String str) {
        return p0.m1999class() + "/shudan/detail/" + str + ".html";
    }

    /* renamed from: super  reason: not valid java name */
    public static String m2858super(String str) {
        String n = ze.n("NOVEL_CACHE_ZIP_HOST_KEY");
        if (TextUtils.isEmpty(n)) {
            n = p0.m2003final(null);
        }
        StringBuilder m1025while = Cgoto.m1025while(n, "/BookFiles/Html/");
        m1025while.append((Integer.parseInt(str) / 1000) + 1);
        m1025while.append("/");
        m1025while.append(str);
        m1025while.append("/all.zip");
        return m1025while.toString();
    }

    /* renamed from: switch  reason: not valid java name */
    public static String m2859switch(String str, String str2, String str3, int i) {
        return p0.m1999class() + "/top/" + str + "/top/" + str2 + "/" + str3 + "/" + i + ".html";
    }

    /* renamed from: this  reason: not valid java name */
    public static String m2860this(String str, String str2, String str3, String str4, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(p0.m1998catch());
        sb.append("/top/");
        sb.append(str);
        sb.append("/top/");
        sb.append(str4);
        Cgoto.m993continue(sb, "/", str2, "/", str3);
        sb.append("/");
        sb.append(i);
        sb.append(".html");
        return sb.toString();
    }

    /* renamed from: throw  reason: not valid java name */
    public static String m2861throw(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "1";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(p0.m2005goto(str));
        sb.append("/BookFiles/Html/");
        sb.append((Integer.parseInt(str) / 1000) + 1);
        sb.append("/");
        return Cgoto.m991class(sb, str != null ? str : "1", "/index.html");
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m2862throws() {
        String str;
        String str2;
        String str3;
        String m3166extends = ze.m3166extends();
        UserPrivacyBean userPrivacyBean = Ccontinue.m379if().f723super;
        String str4 = null;
        if (userPrivacyBean != null) {
            str4 = userPrivacyBean.getCompany();
            str2 = userPrivacyBean.getAddress();
            str3 = userPrivacyBean.getPhone();
            str = userPrivacyBean.getEmail();
        } else {
            str = null;
            str2 = null;
            str3 = null;
        }
        StringBuilder m1004import = Cgoto.m1004import("https://scxs.apptuxing.com/ver9/base/protocol/usr_xy.html?appname=", m3166extends, "&company=", str4, "&dz=");
        Cgoto.m993continue(m1004import, str2, "&dh=", str3, "&yx=");
        m1004import.append(str);
        return m1004import.toString();
    }

    /* renamed from: try  reason: not valid java name */
    public static String m2863try(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "1";
        }
        return p0.m2002else() + "/BookFiles/Html/" + ((Integer.parseInt(str) / 1000) + 1) + "/" + str + "/info.html";
    }

    /* renamed from: while  reason: not valid java name */
    public static String m2864while(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "1";
        }
        return p0.m2005goto(str) + "/BookFiles/Html/" + ((Integer.parseInt(str) / 1000) + 1) + "/" + str + "/info.html";
    }
}
