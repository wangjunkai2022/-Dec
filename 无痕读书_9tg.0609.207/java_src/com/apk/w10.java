package com.apk;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.fragment.ComicNewStoreFragment;
/* compiled from: ComicNewStoreFragment.java */
/* loaded from: classes8.dex */
public class w10 implements BaseQuickAdapter.RequestLoadMoreListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicNewStoreFragment f5228do;

    public w10(ComicNewStoreFragment comicNewStoreFragment) {
        this.f5228do = comicNewStoreFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
    public void onLoadMoreRequested() {
        ComicNewStoreFragment comicNewStoreFragment = this.f5228do;
        String str = comicNewStoreFragment.f10010class;
        String replace = str.replace("{page}", comicNewStoreFragment.f10011const + "");
        z2 z2Var = comicNewStoreFragment.f10030while;
        if (z2Var != null) {
            x4.m2957import(replace, 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new f3(z2Var));
        }
    }
}
