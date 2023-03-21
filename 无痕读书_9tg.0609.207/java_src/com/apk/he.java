package com.apk;

import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.view.WebBookDirLayout;
/* compiled from: WebBookDirLayout.java */
/* loaded from: classes8.dex */
public class he implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebBookDirLayout f1833do;

    public he(WebBookDirLayout webBookDirLayout) {
        this.f1833do = webBookDirLayout;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        WebBook.ChaptersBean chaptersBean = this.f1833do.f7880goto.get(i);
        if (chaptersBean != null) {
            this.f1833do.f7879for = chaptersBean.getUrl();
            WebBookDirLayout webBookDirLayout = this.f1833do;
            webBookDirLayout.f7878else = i;
            qd qdVar = webBookDirLayout.f7874break;
            if (qdVar != null) {
                qdVar.m2120break(2, webBookDirLayout.f7879for, webBookDirLayout.f7875case);
            }
        }
    }
}
