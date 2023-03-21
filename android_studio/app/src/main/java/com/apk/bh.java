package com.apk;

import androidx.recyclerview.widget.GridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;

/* compiled from: StoreSpanSizeLookup.java */
/* loaded from: classes8.dex */
public class bh extends GridLayoutManager.SpanSizeLookup {

    /* renamed from: do  reason: not valid java name */
    public final BaseQuickAdapter f316do;

    /* renamed from: if  reason: not valid java name */
    public final int f317if;

    public bh(BaseQuickAdapter baseQuickAdapter, int i) {
        this.f316do = baseQuickAdapter;
        this.f317if = i;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public int getSpanSize(int i) {
        int itemViewType = this.f316do.getItemViewType(i);
        if (itemViewType == 5 || itemViewType == 19 || itemViewType == 22 || itemViewType == 24) {
            return 3;
        }
        if (itemViewType == 3 || itemViewType == 16 || itemViewType == 17 || itemViewType == 20 || itemViewType == 14) {
            return 4;
        }
        if (itemViewType == 6 || itemViewType == 8 || itemViewType == 10 || itemViewType == 25 || itemViewType == 11) {
            return 6;
        }
        return this.f317if;
    }
}
