package com.google.android.flexbox;

import android.view.View;
import androidx.appcompat.widget.ActivityChooserView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class FlexLine {
    public boolean mAnyItemsHaveFlexGrow;
    public boolean mAnyItemsHaveFlexShrink;
    public int mCrossSize;
    public int mDividerLengthInMainSize;
    public int mFirstIndex;
    public int mGoneItemCount;
    public int mItemCount;
    public int mLastIndex;
    public int mMainSize;
    public int mMaxBaseline;
    public int mSumCrossSizeBefore;
    public float mTotalFlexGrow;
    public float mTotalFlexShrink;
    public int mLeft = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    public int mTop = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    public int mRight = Integer.MIN_VALUE;
    public int mBottom = Integer.MIN_VALUE;
    public List<Integer> mIndicesAlignSelfStretch = new ArrayList();

    public int getCrossSize() {
        return this.mCrossSize;
    }

    public int getFirstIndex() {
        return this.mFirstIndex;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    public int getItemCountNotGone() {
        return this.mItemCount - this.mGoneItemCount;
    }

    public int getMainSize() {
        return this.mMainSize;
    }

    public float getTotalFlexGrow() {
        return this.mTotalFlexGrow;
    }

    public float getTotalFlexShrink() {
        return this.mTotalFlexShrink;
    }

    public void updatePositionFromView(View view, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.mLeft = Math.min(this.mLeft, (view.getLeft() - flexItem.getMarginLeft()) - i);
        this.mTop = Math.min(this.mTop, (view.getTop() - flexItem.getMarginTop()) - i2);
        this.mRight = Math.max(this.mRight, flexItem.getMarginRight() + view.getRight() + i3);
        this.mBottom = Math.max(this.mBottom, flexItem.getMarginBottom() + view.getBottom() + i4);
    }
}
