package com.apk;

import android.view.View;
import androidx.annotation.NonNull;
import com.biquge.ebook.app.adapter.ShelfMenuAdapter;
import com.biquge.ebook.app.ui.view.BookMenuPopupView;
import com.chad.library.adapter.base.BaseQuickAdapter;

/* compiled from: BookMenuPopupView.java */
/* loaded from: classes8.dex */
public class qc implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ShelfMenuAdapter f3827do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookMenuPopupView f3828if;

    public qc(BookMenuPopupView bookMenuPopupView, ShelfMenuAdapter shelfMenuAdapter) {
        this.f3828if = bookMenuPopupView;
        this.f3827do = shelfMenuAdapter;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(@NonNull BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            if (this.f3828if.f7653for != null) {
                this.f3828if.f7653for.onData(Integer.valueOf(this.f3827do.getItem(i).getIndexTag()));
            }
            if (this.f3827do.getItem(i).isSwitch()) {
                return;
            }
            this.f3828if.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
