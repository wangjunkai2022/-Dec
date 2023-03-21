package com.apk;

import android.view.View;
import com.manhua.adapter.ComicNewStoreAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;

/* compiled from: ComicNewStoreAdapter.java */
/* loaded from: classes8.dex */
public class gz extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicBean f1659do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicNewStoreAdapter f1660if;

    public gz(ComicNewStoreAdapter comicNewStoreAdapter, ComicBean comicBean) {
        this.f1660if = comicNewStoreAdapter;
        this.f1659do = comicBean;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        ComicBean comicBean = this.f1659do;
        if (comicBean != null) {
            ComicDetailActivity.n(this.f1660if.mContext, comicBean);
        }
    }
}
