package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import com.chad.library.adapter.base.BaseQuickAdapter;

/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class m9 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f2992do;

    public m9(NewBookReadMenuView newBookReadMenuView) {
        this.f2992do = newBookReadMenuView;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (g2.m912const() == i) {
            return;
        }
        g2.m907abstract(i);
        g2.m913continue(-1);
        g2.m925package(i);
        this.f2992do.f7017new.notifyDataSetChanged();
        l2 l2Var = this.f2992do.f7000case;
        if (l2Var != null) {
            l2Var.mo1594finally();
        }
    }
}
