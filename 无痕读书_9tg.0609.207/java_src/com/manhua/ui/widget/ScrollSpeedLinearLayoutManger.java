package com.manhua.ui.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes8.dex */
public class ScrollSpeedLinearLayoutManger extends LinearLayoutManager {

    /* renamed from: do  reason: not valid java name */
    public float f10232do;

    /* renamed from: if  reason: not valid java name */
    public Context f10233if;

    /* renamed from: com.manhua.ui.widget.ScrollSpeedLinearLayoutManger$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends LinearSmoothScroller {
        public Cdo(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return ScrollSpeedLinearLayoutManger.this.f10232do / displayMetrics.density;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i) {
            return ScrollSpeedLinearLayoutManger.this.computeScrollVectorForPosition(i);
        }
    }

    public ScrollSpeedLinearLayoutManger(Context context) {
        super(context);
        this.f10232do = 0.03f;
        this.f10233if = context;
        this.f10232do = context.getResources().getDisplayMetrics().density * 0.08f;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        super.collectAdjacentPrefetchPositions(i, i2, state, layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        Cdo cdo = new Cdo(recyclerView.getContext());
        cdo.setTargetPosition(i);
        startSmoothScroll(cdo);
    }
}
