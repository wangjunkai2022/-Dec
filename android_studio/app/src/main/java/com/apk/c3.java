package com.apk;

import com.biquge.ebook.app.bean.ComicDirBean;
import com.manhua.data.bean.ComicChapterBean;
import java.util.List;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class c3 extends c1<List<ComicChapterBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f503do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ boolean f504for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicDirBean f505if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ boolean f506new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ z2 f507try;

    public c3(z2 z2Var, String str, ComicDirBean comicDirBean, boolean z, boolean z2) {
        this.f507try = z2Var;
        this.f503do = str;
        this.f505if = comicDirBean;
        this.f504for = z;
        this.f506new = z2;
    }

    @Override // com.apk.c1
    public List<ComicChapterBean> doInBackground() {
        return z2.m3129else(this.f503do, this.f505if, this.f504for, this.f506new);
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ComicChapterBean> list) {
        List<ComicChapterBean> list2 = list;
        super.onPostExecute(list2);
        r5 r5Var = this.f507try.f6096for;
        if (r5Var != null) {
            r5Var.mo2234else(list2);
        }
    }
}
