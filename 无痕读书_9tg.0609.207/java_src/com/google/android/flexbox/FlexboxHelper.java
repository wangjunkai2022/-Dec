package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public class FlexboxHelper {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int INITIAL_CAPACITY = 10;
    public static final long MEASURE_SPEC_WIDTH_MASK = 4294967295L;
    public boolean[] mChildrenFrozen;
    public final FlexContainer mFlexContainer;
    @Nullable
    public int[] mIndexToFlexLine;
    @Nullable
    public long[] mMeasureSpecCache;
    @Nullable
    public long[] mMeasuredSizeCache;

    /* loaded from: classes8.dex */
    public static class FlexLinesResult {
        public int mChildState;
        public List<FlexLine> mFlexLines;

        public void reset() {
            this.mFlexLines = null;
            this.mChildState = 0;
        }
    }

    /* loaded from: classes8.dex */
    public static class Order implements Comparable<Order> {
        public int index;
        public int order;

        public Order() {
        }

        @NonNull
        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("Order{order=");
            m1016super.append(this.order);
            m1016super.append(", index=");
            m1016super.append(this.index);
            m1016super.append('}');
            return m1016super.toString();
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Order order) {
            int i = this.order;
            int i2 = order.order;
            return i != i2 ? i - i2 : this.index - order.index;
        }
    }

    public FlexboxHelper(FlexContainer flexContainer) {
        this.mFlexContainer = flexContainer;
    }

    private void addFlexLine(List<FlexLine> list, FlexLine flexLine, int i, int i2) {
        flexLine.mSumCrossSizeBefore = i2;
        this.mFlexContainer.onNewFlexLineAdded(flexLine);
        flexLine.mLastIndex = i;
        list.add(flexLine);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSizeConstraints(android.view.View r7, int r8) {
        /*
            r6 = this;
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
            int r1 = r7.getMeasuredWidth()
            int r2 = r7.getMeasuredHeight()
            int r3 = r0.getMinWidth()
            r4 = 1
            if (r1 >= r3) goto L1b
            int r1 = r0.getMinWidth()
        L19:
            r3 = 1
            goto L27
        L1b:
            int r3 = r0.getMaxWidth()
            if (r1 <= r3) goto L26
            int r1 = r0.getMaxWidth()
            goto L19
        L26:
            r3 = 0
        L27:
            int r5 = r0.getMinHeight()
            if (r2 >= r5) goto L32
            int r2 = r0.getMinHeight()
            goto L3e
        L32:
            int r5 = r0.getMaxHeight()
            if (r2 <= r5) goto L3d
            int r2 = r0.getMaxHeight()
            goto L3e
        L3d:
            r4 = r3
        L3e:
            if (r4 == 0) goto L55
            r0 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r0)
            r7.measure(r1, r0)
            r6.updateMeasureCache(r8, r1, r0, r7)
            com.google.android.flexbox.FlexContainer r0 = r6.mFlexContainer
            r0.updateViewCache(r8, r7)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxHelper.checkSizeConstraints(android.view.View, int):void");
    }

    private List<FlexLine> constructFlexLinesForAlignContentCenter(List<FlexLine> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        FlexLine flexLine = new FlexLine();
        flexLine.mCrossSize = (i - i2) / 2;
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 == 0) {
                arrayList.add(flexLine);
            }
            arrayList.add(list.get(i3));
            if (i3 == list.size() - 1) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @NonNull
    private List<Order> createOrders(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            Order order = new Order();
            order.order = ((FlexItem) this.mFlexContainer.getFlexItemAt(i2).getLayoutParams()).getOrder();
            order.index = i2;
            arrayList.add(order);
        }
        return arrayList;
    }

    private void ensureChildrenFrozen(int i) {
        boolean[] zArr = this.mChildrenFrozen;
        if (zArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.mChildrenFrozen = new boolean[i];
        } else if (zArr.length < i) {
            int length = zArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.mChildrenFrozen = new boolean[i];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void evaluateMinimumSizeForCompoundButton(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable != null ? buttonDrawable.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    private void expandFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        double d;
        int i8;
        double d2;
        float f = flexLine.mTotalFlexGrow;
        float f2 = 0.0f;
        if (f <= 0.0f || i3 < (i5 = flexLine.mMainSize)) {
            return;
        }
        float f3 = (i3 - i5) / f;
        flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
        if (!z) {
            flexLine.mCrossSize = Integer.MIN_VALUE;
        }
        int i9 = 0;
        boolean z2 = false;
        int i10 = 0;
        float f4 = 0.0f;
        while (i9 < flexLine.mItemCount) {
            int i11 = flexLine.mFirstIndex + i9;
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i11);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i6 = i5;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.mFlexContainer.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr = this.mMeasuredSizeCache;
                    if (jArr != null) {
                        measuredHeight = extractHigherInt(jArr[i11]);
                    }
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr2 = this.mMeasuredSizeCache;
                    if (jArr2 != null) {
                        measuredWidth = extractLowerInt(jArr2[i11]);
                    }
                    if (this.mChildrenFrozen[i11] || flexItem.getFlexGrow() <= f2) {
                        i8 = i5;
                    } else {
                        float flexGrow = (flexItem.getFlexGrow() * f3) + measuredHeight;
                        if (i9 == flexLine.mItemCount - 1) {
                            flexGrow += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(flexGrow);
                        if (round > flexItem.getMaxHeight()) {
                            round = flexItem.getMaxHeight();
                            this.mChildrenFrozen[i11] = true;
                            flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                            i8 = i5;
                            z2 = true;
                        } else {
                            float f5 = (flexGrow - round) + f4;
                            i8 = i5;
                            double d3 = f5;
                            if (d3 > 1.0d) {
                                round++;
                                d2 = d3 - 1.0d;
                            } else if (d3 < -1.0d) {
                                round--;
                                d2 = d3 + 1.0d;
                            } else {
                                f4 = f5;
                            }
                            f4 = (float) d2;
                        }
                        int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec);
                        measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i11, childWidthMeasureSpecInternal, makeMeasureSpec, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                        measuredHeight = measuredHeight2;
                    }
                    i7 = Math.max(i10, this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth);
                    flexLine.mMainSize = flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight + flexLine.mMainSize;
                    i6 = i8;
                } else {
                    int i12 = i5;
                    int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr3 = this.mMeasuredSizeCache;
                    if (jArr3 != null) {
                        measuredWidth2 = extractLowerInt(jArr3[i11]);
                    }
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr4 = this.mMeasuredSizeCache;
                    i6 = i12;
                    if (jArr4 != null) {
                        measuredHeight3 = extractHigherInt(jArr4[i11]);
                    }
                    if (!this.mChildrenFrozen[i11] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow2 = (flexItem.getFlexGrow() * f3) + measuredWidth2;
                        if (i9 == flexLine.mItemCount - 1) {
                            flexGrow2 += f4;
                            f4 = 0.0f;
                        }
                        int round2 = Math.round(flexGrow2);
                        if (round2 > flexItem.getMaxWidth()) {
                            round2 = flexItem.getMaxWidth();
                            this.mChildrenFrozen[i11] = true;
                            flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                            z2 = true;
                        } else {
                            float f6 = (flexGrow2 - round2) + f4;
                            double d4 = f6;
                            if (d4 > 1.0d) {
                                round2++;
                                d = d4 - 1.0d;
                            } else {
                                if (d4 < -1.0d) {
                                    round2--;
                                    d = d4 + 1.0d;
                                }
                                f4 = f6;
                            }
                            f6 = (float) d;
                            f4 = f6;
                        }
                        int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec2, childHeightMeasureSpecInternal);
                        int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i11, makeMeasureSpec2, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i10, this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight3);
                    flexLine.mMainSize = flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth2 + flexLine.mMainSize;
                    i7 = max;
                }
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i7);
                i10 = i7;
            }
            i9++;
            i5 = i6;
            f2 = 0.0f;
        }
        int i13 = i5;
        if (!z2 || i13 == flexLine.mMainSize) {
            return;
        }
        expandFlexItems(i, i2, flexLine, i3, i4, true);
    }

    private int getChildHeightMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        FlexContainer flexContainer = this.mFlexContainer;
        int childHeightMeasureSpec = flexContainer.getChildHeightMeasureSpec(i, flexItem.getMarginBottom() + flexItem.getMarginTop() + this.mFlexContainer.getPaddingBottom() + flexContainer.getPaddingTop() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }

    private int getChildWidthMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        FlexContainer flexContainer = this.mFlexContainer;
        int childWidthMeasureSpec = flexContainer.getChildWidthMeasureSpec(i, flexItem.getMarginRight() + flexItem.getMarginLeft() + this.mFlexContainer.getPaddingRight() + flexContainer.getPaddingLeft() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    private int getFlexItemMarginEndCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginBottom();
        }
        return flexItem.getMarginRight();
    }

    private int getFlexItemMarginEndMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginRight();
        }
        return flexItem.getMarginBottom();
    }

    private int getFlexItemMarginStartCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginTop();
        }
        return flexItem.getMarginLeft();
    }

    private int getFlexItemMarginStartMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginLeft();
        }
        return flexItem.getMarginTop();
    }

    private int getFlexItemSizeCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getHeight();
        }
        return flexItem.getWidth();
    }

    private int getFlexItemSizeMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getWidth();
        }
        return flexItem.getHeight();
    }

    private int getPaddingEndCross(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingBottom();
        }
        return this.mFlexContainer.getPaddingEnd();
    }

    private int getPaddingEndMain(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingEnd();
        }
        return this.mFlexContainer.getPaddingBottom();
    }

    private int getPaddingStartCross(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingTop();
        }
        return this.mFlexContainer.getPaddingStart();
    }

    private int getPaddingStartMain(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingStart();
        }
        return this.mFlexContainer.getPaddingTop();
    }

    private int getViewMeasuredSizeCross(View view, boolean z) {
        if (z) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int getViewMeasuredSizeMain(View view, boolean z) {
        if (z) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private boolean isLastFlexItem(int i, int i2, FlexLine flexLine) {
        return i == i2 - 1 && flexLine.getItemCountNotGone() != 0;
    }

    private boolean isWrapRequired(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6, int i7) {
        if (this.mFlexContainer.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int maxLine = this.mFlexContainer.getMaxLine();
        if (maxLine == -1 || maxLine > i7 + 1) {
            int decorationLengthMainAxis = this.mFlexContainer.getDecorationLengthMainAxis(view, i5, i6);
            if (decorationLengthMainAxis > 0) {
                i4 += decorationLengthMainAxis;
            }
            return i2 < i3 + i4;
        }
        return false;
    }

    private void shrinkFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8 = flexLine.mMainSize;
        float f = flexLine.mTotalFlexShrink;
        float f2 = 0.0f;
        if (f <= 0.0f || i3 > i8) {
            return;
        }
        float f3 = (i8 - i3) / f;
        flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
        if (!z) {
            flexLine.mCrossSize = Integer.MIN_VALUE;
        }
        int i9 = 0;
        boolean z2 = false;
        int i10 = 0;
        float f4 = 0.0f;
        while (i9 < flexLine.mItemCount) {
            int i11 = flexLine.mFirstIndex + i9;
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i11);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i5 = i8;
                i6 = i9;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.mFlexContainer.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr = this.mMeasuredSizeCache;
                    if (jArr != null) {
                        measuredHeight = extractHigherInt(jArr[i11]);
                    }
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr2 = this.mMeasuredSizeCache;
                    if (jArr2 != null) {
                        measuredWidth = extractLowerInt(jArr2[i11]);
                    }
                    if (this.mChildrenFrozen[i11] || flexItem.getFlexShrink() <= f2) {
                        i5 = i8;
                        i6 = i9;
                    } else {
                        float flexShrink = measuredHeight - (flexItem.getFlexShrink() * f3);
                        if (i9 == flexLine.mItemCount - 1) {
                            flexShrink += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(flexShrink);
                        if (round < flexItem.getMinHeight()) {
                            round = flexItem.getMinHeight();
                            this.mChildrenFrozen[i11] = true;
                            flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            i5 = i8;
                            i6 = i9;
                            z2 = true;
                        } else {
                            float f5 = (flexShrink - round) + f4;
                            i5 = i8;
                            i6 = i9;
                            double d = f5;
                            if (d > 1.0d) {
                                round++;
                                f5 -= 1.0f;
                            } else if (d < -1.0d) {
                                round--;
                                f5 += 1.0f;
                            }
                            f4 = f5;
                        }
                        int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec);
                        measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i11, childWidthMeasureSpecInternal, makeMeasureSpec, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                        measuredHeight = measuredHeight2;
                    }
                    i7 = Math.max(i10, this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth);
                    flexLine.mMainSize = flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight + flexLine.mMainSize;
                } else {
                    i5 = i8;
                    int i12 = i9;
                    int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr3 = this.mMeasuredSizeCache;
                    if (jArr3 != null) {
                        measuredWidth2 = extractLowerInt(jArr3[i11]);
                    }
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr4 = this.mMeasuredSizeCache;
                    if (jArr4 != null) {
                        measuredHeight3 = extractHigherInt(jArr4[i11]);
                    }
                    if (this.mChildrenFrozen[i11] || flexItem.getFlexShrink() <= 0.0f) {
                        i6 = i12;
                    } else {
                        float flexShrink2 = measuredWidth2 - (flexItem.getFlexShrink() * f3);
                        i6 = i12;
                        if (i6 == flexLine.mItemCount - 1) {
                            flexShrink2 += f4;
                            f4 = 0.0f;
                        }
                        int round2 = Math.round(flexShrink2);
                        if (round2 < flexItem.getMinWidth()) {
                            round2 = flexItem.getMinWidth();
                            this.mChildrenFrozen[i11] = true;
                            flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            z2 = true;
                        } else {
                            float f6 = (flexShrink2 - round2) + f4;
                            double d2 = f6;
                            if (d2 > 1.0d) {
                                round2++;
                                f6 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                round2--;
                                f6 += 1.0f;
                            }
                            f4 = f6;
                        }
                        int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec2, childHeightMeasureSpecInternal);
                        int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i11, makeMeasureSpec2, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i10, this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + flexItem.getMarginBottom() + flexItem.getMarginTop() + measuredHeight3);
                    flexLine.mMainSize = flexItem.getMarginRight() + flexItem.getMarginLeft() + measuredWidth2 + flexLine.mMainSize;
                    i7 = max;
                }
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i7);
                i10 = i7;
            }
            i9 = i6 + 1;
            i8 = i5;
            f2 = 0.0f;
        }
        int i13 = i8;
        if (!z2 || i13 == flexLine.mMainSize) {
            return;
        }
        shrinkFlexItems(i, i2, flexLine, i3, i4, true);
    }

    private int[] sortOrdersIntoReorderedIndices(int i, List<Order> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (Order order : list) {
            int i3 = order.index;
            iArr[i2] = i3;
            sparseIntArray.append(i3, order.order);
            i2++;
        }
        return iArr;
    }

    private void stretchViewHorizontally(View view, int i, int i2) {
        int measuredHeight;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr != null) {
            measuredHeight = extractHigherInt(jArr[i2]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        updateMeasureCache(i2, makeMeasureSpec2, makeMeasureSpec, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void stretchViewVertically(View view, int i, int i2) {
        int measuredWidth;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr != null) {
            measuredWidth = extractLowerInt(jArr[i2]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        updateMeasureCache(i2, makeMeasureSpec, makeMeasureSpec2, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void updateMeasureCache(int i, int i2, int i3, View view) {
        long[] jArr = this.mMeasureSpecCache;
        if (jArr != null) {
            jArr[i] = makeCombinedLong(i2, i3);
        }
        long[] jArr2 = this.mMeasuredSizeCache;
        if (jArr2 != null) {
            jArr2[i] = makeCombinedLong(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public void calculateFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, int i5, @Nullable List<FlexLine> list) {
        FlexLinesResult flexLinesResult2;
        int i6;
        int i7;
        int i8;
        int childHeightMeasureSpec;
        int combineMeasuredStates;
        List<FlexLine> list2;
        int i9;
        View view;
        int i10;
        FlexLine flexLine;
        int i11;
        int i12;
        int i13;
        FlexLine flexLine2;
        int i14 = i;
        boolean isMainAxisDirectionHorizontal = this.mFlexContainer.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        ArrayList arrayList = list == null ? new ArrayList() : list;
        flexLinesResult.mFlexLines = arrayList;
        boolean z = i5 == -1;
        int paddingStartMain = getPaddingStartMain(isMainAxisDirectionHorizontal);
        int paddingEndMain = getPaddingEndMain(isMainAxisDirectionHorizontal);
        int paddingStartCross = getPaddingStartCross(isMainAxisDirectionHorizontal);
        int paddingEndCross = getPaddingEndCross(isMainAxisDirectionHorizontal);
        FlexLine flexLine3 = new FlexLine();
        int i15 = i4;
        flexLine3.mFirstIndex = i15;
        int i16 = paddingEndMain + paddingStartMain;
        flexLine3.mMainSize = i16;
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        int i17 = 0;
        boolean z2 = z;
        FlexLine flexLine4 = flexLine3;
        int i18 = i2;
        int i19 = 0;
        int i20 = 0;
        int i21 = Integer.MIN_VALUE;
        while (true) {
            if (i15 >= flexItemCount) {
                flexLinesResult2 = flexLinesResult;
                break;
            }
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i15);
            if (reorderedFlexItemAt == null) {
                if (isLastFlexItem(i15, flexItemCount, flexLine4)) {
                    addFlexLine(arrayList, flexLine4, i15, i19);
                }
            } else if (reorderedFlexItemAt.getVisibility() == 8) {
                flexLine4.mGoneItemCount++;
                flexLine4.mItemCount++;
                if (isLastFlexItem(i15, flexItemCount, flexLine4)) {
                    addFlexLine(arrayList, flexLine4, i15, i19);
                }
            } else {
                if (reorderedFlexItemAt instanceof CompoundButton) {
                    evaluateMinimumSizeForCompoundButton((CompoundButton) reorderedFlexItemAt);
                }
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int i22 = flexItemCount;
                if (flexItem.getAlignSelf() == 4) {
                    flexLine4.mIndicesAlignSelfStretch.add(Integer.valueOf(i15));
                }
                int flexItemSizeMain = getFlexItemSizeMain(flexItem, isMainAxisDirectionHorizontal);
                if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                    flexItemSizeMain = Math.round(flexItem.getFlexBasisPercent() * size);
                }
                if (isMainAxisDirectionHorizontal) {
                    i6 = size;
                    childHeightMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(i14, i16 + getFlexItemMarginStartMain(flexItem, true) + getFlexItemMarginEndMain(flexItem, true), flexItemSizeMain);
                    i7 = mode;
                    int childHeightMeasureSpec2 = this.mFlexContainer.getChildHeightMeasureSpec(i18, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, true) + getFlexItemMarginEndCross(flexItem, true) + i19, getFlexItemSizeCross(flexItem, true));
                    reorderedFlexItemAt.measure(childHeightMeasureSpec, childHeightMeasureSpec2);
                    updateMeasureCache(i15, childHeightMeasureSpec, childHeightMeasureSpec2, reorderedFlexItemAt);
                    i8 = i19;
                } else {
                    i6 = size;
                    i7 = mode;
                    i8 = i19;
                    int childWidthMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(i18, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, false) + getFlexItemMarginEndCross(flexItem, false) + i19, getFlexItemSizeCross(flexItem, false));
                    childHeightMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(i14, getFlexItemMarginStartMain(flexItem, false) + i16 + getFlexItemMarginEndMain(flexItem, false), flexItemSizeMain);
                    reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                    updateMeasureCache(i15, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                }
                int i23 = childHeightMeasureSpec;
                this.mFlexContainer.updateViewCache(i15, reorderedFlexItemAt);
                checkSizeConstraints(reorderedFlexItemAt, i15);
                combineMeasuredStates = View.combineMeasuredStates(i17, reorderedFlexItemAt.getMeasuredState());
                int i24 = flexLine4.mMainSize;
                int viewMeasuredSizeMain = getViewMeasuredSizeMain(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal);
                FlexLine flexLine5 = flexLine4;
                int i25 = i8;
                int i26 = i15;
                int i27 = i16;
                list2 = arrayList;
                if (isWrapRequired(reorderedFlexItemAt, i7, i6, i24, getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal) + viewMeasuredSizeMain, flexItem, i26, i20, arrayList.size())) {
                    if (flexLine5.getItemCountNotGone() > 0) {
                        i15 = i26;
                        addFlexLine(list2, flexLine5, i15 > 0 ? i15 - 1 : 0, i25);
                        i19 = flexLine5.mCrossSize + i25;
                    } else {
                        i15 = i26;
                        i19 = i25;
                    }
                    if (isMainAxisDirectionHorizontal) {
                        if (flexItem.getHeight() == -1) {
                            FlexContainer flexContainer = this.mFlexContainer;
                            i9 = i2;
                            view = reorderedFlexItemAt;
                            view.measure(i23, flexContainer.getChildHeightMeasureSpec(i9, flexItem.getMarginBottom() + flexItem.getMarginTop() + this.mFlexContainer.getPaddingBottom() + flexContainer.getPaddingTop() + i19, flexItem.getHeight()));
                            checkSizeConstraints(view, i15);
                        } else {
                            i9 = i2;
                            view = reorderedFlexItemAt;
                        }
                    } else {
                        i9 = i2;
                        view = reorderedFlexItemAt;
                        if (flexItem.getWidth() == -1) {
                            FlexContainer flexContainer2 = this.mFlexContainer;
                            view.measure(flexContainer2.getChildWidthMeasureSpec(i9, flexItem.getMarginRight() + flexItem.getMarginLeft() + this.mFlexContainer.getPaddingRight() + flexContainer2.getPaddingLeft() + i19, flexItem.getWidth()), i23);
                            checkSizeConstraints(view, i15);
                        }
                    }
                    flexLine = new FlexLine();
                    flexLine.mItemCount = 1;
                    i16 = i27;
                    flexLine.mMainSize = i16;
                    flexLine.mFirstIndex = i15;
                    i10 = 0;
                    i11 = Integer.MIN_VALUE;
                } else {
                    i9 = i2;
                    view = reorderedFlexItemAt;
                    i15 = i26;
                    i16 = i27;
                    flexLine5.mItemCount++;
                    i10 = i20 + 1;
                    flexLine = flexLine5;
                    i19 = i25;
                    i11 = i21;
                }
                flexLine.mAnyItemsHaveFlexGrow |= flexItem.getFlexGrow() != 0.0f;
                flexLine.mAnyItemsHaveFlexShrink |= flexItem.getFlexShrink() != 0.0f;
                int[] iArr = this.mIndexToFlexLine;
                if (iArr != null) {
                    iArr[i15] = list2.size();
                }
                flexLine.mMainSize = getViewMeasuredSizeMain(view, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal) + flexLine.mMainSize;
                flexLine.mTotalFlexGrow = flexItem.getFlexGrow() + flexLine.mTotalFlexGrow;
                flexLine.mTotalFlexShrink = flexItem.getFlexShrink() + flexLine.mTotalFlexShrink;
                this.mFlexContainer.onNewFlexItemAdded(view, i15, i10, flexLine);
                int max = Math.max(i11, this.mFlexContainer.getDecorationLengthCrossAxis(view) + getViewMeasuredSizeCross(view, isMainAxisDirectionHorizontal) + getFlexItemMarginStartCross(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndCross(flexItem, isMainAxisDirectionHorizontal));
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, max);
                if (isMainAxisDirectionHorizontal) {
                    if (this.mFlexContainer.getFlexWrap() != 2) {
                        flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, flexItem.getMarginTop() + view.getBaseline());
                    } else {
                        flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, flexItem.getMarginBottom() + (view.getMeasuredHeight() - view.getBaseline()));
                    }
                }
                i12 = i22;
                if (isLastFlexItem(i15, i12, flexLine)) {
                    addFlexLine(list2, flexLine, i15, i19);
                    i19 += flexLine.mCrossSize;
                }
                i13 = i5;
                if (i13 != -1 && list2.size() > 0 && list2.get(list2.size() - 1).mLastIndex >= i13 && i15 >= i13 && !z2) {
                    i19 = -flexLine.getCrossSize();
                    z2 = true;
                }
                if (i19 > i3 && z2) {
                    flexLinesResult2 = flexLinesResult;
                    i17 = combineMeasuredStates;
                    break;
                }
                i20 = i10;
                i21 = max;
                flexLine2 = flexLine;
                i18 = i9;
                i15++;
                i14 = i;
                arrayList = list2;
                size = i6;
                mode = i7;
                flexItemCount = i12;
                flexLine4 = flexLine2;
                i17 = combineMeasuredStates;
            }
            combineMeasuredStates = i17;
            list2 = arrayList;
            i6 = size;
            i7 = mode;
            i13 = i5;
            flexLine2 = flexLine4;
            i12 = flexItemCount;
            i9 = i2;
            i15++;
            i14 = i;
            arrayList = list2;
            size = i6;
            mode = i7;
            flexItemCount = i12;
            flexLine4 = flexLine2;
            i17 = combineMeasuredStates;
        }
        flexLinesResult2.mChildState = i17;
    }

    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i, i2, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0, -1, null);
    }

    public void calculateHorizontalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, 0, i4, list);
    }

    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i2, i, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0, -1, null);
    }

    public void calculateVerticalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, 0, i4, list);
    }

    public void clearFlexLines(List<FlexLine> list, int i) {
        int i2 = this.mIndexToFlexLine[i];
        if (i2 == -1) {
            i2 = 0;
        }
        for (int size = list.size() - 1; size >= i2; size--) {
            list.remove(size);
        }
        int[] iArr = this.mIndexToFlexLine;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.mMeasureSpecCache;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    public int[] createReorderedIndices(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        List<Order> createOrders = createOrders(flexItemCount);
        Order order = new Order();
        if (view != null && (layoutParams instanceof FlexItem)) {
            order.order = ((FlexItem) layoutParams).getOrder();
        } else {
            order.order = 1;
        }
        if (i != -1 && i != flexItemCount) {
            if (i < this.mFlexContainer.getFlexItemCount()) {
                order.index = i;
                while (i < flexItemCount) {
                    createOrders.get(i).index++;
                    i++;
                }
            } else {
                order.index = flexItemCount;
            }
        } else {
            order.index = flexItemCount;
        }
        createOrders.add(order);
        return sortOrdersIntoReorderedIndices(flexItemCount + 1, createOrders, sparseIntArray);
    }

    public void determineCrossSize(int i, int i2, int i3) {
        int i4;
        int i5;
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            i4 = mode;
            i5 = size;
        } else if (flexDirection != 2 && flexDirection != 3) {
            throw new IllegalArgumentException(Cgoto.m1003implements("Invalid flex direction: ", flexDirection));
        } else {
            i4 = View.MeasureSpec.getMode(i);
            i5 = View.MeasureSpec.getSize(i);
        }
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        if (i4 == 1073741824) {
            int sumOfCrossSize = this.mFlexContainer.getSumOfCrossSize() + i3;
            int i6 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).mCrossSize = i5 - i3;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.mFlexContainer.getAlignContent();
                if (alignContent == 1) {
                    int i7 = i5 - sumOfCrossSize;
                    FlexLine flexLine = new FlexLine();
                    flexLine.mCrossSize = i7;
                    flexLinesInternal.add(0, flexLine);
                } else if (alignContent == 2) {
                    this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, i5, sumOfCrossSize));
                } else if (alignContent == 3) {
                    if (sumOfCrossSize >= i5) {
                        return;
                    }
                    float size2 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size3 = flexLinesInternal.size();
                    float f = 0.0f;
                    while (i6 < size3) {
                        arrayList.add(flexLinesInternal.get(i6));
                        if (i6 != flexLinesInternal.size() - 1) {
                            FlexLine flexLine2 = new FlexLine();
                            if (i6 == flexLinesInternal.size() - 2) {
                                flexLine2.mCrossSize = Math.round(f + size2);
                                f = 0.0f;
                            } else {
                                flexLine2.mCrossSize = Math.round(size2);
                            }
                            int i8 = flexLine2.mCrossSize;
                            float f2 = (size2 - i8) + f;
                            if (f2 > 1.0f) {
                                flexLine2.mCrossSize = i8 + 1;
                                f2 -= 1.0f;
                            } else if (f2 < -1.0f) {
                                flexLine2.mCrossSize = i8 - 1;
                                f2 += 1.0f;
                            }
                            arrayList.add(flexLine2);
                            f = f2;
                        }
                        i6++;
                    }
                    this.mFlexContainer.setFlexLines(arrayList);
                } else if (alignContent == 4) {
                    if (sumOfCrossSize >= i5) {
                        this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, i5, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    FlexLine flexLine3 = new FlexLine();
                    flexLine3.mCrossSize = size4;
                    for (FlexLine flexLine4 : flexLinesInternal) {
                        arrayList2.add(flexLine3);
                        arrayList2.add(flexLine4);
                        arrayList2.add(flexLine3);
                    }
                    this.mFlexContainer.setFlexLines(arrayList2);
                } else if (alignContent == 5 && sumOfCrossSize < i5) {
                    float size5 = (i5 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f3 = 0.0f;
                    while (i6 < size6) {
                        FlexLine flexLine5 = flexLinesInternal.get(i6);
                        float f4 = flexLine5.mCrossSize + size5;
                        if (i6 == flexLinesInternal.size() - 1) {
                            f4 += f3;
                            f3 = 0.0f;
                        }
                        int round = Math.round(f4);
                        float f5 = (f4 - round) + f3;
                        if (f5 > 1.0f) {
                            round++;
                            f5 -= 1.0f;
                        } else if (f5 < -1.0f) {
                            round--;
                            f5 += 1.0f;
                        }
                        f3 = f5;
                        flexLine5.mCrossSize = round;
                        i6++;
                    }
                }
            }
        }
    }

    public void determineMainSize(int i, int i2) {
        determineMainSize(i, i2, 0);
    }

    public void ensureIndexToFlexLine(int i) {
        int[] iArr = this.mIndexToFlexLine;
        if (iArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.mIndexToFlexLine = new int[i];
        } else if (iArr.length < i) {
            int length = iArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.mIndexToFlexLine = Arrays.copyOf(this.mIndexToFlexLine, i);
        }
    }

    public void ensureMeasureSpecCache(int i) {
        long[] jArr = this.mMeasureSpecCache;
        if (jArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.mMeasureSpecCache = new long[i];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.mMeasureSpecCache = Arrays.copyOf(this.mMeasureSpecCache, i);
        }
    }

    public void ensureMeasuredSizeCache(int i) {
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.mMeasuredSizeCache = new long[i];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.mMeasuredSizeCache = Arrays.copyOf(this.mMeasuredSizeCache, i);
        }
    }

    public int extractHigherInt(long j) {
        return (int) (j >> 32);
    }

    public int extractLowerInt(long j) {
        return (int) j;
    }

    public boolean isOrderChangedFromLastMeasurement(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.mFlexContainer.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    public void layoutSingleChildHorizontal(View view, FlexLine flexLine, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i6 - flexItem.getMarginBottom());
                    return;
                }
                view.layout(i, flexItem.getMarginTop() + view.getMeasuredHeight() + (i2 - i5), i3, flexItem.getMarginTop() + view.getMeasuredHeight() + (i4 - i5));
                return;
            } else if (alignItems == 2) {
                int marginTop = ((flexItem.getMarginTop() + (i5 - view.getMeasuredHeight())) - flexItem.getMarginBottom()) / 2;
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int i7 = i2 + marginTop;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                }
                int i8 = i2 - marginTop;
                view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                return;
            } else if (alignItems == 3) {
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int max = Math.max(flexLine.mMaxBaseline - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                }
                int max2 = Math.max(view.getBaseline() + (flexLine.mMaxBaseline - view.getMeasuredHeight()), flexItem.getMarginBottom());
                view.layout(i, i2 - max2, i3, i4 - max2);
                return;
            } else if (alignItems != 4) {
                return;
            }
        }
        if (this.mFlexContainer.getFlexWrap() != 2) {
            view.layout(i, flexItem.getMarginTop() + i2, i3, flexItem.getMarginTop() + i4);
        } else {
            view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
        }
    }

    public void layoutSingleChildVertical(View view, FlexLine flexLine, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                    return;
                }
                int marginLeft = flexItem.getMarginLeft();
                view.layout(flexItem.getMarginLeft() + view.getMeasuredWidth() + (i - i5), i2, marginLeft + view.getMeasuredWidth() + (i3 - i5), i4);
                return;
            } else if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int marginStart = ((MarginLayoutParamsCompat.getMarginStart(marginLayoutParams) + (i5 - view.getMeasuredWidth())) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (!z) {
                    view.layout(i + marginStart, i2, i3 + marginStart, i4);
                    return;
                } else {
                    view.layout(i - marginStart, i2, i3 - marginStart, i4);
                    return;
                }
            } else if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z) {
            view.layout(flexItem.getMarginLeft() + i, i2, flexItem.getMarginLeft() + i3, i4);
        } else {
            view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
        }
    }

    @VisibleForTesting
    public long makeCombinedLong(int i, int i2) {
        return (i & MEASURE_SPEC_WIDTH_MASK) | (i2 << 32);
    }

    public void stretchViews() {
        stretchViews(0);
    }

    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, @Nullable List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, i4, -1, list);
    }

    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, @Nullable List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, i4, -1, list);
    }

    public void determineMainSize(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        ensureChildrenFrozen(this.mFlexContainer.getFlexItemCount());
        if (i3 >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        int flexDirection2 = this.mFlexContainer.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = this.mFlexContainer.getLargestMainSize();
            if (mode != 1073741824 && largestMainSize <= size) {
                size = largestMainSize;
            }
            paddingLeft = this.mFlexContainer.getPaddingLeft();
            paddingRight = this.mFlexContainer.getPaddingRight();
        } else if (flexDirection2 != 2 && flexDirection2 != 3) {
            throw new IllegalArgumentException(Cgoto.m1003implements("Invalid flex direction: ", flexDirection));
        } else {
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = this.mFlexContainer.getLargestMainSize();
            }
            paddingLeft = this.mFlexContainer.getPaddingTop();
            paddingRight = this.mFlexContainer.getPaddingBottom();
        }
        int i4 = size;
        int i5 = paddingLeft + paddingRight;
        int[] iArr = this.mIndexToFlexLine;
        int i6 = iArr != null ? iArr[i3] : 0;
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i7 = i6; i7 < size2; i7++) {
            FlexLine flexLine = flexLinesInternal.get(i7);
            if (flexLine.mMainSize < i4 && flexLine.mAnyItemsHaveFlexGrow) {
                expandFlexItems(i, i2, flexLine, i4, i5, false);
            } else if (flexLine.mMainSize > i4 && flexLine.mAnyItemsHaveFlexShrink) {
                shrinkFlexItems(i, i2, flexLine, i4, i5, false);
            }
        }
    }

    public void stretchViews(int i) {
        View reorderedFlexItemAt;
        if (i >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (this.mFlexContainer.getAlignItems() == 4) {
            int[] iArr = this.mIndexToFlexLine;
            List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
                FlexLine flexLine = flexLinesInternal.get(i2);
                int i3 = flexLine.mItemCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = flexLine.mFirstIndex + i4;
                    if (i4 < this.mFlexContainer.getFlexItemCount() && (reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                        FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                        if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                            if (flexDirection == 0 || flexDirection == 1) {
                                stretchViewVertically(reorderedFlexItemAt, flexLine.mCrossSize, i5);
                            } else if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException(Cgoto.m1003implements("Invalid flex direction: ", flexDirection));
                            } else {
                                stretchViewHorizontally(reorderedFlexItemAt, flexLine.mCrossSize, i5);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (FlexLine flexLine2 : this.mFlexContainer.getFlexLinesInternal()) {
            for (Integer num : flexLine2.mIndicesAlignSelfStretch) {
                View reorderedFlexItemAt2 = this.mFlexContainer.getReorderedFlexItemAt(num.intValue());
                if (flexDirection == 0 || flexDirection == 1) {
                    stretchViewVertically(reorderedFlexItemAt2, flexLine2.mCrossSize, num.intValue());
                } else if (flexDirection != 2 && flexDirection != 3) {
                    throw new IllegalArgumentException(Cgoto.m1003implements("Invalid flex direction: ", flexDirection));
                } else {
                    stretchViewHorizontally(reorderedFlexItemAt2, flexLine2.mCrossSize, num.intValue());
                }
            }
        }
    }

    public int[] createReorderedIndices(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        return sortOrdersIntoReorderedIndices(flexItemCount, createOrders(flexItemCount), sparseIntArray);
    }
}
