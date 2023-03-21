package com.apk;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.manhua.ui.widget.PageRecyclerView;
/* compiled from: RecycleViewScrollHelper.java */
/* loaded from: classes8.dex */
public class u20 extends RecyclerView.OnScrollListener {

    /* renamed from: class  reason: not valid java name */
    public boolean f4826class;

    /* renamed from: const  reason: not valid java name */
    public int f4827const;

    /* renamed from: final  reason: not valid java name */
    public boolean f4830final;

    /* renamed from: for  reason: not valid java name */
    public Cif f4831for;

    /* renamed from: new  reason: not valid java name */
    public Cfor f4834new;

    /* renamed from: super  reason: not valid java name */
    public int f4835super;

    /* renamed from: throw  reason: not valid java name */
    public int f4837throw;

    /* renamed from: do  reason: not valid java name */
    public RecyclerView f4828do = null;

    /* renamed from: if  reason: not valid java name */
    public Cdo f4833if = null;

    /* renamed from: try  reason: not valid java name */
    public boolean f4838try = false;

    /* renamed from: case  reason: not valid java name */
    public boolean f4824case = false;

    /* renamed from: else  reason: not valid java name */
    public int f4829else = 0;

    /* renamed from: goto  reason: not valid java name */
    public int f4832goto = 0;

    /* renamed from: this  reason: not valid java name */
    public int f4836this = -1;

    /* renamed from: break  reason: not valid java name */
    public int f4823break = 0;

    /* renamed from: catch  reason: not valid java name */
    public int f4825catch = 0;

    /* compiled from: RecycleViewScrollHelper.java */
    /* renamed from: com.apk.u20$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    /* compiled from: RecycleViewScrollHelper.java */
    /* renamed from: com.apk.u20$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {
        /* renamed from: do */
        void mo707do();

        /* renamed from: if */
        void mo713if();
    }

    /* compiled from: RecycleViewScrollHelper.java */
    /* renamed from: com.apk.u20$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    public u20(Cif cif) {
        this.f4831for = null;
        this.f4831for = cif;
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m2666do(RecyclerView recyclerView, int i, int i2) {
        PageRecyclerView.Cdo cdo;
        PageRecyclerView.Cdo cdo2;
        if (i + 1 == i2) {
            if (this.f4838try) {
                View childAt = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                int top2 = recyclerView.getChildAt(0).getTop();
                int bottom = childAt.getBottom();
                int height = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) + this.f4832goto;
                int paddingTop = recyclerView.getPaddingTop() + this.f4829else;
                if (bottom <= height && top2 < paddingTop) {
                    PageRecyclerView pageRecyclerView = (PageRecyclerView) this.f4831for;
                    if (!pageRecyclerView.f10222try && (cdo2 = pageRecyclerView.f10219for) != null) {
                        cdo2.mo3320if();
                    }
                    return true;
                }
                ((PageRecyclerView) this.f4831for).m3663for(false, true);
            } else {
                PageRecyclerView pageRecyclerView2 = (PageRecyclerView) this.f4831for;
                if (!pageRecyclerView2.f10222try && (cdo = pageRecyclerView2.f10219for) != null) {
                    cdo.mo3320if();
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m2667if(RecyclerView recyclerView, int i) {
        PageRecyclerView.Cdo cdo;
        PageRecyclerView.Cdo cdo2;
        if (i == 0) {
            if (this.f4824case) {
                int childCount = recyclerView.getChildCount();
                View childAt = recyclerView.getChildAt(0);
                View childAt2 = recyclerView.getChildAt(childCount - 1);
                int top2 = childAt.getTop();
                int bottom = childAt2.getBottom();
                int paddingTop = recyclerView.getPaddingTop() - this.f4829else;
                int height = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - this.f4832goto;
                if (top2 >= paddingTop && bottom > height) {
                    PageRecyclerView pageRecyclerView = (PageRecyclerView) this.f4831for;
                    if (!pageRecyclerView.f10221new && (cdo2 = pageRecyclerView.f10219for) != null) {
                        cdo2.mo3321new();
                    }
                    return true;
                }
                ((PageRecyclerView) this.f4831for).m3663for(true, false);
            } else {
                PageRecyclerView pageRecyclerView2 = (PageRecyclerView) this.f4831for;
                if (!pageRecyclerView2.f10221new && (cdo = pageRecyclerView2.f10219for) != null) {
                    cdo.mo3321new();
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        Cfor cfor;
        PageRecyclerView.Cdo cdo;
        if (i == 0) {
            if (this.f4826class) {
                int i2 = this.f4827const;
                try {
                    int childLayoutPosition = recyclerView.getChildLayoutPosition(recyclerView.getChildAt(0));
                    int childLayoutPosition2 = recyclerView.getChildLayoutPosition(recyclerView.getChildAt(recyclerView.getChildCount() - 1));
                    if (i2 < childLayoutPosition) {
                        recyclerView.smoothScrollToPosition(i2);
                    } else if (i2 <= childLayoutPosition2) {
                        int i3 = i2 - childLayoutPosition;
                        if (i3 >= 0 && i3 < recyclerView.getChildCount()) {
                            recyclerView.smoothScrollBy(0, recyclerView.getChildAt(i3).getTop());
                        }
                    } else {
                        recyclerView.smoothScrollToPosition(i2);
                        this.f4827const = i2;
                        this.f4826class = true;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.f4831for != null) {
                if ((recyclerView.computeVerticalScrollOffset() + recyclerView.computeVerticalScrollExtent() >= recyclerView.computeVerticalScrollRange()) && !this.f4830final && (cdo = ((PageRecyclerView) this.f4831for).f10219for) != null) {
                    cdo.mo3322try();
                }
            }
            this.f4830final = false;
            this.f4837throw = 0;
            Cfor cfor2 = this.f4834new;
            if (cfor2 != null) {
                cfor2.mo713if();
            }
        } else if (1 == i && (cfor = this.f4834new) != null) {
            cfor.mo707do();
        }
        if (this.f4831for == null || recyclerView.getAdapter() == null || recyclerView.getChildCount() <= 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            int i4 = this.f4837throw;
            if (i4 == 1) {
                m2667if(recyclerView, findFirstVisibleItemPosition);
            } else if (i4 == 2) {
                m2666do(recyclerView, findLastVisibleItemPosition, recyclerView.getAdapter().getItemCount());
            } else {
                if (i == 0) {
                    if (recyclerView.canScrollVertically(1)) {
                        m2667if(recyclerView, findFirstVisibleItemPosition);
                    }
                    if (recyclerView.canScrollVertically(-1)) {
                        m2666do(recyclerView, findLastVisibleItemPosition, recyclerView.getAdapter().getItemCount());
                    }
                }
                ((PageRecyclerView) this.f4831for).m3663for(false, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        this.f4830final = true;
        if (i2 > 0) {
            this.f4837throw = 2;
        }
        if (i2 < 0) {
            this.f4837throw = 1;
        }
        int i3 = this.f4835super + i2;
        this.f4835super = i3;
        Cdo cdo = this.f4833if;
        if (cdo != null) {
            h2 h2Var = (h2) cdo;
            if (!h2Var.f1679extends) {
                h2Var.f1702throws = i3;
            } else {
                h2Var.f1702throws = 0;
            }
            if (i == 0 && i2 == 0) {
                if (((h2) this.f4833if) == null) {
                    throw null;
                }
            } else if (i == 0) {
                if ((i2 > 0) != (this.f4825catch > 0)) {
                    this.f4823break = i;
                    this.f4825catch = i2;
                    if (((h2) this.f4833if) == null) {
                        throw null;
                    }
                }
            } else if (i2 == 0) {
                if ((i > 0) != (this.f4823break > 0)) {
                    this.f4823break = i;
                    this.f4825catch = i2;
                    if (((h2) this.f4833if) == null) {
                        throw null;
                    }
                }
            }
        }
        if (this.f4831for != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                linearLayoutManager.findLastVisibleItemPosition();
                if (this.f4836this != findFirstVisibleItemPosition) {
                    this.f4836this = findFirstVisibleItemPosition;
                    PageRecyclerView.Cdo cdo2 = ((PageRecyclerView) this.f4831for).f10219for;
                    if (cdo2 != null) {
                        cdo2.mo3318do(findFirstVisibleItemPosition);
                    }
                }
            }
        }
    }
}
