package com.apk;

import android.widget.TextView;
import com.biquge.ebook.app.adapter.BookMarkAdapter;
import com.biquge.ebook.app.bean.BookMark;
import com.biquge.ebook.app.ui.view.NovelDirChapterPopup;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* compiled from: NovelDirChapterPopup.java */
/* loaded from: classes8.dex */
public class ad extends c1<List<BookMark>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NovelDirChapterPopup f81do;

    public ad(NovelDirChapterPopup novelDirChapterPopup) {
        this.f81do = novelDirChapterPopup;
    }

    @Override // com.apk.c1
    public List<BookMark> doInBackground() {
        return LitePal.where("novelId = ?", this.f81do.f7734import).order("saveTime desc").find(BookMark.class);
    }

    @Override // com.apk.c1
    public void onPostExecute(List<BookMark> list) {
        List<BookMark> list2 = list;
        super.onPostExecute(list2);
        BookMarkAdapter bookMarkAdapter = this.f81do.f7736package;
        if (bookMarkAdapter != null) {
            bookMarkAdapter.setNewData(list2);
            TextView textView = this.f81do.f7728const;
            if (textView != null) {
                textView.setText(ze.q(R.string.book_mark_txt) + this.f81do.f7736package.getItemCount());
            }
        }
    }
}
