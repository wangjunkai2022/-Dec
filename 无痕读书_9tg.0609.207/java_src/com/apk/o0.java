package com.apk;

import android.app.Activity;
import android.content.ContentValues;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.app.AppService;
import com.biquge.ebook.app.bean.BookMark;
import com.biquge.ebook.app.bean.CacheFailedBean;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.DownloadBean;
import com.biquge.ebook.app.bean.DownloadProgress;
import com.biquge.ebook.app.bean.ReadFootprint;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.bean.webread.WebChapterBatchBean;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.view.NovelBatchCachePopup;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.CenterPopupView;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.data.bean.ComicDownloadBean;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* compiled from: BookCacheManager.java */
/* loaded from: classes8.dex */
public class o0 {

    /* renamed from: try  reason: not valid java name */
    public static o0 f3332try;

    /* renamed from: do  reason: not valid java name */
    public gg<String, String> f3333do;

    /* renamed from: for  reason: not valid java name */
    public gg<String, String> f3334for;

    /* renamed from: if  reason: not valid java name */
    public gg<String, CollectBook> f3335if;

    /* renamed from: new  reason: not valid java name */
    public gg<String, ComicCollectBean> f3336new;

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements et {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Celse f3337do;

        public Ccase(o0 o0Var, Celse celse) {
            this.f3337do = celse;
        }

        @Override // com.apk.et
        public void onDismiss() {
            Celse celse = this.f3337do;
            if (celse != null) {
                celse.mo1179do(false);
            }
        }
    }

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements NovelBatchCachePopup.Cfor {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Celse f3338do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f3339for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f3340if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f3341new;

        public Cdo(o0 o0Var, Celse celse, boolean z, String str, String str2) {
            this.f3338do = celse;
            this.f3340if = z;
            this.f3339for = str;
            this.f3341new = str2;
        }
    }

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Celse {
        /* renamed from: do */
        void mo1179do(boolean z);
    }

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Celse {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f3342do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f3343for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f3344if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f3345new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ Celse f3346try;

        public Cfor(o0 o0Var, boolean z, String str, String str2, String str3, Celse celse) {
            this.f3342do = z;
            this.f3344if = str;
            this.f3343for = str2;
            this.f3345new = str3;
            this.f3346try = celse;
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do */
        public void mo1179do(boolean z) {
            if (z) {
                AppService.m3299else(this.f3342do, this.f3344if, this.f3343for, this.f3345new);
            }
            Celse celse = this.f3346try;
            if (celse != null) {
                celse.mo1179do(z);
            }
        }
    }

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Celse {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Celse f3347do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f3348for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f3349if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f3350new;

        public Cif(o0 o0Var, Celse celse, boolean z, String str, String str2) {
            this.f3347do = celse;
            this.f3349if = z;
            this.f3348for = str;
            this.f3350new = str2;
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do */
        public void mo1179do(boolean z) {
            Celse celse = this.f3347do;
            if (celse != null) {
                celse.mo1179do(z);
            }
            if (z) {
                AppService.m3296case(this.f3349if, this.f3348for, this.f3350new);
            }
        }
    }

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Celse f3351do;

        public Cnew(o0 o0Var, Celse celse) {
            this.f3351do = celse;
        }

        @Override // com.apk.ft
        public void onClick() {
            Celse celse = this.f3351do;
            if (celse != null) {
                celse.mo1179do(true);
            }
            p0.m2011super("CACHE_DOWNLOAD_4G", Boolean.TRUE);
        }
    }

    /* compiled from: BookCacheManager.java */
    /* renamed from: com.apk.o0$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements et {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Celse f3352do;

        public Ctry(o0 o0Var, Celse celse) {
            this.f3352do = celse;
        }

        @Override // com.apk.et
        public void onDismiss() {
            Celse celse = this.f3352do;
            if (celse != null) {
                celse.mo1179do(false);
            }
        }
    }

    public o0() {
        try {
            List<DownloadBean> findAll = LitePal.findAll(DownloadBean.class, new long[0]);
            if (findAll != null && findAll.size() > 0) {
                for (DownloadBean downloadBean : findAll) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", Integer.valueOf(downloadBean.getState()));
                    contentValues.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(downloadBean.getProgress()));
                    contentValues.put("max", Integer.valueOf(downloadBean.getMax()));
                    LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", downloadBean.getNovelId());
                }
                LitePal.deleteAll(DownloadBean.class, new String[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            List<ComicDownloadBean> findAll2 = LitePal.findAll(ComicDownloadBean.class, new long[0]);
            if (findAll2 != null && findAll2.size() > 0) {
                for (ComicDownloadBean comicDownloadBean : findAll2) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("state", Integer.valueOf(comicDownloadBean.getState()));
                    contentValues2.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(comicDownloadBean.getProgress()));
                    contentValues2.put("max", Integer.valueOf(comicDownloadBean.getMax()));
                    LitePal.updateAll(ComicCollectBean.class, contentValues2, "collectId = ?", comicDownloadBean.getNovelId());
                }
                LitePal.deleteAll(ComicDownloadBean.class, new String[0]);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        AppService.m3304this(AppContext.f6392case);
    }

    /* renamed from: else  reason: not valid java name */
    public static o0 m1925else() {
        if (f3332try == null) {
            synchronized (o0.class) {
                if (f3332try == null) {
                    f3332try = new o0();
                }
            }
        }
        return f3332try;
    }

    /* renamed from: break  reason: not valid java name */
    public void m1926break(String str) {
        CollectBook collectBook;
        try {
            if (this.f3333do == null) {
                this.f3333do = new gg<>();
            }
            this.f3333do.put(str, str);
            AppService.m3303new(str);
            if (this.f3335if == null || (collectBook = this.f3335if.get(str)) == null) {
                return;
            }
            collectBook.setState(1);
            m1929class(collectBook);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public CollectBook m1927case(String str) {
        gg<String, CollectBook> ggVar = this.f3335if;
        if (ggVar != null) {
            return ggVar.get(str);
        }
        return null;
    }

    /* renamed from: catch  reason: not valid java name */
    public void m1928catch(String str) {
        ComicCollectBean comicCollectBean;
        try {
            if (this.f3334for == null) {
                this.f3334for = new gg<>();
            }
            this.f3334for.put(str, str);
            AppService.m3305try(str);
            if (this.f3336new == null || (comicCollectBean = this.f3336new.get(str)) == null) {
                return;
            }
            comicCollectBean.setState(1);
            m1930const(comicCollectBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public synchronized void m1929class(CollectBook collectBook) {
        String collectId;
        boolean z;
        try {
            if (this.f3335if == null) {
                this.f3335if = new gg<>();
            }
            collectId = collectBook.getCollectId();
            gg<String, String> ggVar = this.f3333do;
            if (ggVar != null) {
                ggVar.m957do();
                z = ggVar.f1563if.containsKey(collectId);
            } else {
                z = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (z) {
            this.f3335if.put(collectId, collectBook);
            return;
        }
        this.f3335if.put(collectId, collectBook);
        mf.m1712do("CACHE_DOWNLOAD_START", collectBook.getCollectId());
    }

    /* renamed from: const  reason: not valid java name */
    public synchronized void m1930const(ComicCollectBean comicCollectBean) {
        String collectId;
        try {
            if (this.f3336new == null) {
                this.f3336new = new gg<>();
            }
            collectId = comicCollectBean.getCollectId();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.f3334for != null && this.f3334for.containsKey(collectId)) {
            this.f3336new.put(collectId, comicCollectBean);
            return;
        }
        this.f3336new.put(collectId, comicCollectBean);
        mf.m1712do("CACHE_DOWNLOAD_START", comicCollectBean.getCollectId());
    }

    /* renamed from: do  reason: not valid java name */
    public void m1931do(Activity activity, String str, String str2, boolean z, boolean z2, Celse celse) {
        String m2620do;
        if (ze.m3179private("SP_LOGIN_CHECK_XZ_KEY", false) && !v0.m2736try().m2741const()) {
            LoginActivity.l(activity);
            return;
        }
        if (z) {
            m2620do = tt.m2620do("CACHE_NOVEL_FZYD_BATCH_CONFIG_KEY", "{\"flag\":false,\"every\":[100,200,0]}");
        } else if (w0.m2889return(str)) {
            m2620do = tt.m2620do("CACHE_NOVEL_WJ_BATCH_CONFIG_KEY", "{\"flag\":false,\"every\":[100,200,0]}");
        } else {
            m2620do = tt.m2620do("CACHE_NOVEL_LZ_BATCH_CONFIG_KEY", "{\"flag\":false,\"every\":[100,200,0]}");
        }
        if (!TextUtils.isEmpty(m2620do)) {
            s0 m2367if = s0.m2367if();
            Cdo cdo = new Cdo(this, celse, z2, str, str2);
            if (m2367if != null) {
                if (m1925else() != null) {
                    gg<String, AppService.Cif> ggVar = AppService.f6400do;
                    if ((ggVar != null ? ggVar.size() : 0) > 0) {
                        ToastUtils.show((int) R.string.download_please_waite_txt);
                        return;
                    }
                    lv lvVar = new lv();
                    NovelBatchCachePopup novelBatchCachePopup = new NovelBatchCachePopup(activity, str, m2620do, cdo);
                    if (novelBatchCachePopup instanceof CenterPopupView) {
                        lvVar.f2917continue = zu.f6266try;
                    } else {
                        lvVar.f2917continue = zu.f6266try;
                    }
                    novelBatchCachePopup.popupInfo = lvVar;
                    novelBatchCachePopup.show();
                    return;
                }
                throw null;
            }
            throw null;
        } else if (s0.m2367if().m2372goto(activity, hf.BOOK, str)) {
        } else {
            m1940throw(activity, new Cif(this, celse, z2, str, str2));
        }
    }

    /* renamed from: final  reason: not valid java name */
    public final void m1932final(String str) {
        CollectBook collectBook;
        try {
            if (this.f3333do == null) {
                this.f3333do = new gg<>();
            }
            this.f3333do.put(str, str);
            AppService.m3303new(str);
            if (this.f3335if == null || (collectBook = this.f3335if.get(str)) == null) {
                return;
            }
            collectBook.setProgress(0);
            collectBook.setState(1);
            m1929class(collectBook);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m1933for(Activity activity, String str, String str2, boolean z, Celse celse) {
        m1935if(activity, str, str2, null, z, celse);
    }

    /* renamed from: goto  reason: not valid java name */
    public boolean m1934goto(String str) {
        gg<String, String> ggVar = this.f3333do;
        if (ggVar != null) {
            ggVar.m957do();
            return ggVar.f1563if.containsKey(str);
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public void m1935if(Activity activity, String str, String str2, String str3, boolean z, Celse celse) {
        if (ze.m3179private("SP_LOGIN_CHECK_XZ_KEY", false) && !v0.m2736try().m2741const()) {
            LoginActivity.l(activity);
        } else if (s0.m2367if().m2372goto(activity, hf.COMIC, str)) {
        } else {
            m1940throw(activity, new Cfor(this, z, str, str2, str3, celse));
        }
    }

    /* renamed from: import  reason: not valid java name */
    public void m1936import() {
        try {
            if (this.f3336new != null) {
                Iterator it = ((HashSet) this.f3336new.entrySet()).iterator();
                while (it.hasNext()) {
                    m1928catch((String) ((Map.Entry) it.next()).getKey());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m1937new(String str, String str2) {
        try {
            m1932final(str);
            if (this.f3335if != null) {
                this.f3335if.remove(str);
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("readPage", (Integer) 0);
            contentValues.put("percentage", (Integer) 0);
            contentValues.put(NotificationCompat.CATEGORY_PROGRESS, (Integer) 0);
            contentValues.put("max", (Integer) 0);
            contentValues.put("state", (Integer) 1);
            contentValues.put("fileType", (Integer) 0);
            contentValues.put("readChapterId", "");
            LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
            try {
                LitePal.deleteAll(ChapterBean.class, "novelId = ?", str);
                LitePal.deleteAll(CacheFailedBean.class, "novelId = ?", str);
                LitePal.deleteAll(BookMark.class, "chapterId = ?", str);
                LitePal.deleteAll(WebChapterBatchBean.class, "novelId = ?", str);
                DownloadProgress.removeDownloadProgress(w.m2858super(str));
                ReadFootprint.removeNovelFootprint(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            ze.m3173import(str);
            da.m437throws(str);
            da.m418default(str);
            TaskInfo taskInfo = (TaskInfo) LitePal.where("bookId = ?", str).findFirst(TaskInfo.class);
            if (taskInfo != null) {
                kf.m1483goto(taskInfo);
            }
            ToastUtils.show((CharSequence) ze.r(R.string.download_is_delete_cache_finish_txt, str2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: super  reason: not valid java name */
    public final void m1938super(String str) {
        ComicCollectBean comicCollectBean;
        try {
            if (this.f3334for == null) {
                this.f3334for = new gg<>();
            }
            this.f3334for.put(str, str);
            AppService.m3305try(str);
            if (this.f3336new == null || (comicCollectBean = this.f3336new.get(str)) == null) {
                return;
            }
            comicCollectBean.setProgress(0);
            comicCollectBean.setState(1);
            m1930const(comicCollectBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public boolean m1939this(String str) {
        gg<String, String> ggVar = this.f3334for;
        if (ggVar != null) {
            ggVar.m957do();
            return ggVar.f1563if.containsKey(str);
        }
        return false;
    }

    /* renamed from: throw  reason: not valid java name */
    public final void m1940throw(Activity activity, Celse celse) {
        if (eg.m600implements()) {
            boolean booleanValue = eg.m598goto("CACHE_DOWNLOAD_4G") ? ((Boolean) p0.m2001do("CACHE_DOWNLOAD_4G")).booleanValue() : false;
            if (!eg.a() && !booleanValue) {
                ze.d0(activity, ze.q(R.string.cache_tips_title_txt), ze.q(R.string.cache_tips_no_wifi_txt), ze.q(R.string.cache_tips_name_txt), new Cnew(this, celse), null, new Ctry(this, celse), true);
                return;
            } else {
                celse.mo1179do(true);
                return;
            }
        }
        eg.m607private(activity, new Ccase(this, celse));
    }

    /* renamed from: try  reason: not valid java name */
    public void m1941try(String str, String str2) {
        try {
            m1938super(str);
            if (this.f3336new != null) {
                this.f3336new.remove(str);
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(NotificationCompat.CATEGORY_PROGRESS, (Integer) 0);
            contentValues.put("state", (Integer) 1);
            LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
            LitePal.deleteAll(CacheFailedBean.class, "novelId = ?", str);
            ToastUtils.show((CharSequence) ze.r(R.string.download_is_delete_cache_finish_txt, str2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: while  reason: not valid java name */
    public void m1942while() {
        try {
            if (this.f3335if != null) {
                Iterator it = ((HashSet) this.f3335if.entrySet()).iterator();
                while (it.hasNext()) {
                    m1926break((String) ((Map.Entry) it.next()).getKey());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
