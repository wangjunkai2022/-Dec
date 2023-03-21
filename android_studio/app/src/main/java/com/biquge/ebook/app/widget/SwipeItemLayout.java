package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.ps0;

/* loaded from: classes8.dex */
public class SwipeItemLayout extends ps0 {

    /* renamed from: break  reason: not valid java name */
    public static final Interpolator f8179break = new Cdo();

    /* renamed from: case  reason: not valid java name */
    public int f8180case;

    /* renamed from: else  reason: not valid java name */
    public int f8181else;

    /* renamed from: for  reason: not valid java name */
    public ViewGroup f8182for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f8183goto;

    /* renamed from: if  reason: not valid java name */
    public Cif f8184if;

    /* renamed from: new  reason: not valid java name */
    public ViewGroup f8185new;

    /* renamed from: this  reason: not valid java name */
    public boolean f8186this;

    /* renamed from: try  reason: not valid java name */
    public Cnew f8187try;

    /* renamed from: com.biquge.ebook.app.widget.SwipeItemLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.SwipeItemLayout$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor implements RecyclerView.OnItemTouchListener {

        /* renamed from: case  reason: not valid java name */
        public int f8188case;

        /* renamed from: do  reason: not valid java name */
        public SwipeItemLayout f8189do;

        /* renamed from: else  reason: not valid java name */
        public int f8190else;

        /* renamed from: for  reason: not valid java name */
        public float f8191for;

        /* renamed from: goto  reason: not valid java name */
        public boolean f8192goto;

        /* renamed from: if  reason: not valid java name */
        public float f8193if;

        /* renamed from: new  reason: not valid java name */
        public VelocityTracker f8194new;

        /* renamed from: this  reason: not valid java name */
        public boolean f8195this;

        /* renamed from: try  reason: not valid java name */
        public int f8196try;

        public Cfor(Context context) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f8188case = viewConfiguration.getScaledTouchSlop();
            this.f8190else = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f8196try = -1;
            this.f8192goto = false;
            this.f8195this = false;
        }

        /* renamed from: do  reason: not valid java name */
        public void m3504do() {
            this.f8192goto = false;
            this.f8196try = -1;
            VelocityTracker velocityTracker = this.f8194new;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f8194new = null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            SwipeItemLayout swipeItemLayout;
            boolean z;
            boolean z2;
            boolean m3497case;
            ViewParent parent;
            SwipeItemLayout swipeItemLayout2;
            Cif cif = Cif.TAP;
            Cif cif2 = Cif.DRAG;
            boolean z3 = false;
            if (this.f8195this) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (this.f8194new == null) {
                this.f8194new = VelocityTracker.obtain();
            }
            this.f8194new.addMovement(motionEvent);
            if (actionMasked == 0) {
                this.f8196try = motionEvent.getPointerId(0);
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.f8193if = x;
                this.f8191for = y;
                View m3496new = SwipeItemLayout.m3496new(recyclerView, (int) x, (int) y);
                if (m3496new == null || !(m3496new instanceof SwipeItemLayout)) {
                    swipeItemLayout = null;
                    z = true;
                } else {
                    swipeItemLayout = (SwipeItemLayout) m3496new;
                    z = false;
                }
                if (!z && ((swipeItemLayout2 = this.f8189do) == null || swipeItemLayout2 != swipeItemLayout)) {
                    z = true;
                }
                if (!z) {
                    if (this.f8189do.getTouchMode() == Cif.FLING) {
                        this.f8189do.setTouchMode(cif2);
                        m3497case = true;
                        z2 = true;
                    } else {
                        this.f8189do.setTouchMode(cif);
                        m3497case = this.f8189do.m3497case();
                        z2 = false;
                    }
                    if (m3497case && (parent = recyclerView.getParent()) != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                } else {
                    SwipeItemLayout swipeItemLayout3 = this.f8189do;
                    if (swipeItemLayout3 == null || !swipeItemLayout3.m3497case()) {
                        z2 = false;
                    } else {
                        this.f8189do.m3501if();
                        this.f8189do = null;
                        z2 = true;
                    }
                    if (swipeItemLayout != null) {
                        this.f8189do = swipeItemLayout;
                        swipeItemLayout.setTouchMode(cif);
                    } else {
                        this.f8189do = null;
                    }
                }
                this.f8195this = true;
                boolean onInterceptTouchEvent = recyclerView.onInterceptTouchEvent(motionEvent);
                this.f8192goto = onInterceptTouchEvent;
                this.f8195this = false;
                if (onInterceptTouchEvent) {
                    return false;
                }
                return z2;
            } else if (actionMasked == 1) {
                SwipeItemLayout swipeItemLayout4 = this.f8189do;
                if (swipeItemLayout4 != null && swipeItemLayout4.getTouchMode() == cif2) {
                    VelocityTracker velocityTracker = this.f8194new;
                    velocityTracker.computeCurrentVelocity(1000, this.f8190else);
                    this.f8189do.m3503try((int) velocityTracker.getXVelocity(this.f8196try));
                    z3 = true;
                }
                m3504do();
                return z3;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    SwipeItemLayout swipeItemLayout5 = this.f8189do;
                    if (swipeItemLayout5 != null) {
                        swipeItemLayout5.m3500goto();
                    }
                    m3504do();
                    return false;
                } else if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f8196try = motionEvent.getPointerId(actionIndex);
                    this.f8193if = motionEvent.getX(actionIndex);
                    this.f8191for = motionEvent.getY(actionIndex);
                    return false;
                } else if (actionMasked != 6) {
                    return false;
                } else {
                    int actionIndex2 = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex2) == this.f8196try) {
                        int i = actionIndex2 != 0 ? 0 : 1;
                        this.f8196try = motionEvent.getPointerId(i);
                        this.f8193if = motionEvent.getX(i);
                        this.f8191for = motionEvent.getY(i);
                        return false;
                    }
                    return false;
                }
            } else {
                int findPointerIndex = motionEvent.findPointerIndex(this.f8196try);
                if (findPointerIndex == -1) {
                    return false;
                }
                if (this.f8192goto) {
                    SwipeItemLayout swipeItemLayout6 = this.f8189do;
                    if (swipeItemLayout6 != null && swipeItemLayout6.m3497case()) {
                        this.f8189do.m3501if();
                    }
                    return false;
                }
                float x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int i2 = (int) (x2 - this.f8193if);
                float y2 = (int) (((int) motionEvent.getY(findPointerIndex)) + 0.5f);
                int abs = Math.abs(i2);
                int abs2 = Math.abs((int) (y2 - this.f8191for));
                SwipeItemLayout swipeItemLayout7 = this.f8189do;
                if (swipeItemLayout7 == null || this.f8192goto) {
                    return false;
                }
                if (swipeItemLayout7.getTouchMode() == cif) {
                    if (abs > this.f8188case && abs > abs2) {
                        this.f8189do.setTouchMode(cif2);
                        recyclerView.getParent().requestDisallowInterceptTouchEvent(true);
                        int i3 = this.f8188case;
                        i2 = i2 > 0 ? i2 - i3 : i2 + i3;
                    } else {
                        this.f8195this = true;
                        boolean onInterceptTouchEvent2 = recyclerView.onInterceptTouchEvent(motionEvent);
                        this.f8195this = false;
                        if (onInterceptTouchEvent2) {
                            this.f8192goto = true;
                            this.f8189do.m3501if();
                        }
                    }
                }
                if (this.f8189do.getTouchMode() == cif2) {
                    this.f8193if = x2;
                    this.f8191for = y2;
                    this.f8189do.m3502this(i2);
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            Cif cif = Cif.DRAG;
            int actionMasked = motionEvent.getActionMasked();
            int actionIndex = motionEvent.getActionIndex();
            if (this.f8194new == null) {
                this.f8194new = VelocityTracker.obtain();
            }
            this.f8194new.addMovement(motionEvent);
            if (actionMasked == 1) {
                SwipeItemLayout swipeItemLayout = this.f8189do;
                if (swipeItemLayout != null && swipeItemLayout.getTouchMode() == cif) {
                    VelocityTracker velocityTracker = this.f8194new;
                    velocityTracker.computeCurrentVelocity(1000, this.f8190else);
                    this.f8189do.m3503try((int) velocityTracker.getXVelocity(this.f8196try));
                }
                m3504do();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f8196try);
                if (findPointerIndex == -1) {
                    return;
                }
                float x = motionEvent.getX(findPointerIndex);
                float y = (int) motionEvent.getY(findPointerIndex);
                int i = (int) (x - this.f8193if);
                SwipeItemLayout swipeItemLayout2 = this.f8189do;
                if (swipeItemLayout2 == null || swipeItemLayout2.getTouchMode() != cif) {
                    return;
                }
                this.f8193if = x;
                this.f8191for = y;
                this.f8189do.m3502this(i);
            } else if (actionMasked == 3) {
                SwipeItemLayout swipeItemLayout3 = this.f8189do;
                if (swipeItemLayout3 != null) {
                    swipeItemLayout3.m3500goto();
                }
                m3504do();
            } else if (actionMasked != 5) {
                if (actionMasked == 6 && motionEvent.getPointerId(actionIndex) == this.f8196try) {
                    int i2 = actionIndex != 0 ? 0 : 1;
                    this.f8196try = motionEvent.getPointerId(i2);
                    this.f8193if = motionEvent.getX(i2);
                    this.f8191for = motionEvent.getY(i2);
                }
            } else {
                this.f8196try = motionEvent.getPointerId(actionIndex);
                this.f8193if = motionEvent.getX(actionIndex);
                this.f8191for = motionEvent.getY(actionIndex);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.SwipeItemLayout$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cif {
        RESET,
        DRAG,
        FLING,
        TAP
    }

    /* renamed from: com.biquge.ebook.app.widget.SwipeItemLayout$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public Scroller f8202do;

        /* renamed from: for  reason: not valid java name */
        public int f8203for;

        /* renamed from: if  reason: not valid java name */
        public boolean f8204if = false;

        /* renamed from: new  reason: not valid java name */
        public boolean f8205new = false;

        public Cnew(Context context) {
            this.f8202do = new Scroller(context, SwipeItemLayout.f8179break);
            this.f8203for = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        }

        /* renamed from: do  reason: not valid java name */
        public void m3505do() {
            if (this.f8204if) {
                return;
            }
            this.f8204if = true;
            if (this.f8202do.isFinished()) {
                return;
            }
            this.f8202do.abortAnimation();
            SwipeItemLayout.this.removeCallbacks(this);
        }

        /* renamed from: if  reason: not valid java name */
        public void m3506if(int i, int i2) {
            if (i != i2) {
                SwipeItemLayout.this.setTouchMode(Cif.FLING);
                this.f8204if = false;
                this.f8205new = i2 < i;
                this.f8202do.startScroll(i, 0, i2 - i, 0, 400);
                ViewCompat.postOnAnimation(SwipeItemLayout.this, this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif cif = Cif.RESET;
            Boolean.toString(this.f8204if);
            if (this.f8204if) {
                return;
            }
            boolean computeScrollOffset = this.f8202do.computeScrollOffset();
            int currX = this.f8202do.getCurrX();
            SwipeItemLayout swipeItemLayout = SwipeItemLayout.this;
            boolean m3502this = swipeItemLayout.m3502this(currX - swipeItemLayout.f8180case);
            if (computeScrollOffset && !m3502this) {
                ViewCompat.postOnAnimation(SwipeItemLayout.this, this);
                return;
            }
            if (m3502this) {
                SwipeItemLayout.this.removeCallbacks(this);
                if (!this.f8202do.isFinished()) {
                    this.f8202do.abortAnimation();
                }
                SwipeItemLayout.this.setTouchMode(cif);
            }
            if (computeScrollOffset) {
                return;
            }
            SwipeItemLayout.this.setTouchMode(cif);
            int i = SwipeItemLayout.this.f8180case;
            if (i != 0) {
                int abs = Math.abs(i);
                SwipeItemLayout swipeItemLayout2 = SwipeItemLayout.this;
                int i2 = swipeItemLayout2.f8181else;
                if (abs > i2 / 2) {
                    swipeItemLayout2.f8180case = -i2;
                } else {
                    swipeItemLayout2.f8180case = 0;
                }
                ViewCompat.postOnAnimation(SwipeItemLayout.this, this);
            }
        }
    }

    public SwipeItemLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8184if = Cif.RESET;
        this.f8180case = 0;
        this.f8186this = false;
        this.f8187try = new Cnew(context);
    }

    /* renamed from: new  reason: not valid java name */
    public static View m3496new(ViewGroup viewGroup, int i, int i2) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: case  reason: not valid java name */
    public boolean m3497case() {
        return this.f8180case != 0;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof ViewGroup.MarginLayoutParams) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: else  reason: not valid java name */
    public void m3498else(int i) {
        ViewCompat.offsetLeftAndRight(this.f8182for, i);
        ViewCompat.offsetLeftAndRight(this.f8185new, i);
    }

    /* renamed from: for  reason: not valid java name */
    public final boolean m3499for() {
        if (getChildCount() != 2) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt instanceof ViewGroup) {
            this.f8182for = (ViewGroup) childAt;
            View childAt2 = getChildAt(1);
            if (childAt2 instanceof ViewGroup) {
                this.f8185new = (ViewGroup) childAt2;
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? layoutParams : new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public Cif getTouchMode() {
        return this.f8184if;
    }

    /* renamed from: goto  reason: not valid java name */
    public void m3500goto() {
        int i = this.f8180case;
        int i2 = this.f8181else;
        if (i < (-i2) / 2) {
            Cif cif = Cif.FLING;
            if (i != (-i2)) {
                if (this.f8184if == cif && this.f8187try.f8205new) {
                    return;
                }
                if (this.f8184if == cif) {
                    this.f8187try.m3505do();
                }
                this.f8187try.m3506if(this.f8180case, -this.f8181else);
                return;
            }
            return;
        }
        m3501if();
    }

    /* renamed from: if  reason: not valid java name */
    public void m3501if() {
        Cif cif = Cif.FLING;
        if (this.f8180case != 0) {
            if (this.f8184if != cif || this.f8187try.f8205new) {
                if (this.f8184if == cif) {
                    this.f8187try.m3505do();
                }
                this.f8187try.m3506if(this.f8180case, 0);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i = this.f8180case;
        if (i != 0 && this.f8186this) {
            m3498else(-i);
            this.f8180case = 0;
            return;
        }
        this.f8180case = 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = this.f8180case;
        if (i != 0 && this.f8186this) {
            m3498else(-i);
            this.f8180case = 0;
        } else {
            this.f8180case = 0;
        }
        removeCallbacks(this.f8187try);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View m3496new;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            return actionMasked == 1 && (m3496new = m3496new(this, (int) motionEvent.getX(), (int) motionEvent.getY())) != null && m3496new == this.f8182for && this.f8184if == Cif.TAP && this.f8180case != 0;
        }
        View m3496new2 = m3496new(this, (int) motionEvent.getX(), (int) motionEvent.getY());
        return (m3496new2 == null || m3496new2 != this.f8182for || this.f8180case == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (m3499for()) {
            this.f8183goto = true;
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = getPaddingRight();
            int paddingBottom = getPaddingBottom();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f8182for.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f8185new.getLayoutParams();
            int width = getWidth() - (paddingRight + marginLayoutParams.rightMargin);
            this.f8182for.layout(paddingLeft + marginLayoutParams.leftMargin, marginLayoutParams.topMargin + paddingTop, width, getHeight() - (marginLayoutParams.bottomMargin + paddingBottom));
            int i5 = marginLayoutParams2.leftMargin;
            int i6 = width + i5;
            this.f8185new.layout(i6, paddingTop + marginLayoutParams2.topMargin, this.f8185new.getMeasuredWidth() + i5 + i6 + marginLayoutParams2.rightMargin, getHeight() - (marginLayoutParams2.bottomMargin + paddingBottom));
            int width2 = this.f8185new.getWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
            this.f8181else = width2;
            int i7 = this.f8180case < (-width2) / 2 ? -width2 : 0;
            this.f8180case = i7;
            m3498else(i7);
            this.f8183goto = false;
            this.f8186this = true;
            return;
        }
        throw new RuntimeException("SwipeItemLayout的子视图不符合规定");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (m3499for()) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f8182for.getLayoutParams();
            int i3 = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            int i4 = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            measureChildWithMargins(this.f8182for, i, i3 + paddingRight, i2, i4 + paddingBottom);
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(size, this.f8182for.getMeasuredWidth() + i3 + paddingRight);
            } else if (mode == 0) {
                size = this.f8182for.getMeasuredWidth() + i3 + paddingRight;
            }
            if (mode2 == Integer.MIN_VALUE) {
                size2 = Math.min(size2, this.f8182for.getMeasuredHeight() + i4 + paddingBottom);
            } else if (mode2 == 0) {
                size2 = this.f8182for.getMeasuredHeight() + i4 + paddingBottom;
            }
            setMeasuredDimension(size, size2);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f8185new.getLayoutParams();
            this.f8185new.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - (marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin)) - paddingBottom, 1073741824));
            return;
        }
        throw new RuntimeException("SwipeItemLayout的子视图不符合规定");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        View m3496new;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 && (m3496new = m3496new(this, (int) motionEvent.getX(), (int) motionEvent.getY())) != null && m3496new == this.f8182for && this.f8184if == Cif.TAP && this.f8180case != 0) {
                m3501if();
                return true;
            }
            return false;
        }
        View m3496new2 = m3496new(this, (int) motionEvent.getX(), (int) motionEvent.getY());
        return (m3496new2 == null || m3496new2 != this.f8182for || this.f8180case == 0) ? false : true;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (getVisibility() != 0) {
            this.f8180case = 0;
            invalidate();
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f8183goto) {
            return;
        }
        super.requestLayout();
    }

    public void setTouchMode(Cif cif) {
        if (this.f8184if.ordinal() == 2) {
            this.f8187try.m3505do();
        }
        this.f8184if = cif;
    }

    /* renamed from: this  reason: not valid java name */
    public boolean m3502this(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        int i2 = this.f8180case + i;
        if ((i > 0 && i2 > 0) || (i < 0 && i2 < (-this.f8181else))) {
            i2 = Math.max(Math.min(i2, 0), -this.f8181else);
            z = true;
        }
        m3498else(i2 - this.f8180case);
        this.f8180case = i2;
        return z;
    }

    /* renamed from: try  reason: not valid java name */
    public void m3503try(int i) {
        int i2;
        Cnew cnew = this.f8187try;
        int i3 = this.f8180case;
        if (i > cnew.f8203for && i3 != 0) {
            cnew.m3506if(i3, 0);
        } else if (i < (-cnew.f8203for) && i3 != (i2 = -SwipeItemLayout.this.f8181else)) {
            cnew.m3506if(i3, i2);
        } else {
            int i4 = -SwipeItemLayout.this.f8181else;
            cnew.m3506if(i3, i3 <= i4 / 2 ? i4 : 0);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }
}
