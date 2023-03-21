package com.manhua.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.u20;
/* loaded from: classes8.dex */
public class PageRecyclerView extends RecyclerView implements u20.Cif {

    /* renamed from: case  reason: not valid java name */
    public boolean f10216case;

    /* renamed from: do  reason: not valid java name */
    public boolean f10217do;

    /* renamed from: else  reason: not valid java name */
    public int f10218else;

    /* renamed from: for  reason: not valid java name */
    public Cdo f10219for;

    /* renamed from: if  reason: not valid java name */
    public u20 f10220if;

    /* renamed from: new  reason: not valid java name */
    public boolean f10221new;

    /* renamed from: try  reason: not valid java name */
    public boolean f10222try;

    /* renamed from: com.manhua.ui.widget.PageRecyclerView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: case */
        void mo3317case();

        /* renamed from: do */
        void mo3318do(int i);

        /* renamed from: for */
        void mo3319for(int i);

        /* renamed from: if */
        void mo3320if();

        /* renamed from: new */
        void mo3321new();

        /* renamed from: try */
        void mo3322try();
    }

    public PageRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10217do = true;
        setNestedScrollingEnabled(false);
        u20 u20Var = new u20(this);
        this.f10220if = u20Var;
        u20Var.f4838try = true;
        u20Var.f4824case = true;
        u20Var.f4829else = 100;
        u20Var.f4832goto = 100;
        RecyclerView recyclerView = u20Var.f4828do;
        if (this != recyclerView) {
            if (recyclerView != null) {
                recyclerView.removeOnScrollListener(u20Var);
            }
            u20Var.f4823break = 0;
            u20Var.f4825catch = 0;
            u20Var.f4828do = this;
            addOnScrollListener(u20Var);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3663for(boolean z, boolean z2) {
        Cdo cdo = this.f10219for;
        if (cdo != null) {
            cdo.mo3317case();
        }
    }

    public synchronized int getCurrentPosition() {
        if (this.f10216case) {
            return this.f10218else;
        }
        return this.f10220if.f4836this;
    }

    public int getFirstItem() {
        return getChildLayoutPosition(getChildAt(0));
    }

    public int getLastItem() {
        return getChildLayoutPosition(getChildAt(getChildCount() - 1));
    }

    /* renamed from: if  reason: not valid java name */
    public void m3664if(int i) {
        u20 u20Var = this.f10220if;
        if (u20Var != null) {
            if (u20Var != null) {
                try {
                    int childLayoutPosition = getChildLayoutPosition(getChildAt(0));
                    int childLayoutPosition2 = getChildLayoutPosition(getChildAt(getChildCount() - 1));
                    if (i < childLayoutPosition) {
                        scrollToPosition(i);
                    } else if (i <= childLayoutPosition2) {
                        int i2 = i - childLayoutPosition;
                        if (i2 >= 0 && i2 < getChildCount()) {
                            scrollBy(0, getChildAt(i2).getTop());
                        }
                    } else {
                        scrollToPosition(i);
                        u20Var.f4827const = i;
                        u20Var.f4826class = true;
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f10217do) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i) {
        super.scrollToPosition(i);
        if (!this.f10216case || this.f10218else == i) {
            return;
        }
        this.f10218else = i;
        this.f10219for.mo3319for(i);
    }

    public void setLoadMore(boolean z) {
        this.f10222try = z;
    }

    public void setLoadUp(boolean z) {
        this.f10221new = z;
    }

    public void setOnScrollStateListener(u20.Cfor cfor) {
        u20 u20Var = this.f10220if;
        if (u20Var != null) {
            u20Var.f4834new = cfor;
        }
    }

    public void setScrollDirectionChangedListener(u20.Cdo cdo) {
        u20 u20Var;
        if (cdo == null || (u20Var = this.f10220if) == null) {
            return;
        }
        u20Var.f4833if = cdo;
    }

    public void setScrollEnabled(boolean z) {
        this.f10217do = z;
    }

    public void setTtsVoice(boolean z) {
        this.f10216case = z;
        if (z) {
            return;
        }
        this.f10218else = -1;
    }
}
