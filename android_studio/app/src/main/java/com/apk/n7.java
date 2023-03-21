package com.apk;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookNovelDirActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;

/* compiled from: BookNovelDirActivity.java */
/* loaded from: classes8.dex */
public class n7 implements AdapterView.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookNovelDirActivity f3197do;

    public n7(BookNovelDirActivity bookNovelDirActivity) {
        this.f3197do = bookNovelDirActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ChapterBean chapterBean = this.f3197do.f6505do.f2437do.get(i);
        if (chapterBean.isGroup()) {
            return;
        }
        BookNovelDirActivity bookNovelDirActivity = this.f3197do;
        Book book = bookNovelDirActivity.f6507if;
        if (book != null) {
            NewBookReadActivity.Z(bookNovelDirActivity, book, chapterBean.getOid(), "detail");
        } else {
            CollectBook collectBook = bookNovelDirActivity.f6506for;
            if (collectBook != null) {
                NewBookReadActivity.a0(bookNovelDirActivity, collectBook, chapterBean.getOid());
            }
        }
        if (TextUtils.isEmpty(this.f3197do.f6508new)) {
            return;
        }
        this.f3197do.onBackPressed();
    }
}
