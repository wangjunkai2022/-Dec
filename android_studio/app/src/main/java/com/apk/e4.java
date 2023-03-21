package com.apk;

import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.NovelDirBean;
import java.util.List;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class e4 extends c1<List<ChapterBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f993do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ boolean f994for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ NovelDirBean f995if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ boolean f996new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ v3 f997try;

    public e4(v3 v3Var, String str, NovelDirBean novelDirBean, boolean z, boolean z2) {
        this.f997try = v3Var;
        this.f993do = str;
        this.f995if = novelDirBean;
        this.f994for = z;
        this.f996new = z2;
    }

    @Override // com.apk.c1
    public List<ChapterBean> doInBackground() {
        return v3.m2757goto(this.f993do, this.f995if, this.f994for, this.f996new);
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ChapterBean> list) {
        List<ChapterBean> list2 = list;
        super.onPostExecute(list2);
        u5 u5Var = this.f997try.f4987for;
        if (u5Var != null) {
            u5Var.mo2678goto(list2);
        }
    }
}
