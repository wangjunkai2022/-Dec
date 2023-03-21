package com.apk;

import android.content.ContentValues;
import android.os.Handler;
import android.text.TextUtils;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.ReadFootprint;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import java.util.ArrayList;
import java.util.List;
import org.litepal.LitePal;
/* compiled from: BookReadPresenter.java */
/* loaded from: classes8.dex */
public class i2 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2033do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ h2 f2034if;

    public i2(h2 h2Var, String str) {
        this.f2034if = h2Var;
        this.f2033do = str;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        ChapterBean chapterBean;
        final h2 h2Var = this.f2034if;
        String str = this.f2033do;
        if (h2Var != null) {
            h2Var.f1693public = Cfinally.m797else().m807extends() || Cfinally.m797else().m806default();
            CollectBook m1841throw = n2.m1841throw(h2Var.m1082super());
            h2Var.f1689new = m1841throw;
            if (m1841throw != null) {
                h2Var.f1695static = true;
            }
            if (!TextUtils.isEmpty(str)) {
                h2Var.f1672case = str;
            } else {
                CollectBook collectBook = h2Var.f1689new;
                if (collectBook != null) {
                    String readChapterId = collectBook.getReadChapterId();
                    h2Var.f1672case = readChapterId;
                    if (TextUtils.isEmpty(readChapterId)) {
                        h2Var.f1672case = h2Var.f1689new.getFirstChapterId();
                        WebSiteBean webSiteBean = h2Var.f1704try;
                        if (webSiteBean != null) {
                            String firstChapterUrl = webSiteBean.getFirstChapterUrl();
                            if (!TextUtils.isEmpty(firstChapterUrl)) {
                                h2Var.f1672case = nd.m1863new(h2Var.f1704try.getNovelId(), firstChapterUrl);
                                if (((ChapterBean) LitePal.where("novelId = ? and oid = ?", h2Var.f1704try.getNovelId(), h2Var.f1672case).findFirst(ChapterBean.class)) == null) {
                                    nd.m1858for(h2Var.f1704try.getNovelId(), h2Var.f1704try.getChapterUrl(), "", firstChapterUrl).save();
                                }
                            }
                        }
                    }
                    h2Var.f1683goto = h2Var.f1689new.getReadPage();
                    CollectBook collectBook2 = h2Var.f1689new;
                    if (collectBook2 != null && collectBook2.isNew()) {
                        String collectId = h2Var.f1689new.getCollectId();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
                        contentValues.put("isNew", Boolean.FALSE);
                        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", collectId);
                    }
                } else {
                    ReadFootprint novelFootprint = ReadFootprint.getNovelFootprint(h2Var.m1082super());
                    if (novelFootprint != null) {
                        h2Var.f1672case = novelFootprint.getChapterId();
                        h2Var.f1683goto = novelFootprint.getReadPage();
                    } else {
                        Book book = h2Var.f1682for;
                        if (book != null) {
                            h2Var.f1672case = book.getFirstChapterId();
                        } else {
                            WebSiteBean webSiteBean2 = h2Var.f1704try;
                            if (webSiteBean2 != null) {
                                String firstChapterUrl2 = webSiteBean2.getFirstChapterUrl();
                                if (!TextUtils.isEmpty(firstChapterUrl2)) {
                                    h2Var.f1672case = nd.m1863new(h2Var.f1704try.getNovelId(), firstChapterUrl2);
                                    if (((ChapterBean) LitePal.where("novelId = ? and oid = ?", h2Var.f1704try.getNovelId(), h2Var.f1672case).findFirst(ChapterBean.class)) == null) {
                                        nd.m1858for(h2Var.f1704try.getNovelId(), h2Var.f1704try.getChapterUrl(), "", firstChapterUrl2).save();
                                    }
                                }
                            }
                        }
                        h2Var.f1683goto = 0;
                    }
                }
            }
            if (TextUtils.isEmpty(h2Var.f1672case) && (chapterBean = (ChapterBean) LitePal.where("novelId = ?", h2Var.m1082super()).findFirst(ChapterBean.class)) != null) {
                h2Var.f1672case = chapterBean.getOid();
            }
            ((l2) h2Var.f3970do).mo1590do(true, false);
            final ArrayList arrayList = new ArrayList();
            ChapterBean m1073import = h2Var.m1073import(h2Var.f1672case);
            if (m1073import != null) {
                ArrayList arrayList2 = new ArrayList();
                if (!h2Var.m1088volatile(m1073import, false)) {
                    List<BookChapter> m = h2Var.m(m1073import, false);
                    if (((((ArrayList) m).size() > 0 ? 1 : 0) & 1) != 0) {
                        arrayList2.addAll(m);
                    }
                }
                r3 = arrayList2.size();
                arrayList.addAll(arrayList2);
            }
            if (r3 > 0) {
                final int i = h2Var.f1683goto;
                if (i > 0) {
                    i--;
                }
                Handler handler = h2Var.f1698switch;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.apk.c2
                        @Override // java.lang.Runnable
                        public final void run() {
                            h2.this.m1084synchronized(arrayList, i);
                        }
                    });
                }
            }
            h2Var.w();
            return super.doInBackground();
        }
        throw null;
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        r0 m2199catch = r0.m2199catch();
        h2 h2Var = this.f2034if;
        m2199catch.m2203const(h2Var.f1672case, h2Var.f1678else, h2Var.f1681finally);
    }
}
