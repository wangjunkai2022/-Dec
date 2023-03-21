package com.apk;

import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: RecyclerToListViewScrollListener.java */
/* loaded from: classes8.dex */
public final class bj extends RecyclerView.OnScrollListener {

    /* renamed from: do  reason: not valid java name */
    public final AbsListView.OnScrollListener f339do;

    /* renamed from: if  reason: not valid java name */
    public int f341if = -1;

    /* renamed from: for  reason: not valid java name */
    public int f340for = -1;

    /* renamed from: new  reason: not valid java name */
    public int f342new = -1;

    public bj(@NonNull AbsListView.OnScrollListener onScrollListener) {
        this.f339do = onScrollListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        int i2 = 2;
        if (i == 0) {
            i2 = 0;
        } else if (i == 1) {
            i2 = 1;
        } else if (i != 2) {
            i2 = Integer.MIN_VALUE;
        }
        this.f339do.onScrollStateChanged(null, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int abs = Math.abs(findFirstVisibleItemPosition - linearLayoutManager.findLastVisibleItemPosition());
        int itemCount = recyclerView.getAdapter().getItemCount();
        if (findFirstVisibleItemPosition == this.f341if && abs == this.f340for && itemCount == this.f342new) {
            return;
        }
        this.f339do.onScroll(null, findFirstVisibleItemPosition, abs, itemCount);
        this.f341if = findFirstVisibleItemPosition;
        this.f340for = abs;
        this.f342new = itemCount;
    }
}
