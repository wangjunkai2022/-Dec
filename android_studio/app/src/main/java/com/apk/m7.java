package com.apk;

import com.biquge.ebook.app.ui.activity.BookGroupDetailActivity;

/* compiled from: BookGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class m7 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookGroupDetailActivity f2987do;

    public m7(BookGroupDetailActivity bookGroupDetailActivity) {
        this.f2987do = bookGroupDetailActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        BookGroupDetailActivity bookGroupDetailActivity = this.f2987do;
        bookGroupDetailActivity.f6463this.showAtLocation(bookGroupDetailActivity.mMoreView, 80, 0, 0);
        this.f2987do.f6463this.m3066do(0, -1);
    }
}
