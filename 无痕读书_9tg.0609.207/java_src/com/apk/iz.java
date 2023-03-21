package com.apk;

import android.view.View;
import com.manhua.adapter.ComicRecyclerViewAdapter;
/* compiled from: ComicRecyclerViewAdapter.java */
/* loaded from: classes8.dex */
public class iz extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicRecyclerViewAdapter f2266do;

    public iz(ComicRecyclerViewAdapter comicRecyclerViewAdapter) {
        this.f2266do = comicRecyclerViewAdapter;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        l00 l00Var = this.f2266do.f9634for;
        if (l00Var != null) {
            ze.M(f00.this.f3971if);
        }
    }
}
