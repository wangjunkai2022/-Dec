package com.apk;

import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.widget.ComicReadMenuView;
import java.util.List;

/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class n20 extends c1<List<ComicChapterBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f3176do;

    public n20(ComicReadMenuView comicReadMenuView) {
        this.f3176do = comicReadMenuView;
    }

    @Override // com.apk.c1
    public List<ComicChapterBean> doInBackground() {
        return z2.m3136throw(this.f3176do.getBookId());
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ComicChapterBean> list) {
        List<ComicChapterBean> list2 = list;
        super.onPostExecute(list2);
        if (list2 != null) {
            this.f3176do.m3652final(list2);
        }
    }
}
