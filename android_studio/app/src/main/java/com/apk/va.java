package com.apk;

import android.view.View;
import android.widget.AdapterView;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.fragment.BookDetailDirFragment;

/* compiled from: BookDetailDirFragment.java */
/* loaded from: classes8.dex */
public class va implements AdapterView.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookDetailDirFragment f5057do;

    public va(BookDetailDirFragment bookDetailDirFragment) {
        this.f5057do = bookDetailDirFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ChapterBean chapterBean = this.f5057do.f7209if.f2437do.get(i);
        if (chapterBean.isGroup()) {
            return;
        }
        NewBookReadActivity.Z(this.f5057do.getSupportActivity(), this.f5057do.f7207do, chapterBean.getOid(), "detail");
    }
}
