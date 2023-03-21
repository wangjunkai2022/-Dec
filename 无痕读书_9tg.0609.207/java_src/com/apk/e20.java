package com.apk;

import android.view.View;
import com.manhua.ui.view.ComicMenuPopupView;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicMenuPopupView.java */
/* loaded from: classes8.dex */
public class e20 extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicMenuPopupView f991do;

    public e20(ComicMenuPopupView comicMenuPopupView) {
        this.f991do = comicMenuPopupView;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        int id = view.getId();
        if (id != R.id.dialog_menu_book_detail_bt) {
            if (id != R.id.pop_cancel_txt) {
                return;
            }
            this.f991do.dismiss();
            return;
        }
        g1 g1Var = this.f991do.f10115for;
        if (g1Var != null) {
            g1Var.onData(-1);
        }
        this.f991do.dismiss();
    }
}
