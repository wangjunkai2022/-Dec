package com.apk;

import com.manhua.data.bean.ComicCollectBean;
import java.util.List;

/* compiled from: ComicShelfPresenter.java */
/* loaded from: classes8.dex */
public class k3 extends c1<List<ComicCollectBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ p3 f2450do;

    public k3(p3 p3Var) {
        this.f2450do = p3Var;
    }

    @Override // com.apk.c1
    public List<ComicCollectBean> doInBackground() {
        return p3.m2018for();
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ComicCollectBean> list) {
        List<ComicCollectBean> list2 = list;
        super.onPostExecute(list2);
        s5 s5Var = this.f2450do.f3567for;
        if (s5Var != null) {
            s5Var.mo2380if(list2);
        }
    }
}
