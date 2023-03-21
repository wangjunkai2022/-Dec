package com.apk;

import com.biquge.ebook.app.widget.SwitchButton;
import com.manhua.ui.widget.ComicReadMenuView;

/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class r20 implements SwitchButton.Cnew {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f3986do;

    public r20(ComicReadMenuView comicReadMenuView) {
        this.f3986do = comicReadMenuView;
    }

    @Override // com.biquge.ebook.app.widget.SwitchButton.Cnew
    public void onCheckedChanged(SwitchButton switchButton, boolean z) {
        if (this.f3986do.f10153catch == null) {
            throw null;
        }
        tt.f4763do.putBoolean("SP_BOOK_VOLUME_FLIP_PAGE_KEY", z);
    }
}
