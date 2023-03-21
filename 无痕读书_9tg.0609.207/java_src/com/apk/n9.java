package com.apk;

import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;
/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class n9 implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f3200do;

    public n9(NewBookReadMenuView newBookReadMenuView) {
        this.f3200do = newBookReadMenuView;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        try {
            ChapterBean m1080static = this.f3200do.f7007else.m1080static();
            if (m1080static != null) {
                WebReadActivity.j(this.f3200do.f7029try, m1080static.getUrl(), false, false, "阅读关闭畅读到网页");
                this.f3200do.f7029try.finish();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
