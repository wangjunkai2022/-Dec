package com.apk;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.view.ComicCategoryThemePopupView;

/* compiled from: ComicCategoryThemePopupView.java */
/* loaded from: classes8.dex */
public class d20 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicCategoryThemePopupView f815do;

    public d20(ComicCategoryThemePopupView comicCategoryThemePopupView) {
        this.f815do = comicCategoryThemePopupView;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        g1 g1Var = this.f815do.f10111class;
        if (g1Var != null) {
            g1Var.onData(Integer.valueOf(i));
        }
        this.f815do.dismiss();
    }
}
