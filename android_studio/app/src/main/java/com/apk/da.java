package com.apk;

import android.text.TextUtils;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.webread.WebSiteRulesBean;
import com.manhua.data.bean.ComicChapterBean;
import java.util.HashMap;
import java.util.List;
import org.litepal.LitePal;

/* compiled from: SettingManager.java */
/* loaded from: classes8.dex */
public class da {

    /* renamed from: new  reason: not valid java name */
    public static da f839new;

    /* renamed from: do  reason: not valid java name */
    public HashMap<String, ChapterBean> f840do;

    /* renamed from: for  reason: not valid java name */
    public HashMap<String, ComicChapterBean> f841for;

    /* renamed from: if  reason: not valid java name */
    public gg<String, WebSiteRulesBean> f842if;

    /* renamed from: break  reason: not valid java name */
    public static int m415break() {
        return ze.m3174instanceof("SP_SHELF_SORT_MODE_KEY", 0);
    }

    /* renamed from: class  reason: not valid java name */
    public static boolean m416class() {
        return ze.m3179private("SP_FULL_SCREEN_CLICK_NEXT_KEY", false);
    }

    /* renamed from: const  reason: not valid java name */
    public static boolean m417const() {
        return ze.m3179private("SP_FULL_SCREEN_MODE_KEY", true);
    }

    /* renamed from: default  reason: not valid java name */
    public static void m418default(String str) {
        ze.W("SP_NOVEL_ZIP_DOWNLOAD_ID_KEY" + str);
    }

    /* renamed from: else  reason: not valid java name */
    public static da m419else() {
        if (f839new == null) {
            synchronized (da.class) {
                if (f839new == null) {
                    f839new = new da();
                }
            }
        }
        return f839new;
    }

    /* renamed from: extends  reason: not valid java name */
    public static void m420extends(String str) {
        tt.f4763do.putString("BAIDU_TTS_SPEECH_MODEL", str);
    }

    /* renamed from: final  reason: not valid java name */
    public static boolean m421final(String str) {
        return ze.m3179private("CATELOG_GET_BOOKS_" + str, false);
    }

    /* renamed from: finally  reason: not valid java name */
    public static void m422finally(boolean z) {
        tt.f4763do.putBoolean("SP_THEME_MODE_KEY", z);
        zu.f6266try = z;
    }

    /* renamed from: for  reason: not valid java name */
    public static String m423for() {
        return tt.m2620do("BAIDU_TTS_SPEECH_MODEL", "1");
    }

    /* renamed from: goto  reason: not valid java name */
    public static int m424goto() {
        return ze.m3174instanceof("SP_BOOK_SCREEN_CLOSE_MODE_KEY", 0);
    }

    /* renamed from: if  reason: not valid java name */
    public static int m425if() {
        return ze.m3174instanceof("auto_read_speed", 7);
    }

    /* renamed from: import  reason: not valid java name */
    public static boolean m426import() {
        return ze.m3179private("SP_BOOK_EYESHIELD_KEY", false);
    }

    /* renamed from: native  reason: not valid java name */
    public static boolean m427native() {
        return ze.m3179private("nightMode", false);
    }

    /* renamed from: package  reason: not valid java name */
    public static void m428package(String str) {
        tt.f4763do.putBoolean(Cgoto.m989case("CATELOG_GET_BOOKS_", str), true);
    }

    /* renamed from: private  reason: not valid java name */
    public static void m429private(int i) {
        tt.f4763do.putInt("SP_BOOK_SCREEN_CLOSE_MODE_KEY", i);
    }

    /* renamed from: public  reason: not valid java name */
    public static boolean m430public() {
        return ze.m3179private("SP_READ_SCREEN_LAND_PORT_KEY", true);
    }

    /* renamed from: return  reason: not valid java name */
    public static boolean m431return() {
        return ze.m3179private("SP_BOOK_VOLUME_FLIP_PAGE_KEY", true);
    }

    /* renamed from: static  reason: not valid java name */
    public static void m432static(boolean z) {
        tt.f4763do.putBoolean("SP_BOOK_EYESHIELD_KEY", z);
    }

    /* renamed from: super  reason: not valid java name */
    public static boolean m433super(String str) {
        return ze.m3179private("CATELOG_GET_COMIC_" + str, false);
    }

    /* renamed from: switch  reason: not valid java name */
    public static void m434switch(boolean z) {
        tt.f4763do.putBoolean("nightMode", z);
    }

    /* renamed from: this  reason: not valid java name */
    public static int m435this() {
        return ze.m3174instanceof("SP_SHELF_LIST_MODE_KEY", 0);
    }

    /* renamed from: throw  reason: not valid java name */
    public static boolean m436throw() {
        return ze.m3179private("SP_READ_IMMERSION_KEY", true);
    }

    /* renamed from: throws  reason: not valid java name */
    public static void m437throws(String str) {
        ze.W("CATELOG_GET_BOOKS_" + str);
    }

    /* renamed from: while  reason: not valid java name */
    public static boolean m438while() {
        return ze.m3175interface(false) || ze.m3179private("SP_THEME_MODE_KEY", false);
    }

    /* renamed from: case  reason: not valid java name */
    public ComicChapterBean m439case(String str, String str2) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (this.f841for == null) {
            this.f841for = new HashMap<>();
        }
        ComicChapterBean comicChapterBean = this.f841for.get(str2);
        if (comicChapterBean == null || TextUtils.isEmpty(comicChapterBean.getName())) {
            ComicChapterBean comicChapterBean2 = (ComicChapterBean) LitePal.where("novelId = ? and oid = ?", str, str2).findFirst(ComicChapterBean.class);
            if (comicChapterBean2 != null) {
                this.f841for.put(str2, comicChapterBean2);
                return comicChapterBean2;
            }
            return null;
        }
        return comicChapterBean;
    }

    /* renamed from: catch  reason: not valid java name */
    public void m440catch(List<WebSiteRulesBean> list) {
        if (list != null) {
            for (WebSiteRulesBean webSiteRulesBean : list) {
                String replace = webSiteRulesBean.getBaseUrl().replace(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, "").replace(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, "");
                if (!TextUtils.isEmpty(replace)) {
                    if (this.f842if == null) {
                        this.f842if = new gg<>();
                    }
                    this.f842if.put(replace, webSiteRulesBean);
                }
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m441do(ComicChapterBean comicChapterBean) {
        if (this.f841for == null) {
            this.f841for = new HashMap<>();
        }
        this.f841for.put(comicChapterBean.getOid(), comicChapterBean);
    }

    /* renamed from: new  reason: not valid java name */
    public ChapterBean m442new(String str, String str2) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (this.f840do == null) {
            this.f840do = new HashMap<>();
        }
        ChapterBean chapterBean = this.f840do.get(str2);
        if (chapterBean == null || TextUtils.isEmpty(chapterBean.getName())) {
            ChapterBean chapterBean2 = (ChapterBean) LitePal.where("novelId = ? and oid = ?", str, str2).findFirst(ChapterBean.class);
            if (chapterBean2 != null) {
                this.f840do.put(str2, chapterBean2);
                return chapterBean2;
            }
            return null;
        }
        return chapterBean;
    }

    /* renamed from: try  reason: not valid java name */
    public String m443try(String str, String str2) {
        try {
            ChapterBean m442new = m442new(str, str2);
            return m442new != null ? m442new.getName() : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
