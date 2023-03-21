package com.apk;

import android.view.View;
import com.apk.f00;
import com.manhua.adapter.ComicRecyclerViewAdapter;

/* compiled from: ComicRecyclerViewAdapter.java */
/* loaded from: classes8.dex */
public class jz extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicRecyclerViewAdapter f2435do;

    public jz(ComicRecyclerViewAdapter comicRecyclerViewAdapter) {
        this.f2435do = comicRecyclerViewAdapter;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        l00 l00Var = this.f2435do.f9634for;
        if (l00Var != null) {
            ((f00.Celse) l00Var).m735do();
        }
    }
}
