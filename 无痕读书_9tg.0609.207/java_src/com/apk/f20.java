package com.apk;

import android.view.View;
import androidx.annotation.NonNull;
import com.biquge.ebook.app.adapter.ShelfMenuAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.view.ComicMenuPopupView;
/* compiled from: ComicMenuPopupView.java */
/* loaded from: classes8.dex */
public class f20 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ShelfMenuAdapter f1214do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicMenuPopupView f1215if;

    public f20(ComicMenuPopupView comicMenuPopupView, ShelfMenuAdapter shelfMenuAdapter) {
        this.f1215if = comicMenuPopupView;
        this.f1214do = shelfMenuAdapter;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(@NonNull BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            if (this.f1215if.f10115for != null) {
                this.f1215if.f10115for.onData(Integer.valueOf(this.f1214do.getItem(i).getIndexTag()));
            }
            if (this.f1214do.getItem(i).isSwitch()) {
                return;
            }
            this.f1215if.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
