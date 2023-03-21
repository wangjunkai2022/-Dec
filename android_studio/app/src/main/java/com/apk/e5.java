package com.apk;

import android.content.ContentValues;
import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.bean.BookMark;
import com.biquge.ebook.app.bean.CacheFailedBean;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.CreateBookList;
import com.biquge.ebook.app.bean.DownloadBean;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.bean.User;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCacheFailedBean;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.data.bean.ComicDownloadBean;
import com.manhua.data.bean.ComicElement;
import com.manhua.data.bean.CreateComicList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class e5 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f1006do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f1007if;

    public e5(g5 g5Var, boolean z, boolean z2) {
        this.f1006do = z;
        this.f1007if = z2;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        x4.m2953extends(p0.m2000const() + "/Logout.aspx", null);
        boolean z = this.f1006do;
        try {
            if (z) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("loginName", "");
                LitePal.updateAll(CollectBook.class, contentValues, "fileType != ?", "1");
            } else {
                List<CollectBook> m1824implements = n2.m1824implements();
                if (m1824implements != null && m1824implements.size() > 0) {
                    for (CollectBook collectBook : m1824implements) {
                        da.m437throws(collectBook.getCollectId());
                        da.m418default(collectBook.getCollectId());
                    }
                    LitePal.deleteAll(BookMark.class, new String[0]);
                    LitePal.deleteAll(CollectBook.class, new String[0]);
                    LitePal.deleteAll(ChapterBean.class, new String[0]);
                    ze.m3176native(a6.m18else().m22if());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (z) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("loginName", "");
                LitePal.updateAll(ComicCollectBean.class, contentValues2, new String[0]);
            } else {
                List<ComicCollectBean> m1770implements = mu.m1770implements();
                if (m1770implements != null && m1770implements.size() > 0) {
                    for (ComicCollectBean comicCollectBean : m1770implements) {
                        String collectId = comicCollectBean.getCollectId();
                        ze.W("CATELOG_GET_COMIC_" + collectId);
                    }
                    LitePal.deleteAll(ComicCollectBean.class, new String[0]);
                    LitePal.deleteAll(ComicChapterBean.class, new String[0]);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            p0.m2008native(false);
            LitePal.deleteAll(User.class, new String[0]);
            LitePal.deleteAll(TaskInfo.class, new String[0]);
            LitePal.deleteAll(CreateBookList.class, new String[0]);
            LitePal.deleteAll(BookElement.class, new String[0]);
            LitePal.deleteAll(DownloadBean.class, new String[0]);
            LitePal.deleteAll(CacheFailedBean.class, new String[0]);
            LitePal.deleteAll(CreateComicList.class, new String[0]);
            LitePal.deleteAll(ComicElement.class, new String[0]);
            LitePal.deleteAll(ComicDownloadBean.class, new String[0]);
            LitePal.deleteAll(ComicCacheFailedBean.class, new String[0]);
            o0.m1925else().m1942while();
            gg<String, CollectBook> ggVar = o0.m1925else().f3335if;
            if (ggVar != null) {
                ggVar.clear();
            }
            o0.m1925else().m1936import();
            gg<String, ComicCollectBean> ggVar2 = o0.m1925else().f3336new;
            if (ggVar2 != null) {
                ggVar2.clear();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        ze.W("SP_LOGIN_COOKIE_VALUE");
        v0.m2736try().f4976do = null;
        mf.m1713if("login_action", Boolean.FALSE);
        ze.V();
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (this.f1007if) {
            ToastUtils.show((CharSequence) ze.q(R.string.main_login_logout_success_txt));
        } else {
            ToastUtils.show((CharSequence) ze.q(R.string.main_logout_success_txt));
        }
    }
}
