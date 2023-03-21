package com.apk;

import com.biquge.ebook.app.ui.fragment.HomeFragment;

/* compiled from: HomeFragment.java */
/* loaded from: classes8.dex */
public class tb implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f4671do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ HomeFragment f4672if;

    public tb(HomeFragment homeFragment, int i) {
        this.f4672if = homeFragment;
        this.f4671do = i;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        if (this.f4671do == i) {
            return;
        }
        tt.f4763do.putInt("SP_SHELF_LIST_MODE_KEY", i);
        HomeFragment.a(this.f4672if);
    }
}
