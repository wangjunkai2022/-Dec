package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.activity.FeedBackActivity;
import com.manhua.adapter.ComicRecyclerViewAdapter;

/* compiled from: ComicRecyclerViewAdapter.java */
/* loaded from: classes8.dex */
public class kz extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicRecyclerViewAdapter f2732do;

    public kz(ComicRecyclerViewAdapter comicRecyclerViewAdapter) {
        this.f2732do = comicRecyclerViewAdapter;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        l00 l00Var = this.f2732do.f9634for;
        if (l00Var != null) {
            FeedBackActivity.i(f00.this.f3971if, hf.COMIC, FeedBackActivity.f6632new[4], "我的账号当前处于封禁状态，请帮我查询状态。");
        }
    }
}
