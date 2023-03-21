package com.apk;

import android.content.Intent;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.activity.MyListActivity;
import com.manhua.ui.activity.CreateComicListActivity;
import com.manhua.ui.fragment.ComicListFragment;

/* compiled from: ComicListFragment.java */
/* loaded from: classes8.dex */
public class r10 implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicListFragment f3984do;

    public r10(ComicListFragment comicListFragment) {
        this.f3984do = comicListFragment;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        if (!v0.m2736try().m2741const()) {
            LoginActivity.l(this.f3984do.getSupportActivity());
        } else if (i == 0) {
            this.f3984do.startActivity(new Intent(this.f3984do.getSupportActivity(), CreateComicListActivity.class));
        } else if (i != 1) {
        } else {
            MyListActivity.i(this.f3984do.getSupportActivity(), hf.COMIC);
        }
    }
}
