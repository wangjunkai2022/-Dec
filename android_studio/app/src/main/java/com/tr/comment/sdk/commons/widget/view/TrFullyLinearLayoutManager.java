package com.tr.comment.sdk.commons.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes7.dex */
public class TrFullyLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: do  reason: not valid java name */
    public int[] f10403do;

    public TrFullyLinearLayoutManager(Context context) {
        super(context);
        this.f10403do = new int[2];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < getItemCount()) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, i3);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, i3);
            int[] iArr = this.f10403do;
            try {
                View viewForPosition = recycler.getViewForPosition(i3);
                if (viewForPosition != null) {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewForPosition.getLayoutParams();
                    viewForPosition.measure(ViewGroup.getChildMeasureSpec(makeMeasureSpec, getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(makeMeasureSpec2, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
                    iArr[0] = viewForPosition.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    iArr[1] = viewForPosition.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    recycler.recycleView(viewForPosition);
                }
            } catch (Exception unused) {
            }
            if (getOrientation() == 0) {
                int[] iArr2 = this.f10403do;
                i6 += iArr2[0];
                if (i4 == 0) {
                    i5 = iArr2[1];
                }
            } else {
                int[] iArr3 = this.f10403do;
                i5 += iArr3[1];
                if (i4 == 0) {
                    i6 = iArr3[0];
                }
            }
            i4++;
            i3 = 0;
        }
        if (mode != 1073741824) {
            size = i6;
        }
        if (mode2 != 1073741824) {
            size2 = i5;
        }
        setMeasuredDimension(size, size2);
    }

    public TrFullyLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f10403do = new int[2];
    }
}
