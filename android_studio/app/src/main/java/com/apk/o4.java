package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import java.util.List;

/* compiled from: NovelShelfPresenter.java */
/* loaded from: classes8.dex */
public class o4 extends c1<List<CollectBook>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ t4 f3358do;

    public o4(t4 t4Var) {
        this.f3358do = t4Var;
    }

    @Override // com.apk.c1
    public List<CollectBook> doInBackground() {
        return t4.m2570for();
    }

    @Override // com.apk.c1
    public void onPostExecute(List<CollectBook> list) {
        List<CollectBook> list2 = list;
        super.onPostExecute(list2);
        v5 v5Var = this.f3358do.f4635for;
        if (v5Var != null) {
            v5Var.mo2778if(list2);
        }
    }
}
