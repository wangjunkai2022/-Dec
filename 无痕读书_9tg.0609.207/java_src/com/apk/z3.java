package com.apk;

import com.biquge.ebook.app.bean.Footprint;
import java.util.List;
import org.litepal.LitePal;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class z3 extends c1<List<Footprint>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f6116do;

    public z3(v3 v3Var) {
        this.f6116do = v3Var;
    }

    @Override // com.apk.c1
    public List<Footprint> doInBackground() {
        List<Footprint> find = LitePal.order("saveTime desc").find(Footprint.class);
        if (find != null && find.size() > 0) {
            for (Footprint footprint : find) {
                footprint.setItemType(1);
            }
        }
        return find;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<Footprint> list) {
        List<Footprint> list2 = list;
        super.onPostExecute(list2);
        u5 u5Var = this.f6116do.f4987for;
        if (u5Var != null) {
            u5Var.mo2682new(list2);
        }
    }
}
