package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.view.NovelCategoryThemePopupView;
import com.chad.library.adapter.base.BaseQuickAdapter;
/* compiled from: NovelCategoryThemePopupView.java */
/* loaded from: classes8.dex */
public class zc implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NovelCategoryThemePopupView f6172do;

    public zc(NovelCategoryThemePopupView novelCategoryThemePopupView) {
        this.f6172do = novelCategoryThemePopupView;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        g1 g1Var = this.f6172do.f7721class;
        if (g1Var != null) {
            g1Var.onData(Integer.valueOf(i));
        }
        this.f6172do.dismiss();
    }
}
