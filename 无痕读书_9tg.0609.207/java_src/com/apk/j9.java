package com.apk;

import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import java.util.List;
/* compiled from: NewBookReadActivity.java */
/* loaded from: classes8.dex */
public class j9 implements h1 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadActivity f2296do;

    public j9(NewBookReadActivity newBookReadActivity) {
        this.f2296do = newBookReadActivity;
    }

    @Override // com.apk.h1
    /* renamed from: do */
    public void mo1049do() {
        this.f2296do.u.dismiss();
    }

    @Override // com.apk.h1
    /* renamed from: for */
    public void mo1050for(ChapterBean chapterBean) {
        this.f2296do.f6921catch.C(chapterBean.getOid());
        this.f2296do.u.dismiss();
    }

    @Override // com.apk.h1
    /* renamed from: if */
    public void mo1051if(String str, int i) {
    }

    @Override // com.apk.h1
    /* renamed from: new */
    public void mo1052new(List<ChapterBean> list, String str) {
        NewBookReadMenuView newBookReadMenuView = this.f2296do.mMenuView;
        if (newBookReadMenuView != null) {
            newBookReadMenuView.m3349super(list);
        }
    }
}
