package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes8.dex */
public class FullyLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: do  reason: not valid java name */
    public int[] f8071do;

    public FullyLinearLayoutManager(Context context) {
        super(context);
        this.f8071do = new int[2];
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3476do(RecyclerView.Recycler recycler, int i, int i2, int[] iArr) {
        try {
            View viewForPosition = recycler.getViewForPosition(0);
            if (viewForPosition != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewForPosition.getLayoutParams();
                viewForPosition.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
                iArr[0] = viewForPosition.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                iArr[1] = viewForPosition.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                recycler.recycleView(viewForPosition);
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        getItemCount();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < getItemCount(); i5++) {
            m3476do(recycler, View.MeasureSpec.makeMeasureSpec(i5, 0), View.MeasureSpec.makeMeasureSpec(i5, 0), this.f8071do);
            if (getOrientation() == 0) {
                int[] iArr = this.f8071do;
                i4 += iArr[0];
                if (i5 == 0) {
                    i3 = iArr[1];
                }
            } else {
                int[] iArr2 = this.f8071do;
                i3 += iArr2[1];
                if (i5 == 0) {
                    i4 = iArr2[0];
                }
            }
        }
        if (mode != 1073741824) {
            size = i4;
        }
        if (mode2 != 1073741824) {
            size2 = i3;
        }
        setMeasuredDimension(size, size2);
    }

    public FullyLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f8071do = new int[2];
    }
}
