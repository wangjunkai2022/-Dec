package com.apk;

import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import java.util.List;
/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class r9 extends c1<List<ChapterBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f4019do;

    public r9(NewBookReadMenuView newBookReadMenuView) {
        this.f4019do = newBookReadMenuView;
    }

    @Override // com.apk.c1
    public List<ChapterBean> doInBackground() {
        boolean m3346return;
        m3346return = this.f4019do.m3346return();
        if (m3346return) {
            return qd.m2114else(this.f4019do.f6999break.getChapterUrl(), this.f4019do.f6999break);
        }
        return v3.m2758import(this.f4019do.getBookId());
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ChapterBean> list) {
        List<ChapterBean> list2 = list;
        super.onPostExecute(list2);
        if (list2 != null) {
            this.f4019do.m3349super(list2);
        }
    }
}
