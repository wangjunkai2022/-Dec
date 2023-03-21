package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* compiled from: NewBookReadActivity.java */
/* loaded from: classes8.dex */
public class g9 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public String f1529do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ NewBookReadActivity f1530for;

    /* renamed from: if  reason: not valid java name */
    public String f1531if;

    public g9(NewBookReadActivity newBookReadActivity) {
        this.f1530for = newBookReadActivity;
    }

    /* renamed from: do  reason: not valid java name */
    public void m949do() {
        eg.j(this.f1530for, ze.r(R.string.smart_read_match_success_txt, this.f1531if), null, false, false);
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        StringBuilder m1016super = Cgoto.m1016super("SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY");
        m1016super.append(this.f1530for.L());
        String sb = m1016super.toString();
        ze.e0(sb, ze.m3172implements(ze.n(sb)));
        ContentValues contentValues = new ContentValues();
        contentValues.put("readChapterId", "");
        contentValues.put("fileType", (Integer) 2);
        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", sb);
        ze.V();
        BookChapter m1078public = this.f1530for.f6921catch.m1078public();
        this.f1531if = m1078public != null ? m1078public.getChapterName() : "";
        List<ChapterBean> m2758import = v3.m2758import(sb);
        if (m2758import != null && m2758import.size() > 0) {
            Iterator<ChapterBean> it = m2758import.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ChapterBean next = it.next();
                if (this.f1531if.contains(next.getName())) {
                    this.f1529do = next.getOid();
                    this.f1531if = next.getName();
                    break;
                }
            }
        }
        if (!TextUtils.isEmpty(this.f1529do)) {
            n2.q(this.f1530for.L(), this.f1529do);
            this.f1530for.f6921catch.f1672case = this.f1529do;
        }
        return super.doInBackground();
    }

    /* renamed from: if  reason: not valid java name */
    public void m950if() {
        eg.j(this.f1530for, ze.q(R.string.smart_read_match_faild_txt), null, false, false);
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (!TextUtils.isEmpty(this.f1529do)) {
            NewBookReadActivity newBookReadActivity = this.f1530for;
            newBookReadActivity.f6945throw = true;
            newBookReadActivity.f6921catch.f1694return = true;
            newBookReadActivity.mMenuView.setImportFile(true);
            this.f1530for.f6921catch.w();
            this.f1530for.mo1586catch();
            this.f1530for.postDelayed(new Runnable() { // from class: com.apk.u8
                @Override // java.lang.Runnable
                public final void run() {
                    g9.this.m949do();
                }
            }, 500L);
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY");
        m1016super.append(this.f1530for.L());
        this.f1530for.f0(m1016super.toString(), "", true);
        this.f1530for.postDelayed(new Runnable() { // from class: com.apk.t8
            @Override // java.lang.Runnable
            public final void run() {
                g9.this.m950if();
            }
        }, 500L);
    }
}
