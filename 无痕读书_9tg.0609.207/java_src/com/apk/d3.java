package com.apk;

import com.manhua.data.bean.ComicFootprint;
import java.util.List;
import org.litepal.LitePal;
/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class d3 extends c1<List<ComicFootprint>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f816do;

    public d3(z2 z2Var) {
        this.f816do = z2Var;
    }

    @Override // com.apk.c1
    public List<ComicFootprint> doInBackground() {
        List<ComicFootprint> find = LitePal.order("saveTime desc").find(ComicFootprint.class);
        if (find != null && find.size() > 0) {
            for (ComicFootprint comicFootprint : find) {
                comicFootprint.setItemType(1);
            }
        }
        return find;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ComicFootprint> list) {
        List<ComicFootprint> list2 = list;
        super.onPostExecute(list2);
        r5 r5Var = this.f816do.f6096for;
        if (r5Var != null) {
            r5Var.mo2236for(list2);
        }
    }
}
