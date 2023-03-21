package com.apk;

import com.biquge.ebook.app.ui.fragment.NewStoreFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;

/* compiled from: NewStoreFragment.java */
/* loaded from: classes8.dex */
public class cc implements BaseQuickAdapter.RequestLoadMoreListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewStoreFragment f577do;

    public cc(NewStoreFragment newStoreFragment) {
        this.f577do = newStoreFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
    public void onLoadMoreRequested() {
        NewStoreFragment newStoreFragment = this.f577do;
        String str = newStoreFragment.f7548class;
        String replace = str.replace("{page}", newStoreFragment.f7549const + "");
        v3 v3Var = newStoreFragment.f7568while;
        if (v3Var != null) {
            x4.m2957import(replace, 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new i4(v3Var));
        }
    }
}
