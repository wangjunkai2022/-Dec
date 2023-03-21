package com.apk;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.mi;
/* compiled from: RecyclerViewPreloader.java */
/* loaded from: classes8.dex */
public final class cj<T> extends RecyclerView.OnScrollListener {

    /* renamed from: do  reason: not valid java name */
    public final bj f639do;

    public cj(@NonNull qi qiVar, @NonNull mi.Cdo<T> cdo, @NonNull mi.Cif<T> cif, int i) {
        this.f639do = new bj(new mi(qiVar, cdo, cif, i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        this.f639do.onScrolled(recyclerView, i, i2);
    }
}
