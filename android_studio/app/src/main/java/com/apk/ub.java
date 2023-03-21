package com.apk;

import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
import com.biquge.ebook.app.ui.fragment.HomeFragment;
import com.manhua.ui.fragment.ComicShelfFragment;

/* compiled from: HomeFragment.java */
/* loaded from: classes8.dex */
public class ub implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ HomeFragment f4866do;

    public ub(HomeFragment homeFragment) {
        this.f4866do = homeFragment;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        p3 p3Var;
        t4 t4Var;
        tt.f4763do.putInt("SP_SHELF_SORT_MODE_KEY", i);
        HomeFragment homeFragment = this.f4866do;
        BookShelfFragment bookShelfFragment = homeFragment.f7465case;
        if (bookShelfFragment != null && (t4Var = bookShelfFragment.f7359goto) != null) {
            new b1().m141do(new o4(t4Var));
        }
        ComicShelfFragment comicShelfFragment = homeFragment.f7467else;
        if (comicShelfFragment == null || (p3Var = comicShelfFragment.f10071while) == null) {
            return;
        }
        new b1().m141do(new k3(p3Var));
    }
}
