package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* loaded from: classes8.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    public static final int NO_POSITION = -1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    public static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    public static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    public static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    public int mAdapterState;
    public ViewPager2.OnPageChangeCallback mCallback;
    public boolean mDataSetChangeHappened;
    public boolean mDispatchSelected;
    public int mDragStartPosition;
    public boolean mFakeDragging;
    @NonNull
    public final LinearLayoutManager mLayoutManager;
    @NonNull
    public final RecyclerView mRecyclerView;
    public boolean mScrollHappened;
    public int mScrollState;
    public ScrollEventValues mScrollValues;
    public int mTarget;
    @NonNull
    public final ViewPager2 mViewPager;

    /* loaded from: classes8.dex */
    public static final class ScrollEventValues {
        public float mOffset;
        public int mOffsetPx;
        public int mPosition;

        public void reset() {
            this.mPosition = -1;
            this.mOffset = 0.0f;
            this.mOffsetPx = 0;
        }
    }

    public ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.mScrollValues = new ScrollEventValues();
        resetState();
    }

    private void dispatchScrolled(int i, float f, int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i, f, i2);
        }
    }

    private void dispatchSelected(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i);
        }
    }

    private void dispatchStateChanged(int i) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    private int getPosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    private boolean isInAnyDraggingState() {
        int i = this.mAdapterState;
        return i == 1 || i == 4;
    }

    private void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.reset();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    private void startDrag(boolean z) {
        this.mFakeDragging = z;
        this.mAdapterState = z ? 4 : 1;
        int i = this.mTarget;
        if (i != -1) {
            this.mDragStartPosition = i;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = getPosition();
        }
        dispatchStateChanged(1);
    }

    private void updateScrollEventValues() {
        int top2;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        int findFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        scrollEventValues.mPosition = findFirstVisibleItemPosition;
        if (findFirstVisibleItemPosition == -1) {
            scrollEventValues.reset();
            return;
        }
        View findViewByPosition = this.mLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
        if (findViewByPosition == null) {
            scrollEventValues.reset();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(findViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(findViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(findViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(findViewByPosition);
        ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = findViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = findViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.mLayoutManager.getOrientation() == 0) {
            top2 = (findViewByPosition.getLeft() - leftDecorationWidth) - this.mRecyclerView.getPaddingLeft();
            if (this.mViewPager.isRtl()) {
                top2 = -top2;
            }
            height = width;
        } else {
            top2 = (findViewByPosition.getTop() - topDecorationHeight) - this.mRecyclerView.getPaddingTop();
        }
        int i = -top2;
        scrollEventValues.mOffsetPx = i;
        if (i < 0) {
            if (new AnimateLayoutChangeDetector(this.mLayoutManager).mayHaveInterferingAnimations()) {
                throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
            }
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.mOffsetPx)));
        }
        scrollEventValues.mOffset = height == 0 ? 0.0f : i / height;
    }

    public double getRelativeScrollPosition() {
        updateScrollEventValues();
        ScrollEventValues scrollEventValues = this.mScrollValues;
        return scrollEventValues.mPosition + scrollEventValues.mOffset;
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean isDragging() {
        return this.mScrollState == 1;
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    public boolean isIdle() {
        return this.mScrollState == 0;
    }

    public void notifyBeginFakeDrag() {
        this.mAdapterState = 4;
        startDrag(true);
    }

    public void notifyDataSetChangeHappened() {
        this.mDataSetChangeHappened = true;
    }

    public void notifyEndFakeDrag() {
        if (!isDragging() || this.mFakeDragging) {
            this.mFakeDragging = false;
            updateScrollEventValues();
            ScrollEventValues scrollEventValues = this.mScrollValues;
            if (scrollEventValues.mOffsetPx == 0) {
                int i = scrollEventValues.mPosition;
                if (i != this.mDragStartPosition) {
                    dispatchSelected(i);
                }
                dispatchStateChanged(0);
                resetState();
                return;
            }
            dispatchStateChanged(2);
        }
    }

    public void notifyProgrammaticScroll(int i, boolean z) {
        this.mAdapterState = z ? 2 : 3;
        this.mFakeDragging = false;
        boolean z2 = this.mTarget != i;
        this.mTarget = i;
        dispatchStateChanged(2);
        if (z2) {
            dispatchSelected(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        boolean z = true;
        if ((this.mAdapterState != 1 || this.mScrollState != 1) && i == 1) {
            startDrag(false);
        } else if (isInAnyDraggingState() && i == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
            }
        } else {
            if (isInAnyDraggingState() && i == 0) {
                updateScrollEventValues();
                if (!this.mScrollHappened) {
                    int i2 = this.mScrollValues.mPosition;
                    if (i2 != -1) {
                        dispatchScrolled(i2, 0.0f, 0);
                    }
                } else {
                    ScrollEventValues scrollEventValues = this.mScrollValues;
                    if (scrollEventValues.mOffsetPx == 0) {
                        int i3 = this.mDragStartPosition;
                        int i4 = scrollEventValues.mPosition;
                        if (i3 != i4) {
                            dispatchSelected(i4);
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    dispatchStateChanged(0);
                    resetState();
                }
            }
            if (this.mAdapterState == 2 && i == 0 && this.mDataSetChangeHappened) {
                updateScrollEventValues();
                ScrollEventValues scrollEventValues2 = this.mScrollValues;
                if (scrollEventValues2.mOffsetPx == 0) {
                    int i5 = this.mTarget;
                    int i6 = scrollEventValues2.mPosition;
                    if (i5 != i6) {
                        if (i6 == -1) {
                            i6 = 0;
                        }
                        dispatchSelected(i6);
                    }
                    dispatchStateChanged(0);
                    resetState();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
        if ((r5 < 0) == r3.mViewPager.isRtl()) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
        /*
            r3 = this;
            r4 = 1
            r3.mScrollHappened = r4
            r3.updateScrollEventValues()
            boolean r0 = r3.mDispatchSelected
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L3d
            r3.mDispatchSelected = r2
            if (r6 > 0) goto L22
            if (r6 != 0) goto L20
            if (r5 >= 0) goto L16
            r5 = 1
            goto L17
        L16:
            r5 = 0
        L17:
            androidx.viewpager2.widget.ViewPager2 r6 = r3.mViewPager
            boolean r6 = r6.isRtl()
            if (r5 != r6) goto L20
            goto L22
        L20:
            r5 = 0
            goto L23
        L22:
            r5 = 1
        L23:
            if (r5 == 0) goto L2f
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r6 = r5.mOffsetPx
            if (r6 == 0) goto L2f
            int r5 = r5.mPosition
            int r5 = r5 + r4
            goto L33
        L2f:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
        L33:
            r3.mTarget = r5
            int r6 = r3.mDragStartPosition
            if (r6 == r5) goto L4b
            r3.dispatchSelected(r5)
            goto L4b
        L3d:
            int r5 = r3.mAdapterState
            if (r5 != 0) goto L4b
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            if (r5 != r1) goto L48
            r5 = 0
        L48:
            r3.dispatchSelected(r5)
        L4b:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            if (r5 != r1) goto L52
            r5 = 0
        L52:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r6 = r3.mScrollValues
            float r0 = r6.mOffset
            int r6 = r6.mOffsetPx
            r3.dispatchScrolled(r5, r0, r6)
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mPosition
            int r6 = r3.mTarget
            if (r5 == r6) goto L65
            if (r6 != r1) goto L75
        L65:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.mScrollValues
            int r5 = r5.mOffsetPx
            if (r5 != 0) goto L75
            int r5 = r3.mScrollState
            if (r5 == r4) goto L75
            r3.dispatchStateChanged(r2)
            r3.resetState()
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public void setOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallback = onPageChangeCallback;
    }
}
