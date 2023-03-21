package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import java.io.File;
import org.litepal.LitePal;

/* compiled from: NewBookReadActivity.java */
/* loaded from: classes8.dex */
public class k9 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadActivity f2494do;

    public k9(NewBookReadActivity newBookReadActivity) {
        this.f2494do = newBookReadActivity;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        NewBookReadActivity newBookReadActivity = this.f2494do;
        if (newBookReadActivity.f6945throw) {
            try {
                File file = new File(this.f2494do.f6923const.getIcon());
                if (!da.m421final(this.f2494do.L()) && file.exists()) {
                    mf.m1712do("SEND_IMPORT_MESSAGE_ACTION", "1");
                    String m3172implements = ze.m3172implements(file.getAbsolutePath());
                    mf.m1712do("SEND_IMPORT_MESSAGE_ACTION", "2");
                    ze.e0(this.f2494do.L(), m3172implements);
                    mf.m1712do("SEND_IMPORT_MESSAGE_ACTION", "3");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            Book book = newBookReadActivity.f6922class;
            if (book != null) {
                if (TextUtils.isEmpty(book.getFirstChapterId())) {
                    String id = this.f2494do.f6922class.getId();
                    CollectBook m1841throw = n2.m1841throw(id);
                    if (m1841throw == null) {
                        Book m2761throw = v3.m2761throw(id, true);
                        if (m2761throw != null) {
                            this.f2494do.f6922class = m2761throw;
                        }
                    } else {
                        if (TextUtils.isEmpty(m1841throw.getReadChapterId())) {
                            v3.m2761throw(id, true);
                            m1841throw = n2.m1841throw(id);
                        }
                        this.f2494do.f6923const = m1841throw;
                    }
                }
            } else {
                CollectBook collectBook = newBookReadActivity.f6923const;
                if (collectBook != null && newBookReadActivity.f6946throws == null && collectBook.isWebSite()) {
                    NewBookReadActivity newBookReadActivity2 = this.f2494do;
                    newBookReadActivity2.f6946throws = nd.m1853class(newBookReadActivity2.L());
                    WebSiteBean webSiteBean = this.f2494do.f6946throws;
                    if (webSiteBean != null) {
                        webSiteBean.setReadChapterUrl(null);
                    }
                }
            }
            NewBookReadActivity newBookReadActivity3 = this.f2494do;
            if (newBookReadActivity3.f6946throws != null) {
                if (newBookReadActivity3.L().startsWith("wap_")) {
                    String firstChapterUrl = this.f2494do.f6946throws.getFirstChapterUrl();
                    if (TextUtils.isEmpty(firstChapterUrl)) {
                        qd.m2114else(this.f2494do.f6946throws.getChapterUrl(), this.f2494do.f6946throws);
                    } else if (((ChapterBean) LitePal.where("novelId = ? and oid = ?", this.f2494do.f6946throws.getNovelId(), nd.m1863new(this.f2494do.f6946throws.getNovelId(), firstChapterUrl)).findFirst(ChapterBean.class)) == null) {
                        nd.m1858for(this.f2494do.f6946throws.getNovelId(), this.f2494do.f6946throws.getChapterUrl(), "", firstChapterUrl).save();
                    }
                }
                String readChapterUrl = this.f2494do.f6946throws.getReadChapterUrl();
                if (!TextUtils.isEmpty(readChapterUrl)) {
                    NewBookReadActivity newBookReadActivity4 = this.f2494do;
                    newBookReadActivity4.f6927final = nd.m1863new(newBookReadActivity4.f6946throws.getNovelId(), readChapterUrl);
                    if (!TextUtils.isEmpty(this.f2494do.f6927final) && ((ChapterBean) LitePal.where("novelId = ? and oid = ?", this.f2494do.f6946throws.getNovelId(), this.f2494do.f6927final).findFirst(ChapterBean.class)) == null) {
                        nd.m1858for(this.f2494do.f6946throws.getNovelId(), this.f2494do.f6946throws.getChapterUrl(), "", readChapterUrl).save();
                    }
                }
            }
        }
        return super.doInBackground();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f0, code lost:
        if (com.apk.ze.D("SP_NOVEL_ZIP_DOWNLOAD_ID_KEY" + r7) != false) goto L40;
     */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onPostExecute(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.k9.onPostExecute(java.lang.Object):void");
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        NewBookReadActivity newBookReadActivity = this.f2494do;
        CollectBook collectBook = newBookReadActivity.f6923const;
        if (collectBook != null) {
            newBookReadActivity.f6945throw = collectBook.isLocalBook();
        }
        NewBookReadActivity newBookReadActivity2 = this.f2494do;
        if (newBookReadActivity2.f6945throw) {
            newBookReadActivity2.m3314goto();
        }
    }
}
