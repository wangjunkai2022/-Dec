package com.apk;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.webread.view.WebBookDirLayout;
/* compiled from: WebBookDirLayout.java */
/* loaded from: classes8.dex */
public class ge implements AdapterView.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebBookDirLayout f1554do;

    public ge(WebBookDirLayout webBookDirLayout) {
        this.f1554do = webBookDirLayout;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ChapterBean chapterBean = this.f1554do.f7877do.f2437do.get(i);
        if (chapterBean != null) {
            WebBookDirLayout webBookDirLayout = this.f1554do;
            h1 h1Var = webBookDirLayout.f7883this;
            if (h1Var != null) {
                h1Var.mo1050for(chapterBean);
                return;
            }
            webBookDirLayout.f7875case.setReadChapterUrl(chapterBean.getUrl());
            NewBookReadActivity.c0((Activity) this.f1554do.getContext(), this.f1554do.f7875case);
        }
    }
}
