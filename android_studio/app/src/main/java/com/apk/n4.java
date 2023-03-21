package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import java.util.List;
import org.litepal.LitePal;

/* compiled from: NovelShelfPresenter.java */
/* loaded from: classes8.dex */
public class n4 extends c1<List<CollectBook>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3180do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ t4 f3181if;

    public n4(t4 t4Var, String str) {
        this.f3181if = t4Var;
        this.f3180do = str;
    }

    @Override // com.apk.c1
    public List<CollectBook> doInBackground() {
        String str = this.f3180do;
        List<CollectBook> find = LitePal.order(n2.m1832protected()).where("groupId = ?", str).find(CollectBook.class);
        for (CollectBook collectBook : find) {
            collectBook.setIsGroup(1);
            collectBook.setGroupId(str);
        }
        return find;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<CollectBook> list) {
        List<CollectBook> list2 = list;
        super.onPostExecute(list2);
        v5 v5Var = this.f3181if.f4635for;
        if (v5Var != null) {
            v5Var.mo2777for(list2);
        }
    }
}
