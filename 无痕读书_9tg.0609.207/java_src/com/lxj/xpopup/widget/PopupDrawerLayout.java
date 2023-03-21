package com.lxj.xpopup.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import androidx.viewpager.widget.ViewPager;
import com.apk.fv;
import com.apk.nv;
import com.apk.pv;
import com.apk.pw;
/* loaded from: classes8.dex */
public class PopupDrawerLayout extends FrameLayout {
    public fv bgAnimator;
    public ViewDragHelper.Callback callback;
    public boolean canChildScrollLeft;
    public float downX;
    public float downY;
    public ViewDragHelper dragHelper;
    public boolean enableDrag;
    public boolean enableShadow;
    public float fraction;
    public boolean hasLayout;
    public boolean isCanClose;
    public boolean isDrawStatusBarShadow;
    public boolean isIntercept;
    public boolean isToLeft;
    public OnCloseListener listener;
    public View mChild;
    public View placeHolder;
    public pv position;
    public nv status;
    public float ty;
    public float x;
    public float y;

    /* loaded from: classes8.dex */
    public interface OnCloseListener {
        void onClose();

        void onDrag(int i, float f, boolean z);

        void onOpen();
    }

    public PopupDrawerLayout(Context context) {
        this(context, null);
    }

    private boolean canScroll(ViewGroup viewGroup, float f, float f2, int i) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            int[] iArr = new int[2];
            childAt.getLocationInWindow(iArr);
            if (pw.m2092super(f, f2, new Rect(iArr[0], iArr[1], childAt.getWidth() + iArr[0], childAt.getHeight() + iArr[1])) && (childAt instanceof ViewGroup)) {
                if (childAt instanceof ViewPager) {
                    ViewPager viewPager = (ViewPager) childAt;
                    if (i == 0) {
                        return viewPager.canScrollHorizontally(-1) || viewPager.canScrollHorizontally(1);
                    }
                    return viewPager.canScrollHorizontally(i);
                } else if (childAt instanceof HorizontalScrollView) {
                    HorizontalScrollView horizontalScrollView = (HorizontalScrollView) childAt;
                    if (i == 0) {
                        return horizontalScrollView.canScrollHorizontally(-1) || horizontalScrollView.canScrollHorizontally(1);
                    }
                    return horizontalScrollView.canScrollHorizontally(i);
                } else {
                    return canScroll((ViewGroup) childAt, f, f2, i);
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int fixLeft(int i) {
        pv pvVar = this.position;
        if (pvVar == pv.Left) {
            if (i < (-this.mChild.getMeasuredWidth())) {
                i = -this.mChild.getMeasuredWidth();
            }
            if (i > 0) {
                return 0;
            }
            return i;
        } else if (pvVar == pv.Right) {
            if (i < getMeasuredWidth() - this.mChild.getMeasuredWidth()) {
                i = getMeasuredWidth() - this.mChild.getMeasuredWidth();
            }
            return i > getMeasuredWidth() ? getMeasuredWidth() : i;
        } else {
            return i;
        }
    }

    public void close() {
        if (this.isCanClose) {
            post(new Runnable() { // from class: com.lxj.xpopup.widget.PopupDrawerLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    PopupDrawerLayout.this.dragHelper.abort();
                    PopupDrawerLayout popupDrawerLayout = PopupDrawerLayout.this;
                    ViewDragHelper viewDragHelper = popupDrawerLayout.dragHelper;
                    View view = popupDrawerLayout.mChild;
                    viewDragHelper.smoothSlideViewTo(view, popupDrawerLayout.position == pv.Left ? -view.getMeasuredWidth() : popupDrawerLayout.getMeasuredWidth(), 0);
                    ViewCompat.postInvalidateOnAnimation(PopupDrawerLayout.this);
                }
            });
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.dragHelper.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ty = getTranslationY();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.status = null;
        this.hasLayout = false;
        this.fraction = 0.0f;
        setTranslationY(this.ty);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.placeHolder = getChildAt(0);
        this.mChild = getChildAt(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        if (r0 != 3) goto L20;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            boolean r0 = r5.enableDrag
            if (r0 != 0) goto L9
            boolean r6 = super.onInterceptTouchEvent(r6)
            return r6
        L9:
            androidx.customview.widget.ViewDragHelper r0 = r5.dragHelper
            r1 = 1
            boolean r0 = r0.continueSettling(r1)
            if (r0 != 0) goto La3
            com.apk.nv r0 = r5.status
            com.apk.nv r2 = com.apk.nv.Close
            if (r0 != r2) goto L1a
            goto La3
        L1a:
            float r0 = r6.getX()
            float r2 = r5.x
            r3 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L27
            r0 = 1
            goto L28
        L27:
            r0 = 0
        L28:
            r5.isToLeft = r0
            float r0 = r6.getX()
            r5.x = r0
            float r0 = r6.getY()
            r5.y = r0
            int r0 = r6.getAction()
            if (r0 == 0) goto L62
            if (r0 == r1) goto L5c
            r2 = 2
            if (r0 == r2) goto L45
            r2 = 3
            if (r0 == r2) goto L5c
            goto L6e
        L45:
            float r0 = r5.x
            float r2 = r5.downX
            float r0 = r0 - r2
            float r0 = java.lang.Math.abs(r0)
            float r2 = r5.y
            float r4 = r5.downY
            float r2 = r2 - r4
            float r2 = java.lang.Math.abs(r2)
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 <= 0) goto L6e
            return r3
        L5c:
            r0 = 0
            r5.x = r0
            r5.y = r0
            goto L6e
        L62:
            float r0 = r6.getX()
            r5.downX = r0
            float r0 = r6.getY()
            r5.downY = r0
        L6e:
            float r0 = r6.getX()
            float r2 = r6.getY()
            boolean r0 = r5.canScroll(r5, r0, r2, r1)
            r5.canChildScrollLeft = r0
            androidx.customview.widget.ViewDragHelper r0 = r5.dragHelper
            boolean r0 = r0.shouldInterceptTouchEvent(r6)
            r5.isIntercept = r0
            boolean r1 = r5.isToLeft
            if (r1 == 0) goto L8d
            boolean r1 = r5.canChildScrollLeft
            if (r1 != 0) goto L8d
            return r0
        L8d:
            float r0 = r6.getX()
            float r1 = r6.getY()
            boolean r0 = r5.canScroll(r5, r0, r1)
            if (r0 != 0) goto L9e
            boolean r6 = r5.isIntercept
            return r6
        L9e:
            boolean r6 = super.onInterceptTouchEvent(r6)
            return r6
        La3:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lxj.xpopup.widget.PopupDrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.placeHolder.layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
        if (!this.hasLayout) {
            if (this.position == pv.Left) {
                View view = this.mChild;
                view.layout(-view.getMeasuredWidth(), 0, 0, getMeasuredHeight());
            } else {
                this.mChild.layout(getMeasuredWidth(), 0, this.mChild.getMeasuredWidth() + getMeasuredWidth(), getMeasuredHeight());
            }
            this.hasLayout = true;
            return;
        }
        View view2 = this.mChild;
        view2.layout(view2.getLeft(), this.mChild.getTop(), this.mChild.getRight(), this.mChild.getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.enableDrag) {
            if (this.dragHelper.continueSettling(true)) {
                return true;
            }
            this.dragHelper.processTouchEvent(motionEvent);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void open() {
        post(new Runnable() { // from class: com.lxj.xpopup.widget.PopupDrawerLayout.2
            @Override // java.lang.Runnable
            public void run() {
                PopupDrawerLayout popupDrawerLayout = PopupDrawerLayout.this;
                ViewDragHelper viewDragHelper = popupDrawerLayout.dragHelper;
                View view = popupDrawerLayout.mChild;
                viewDragHelper.smoothSlideViewTo(view, popupDrawerLayout.position == pv.Left ? 0 : view.getLeft() - PopupDrawerLayout.this.mChild.getMeasuredWidth(), 0);
                ViewCompat.postInvalidateOnAnimation(PopupDrawerLayout.this);
            }
        });
    }

    public void setDrawerPosition(pv pvVar) {
        this.position = pvVar;
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
    }

    public PopupDrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PopupDrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.status = null;
        this.position = pv.Left;
        this.bgAnimator = new fv();
        this.isDrawStatusBarShadow = false;
        this.fraction = 0.0f;
        this.enableShadow = true;
        this.enableDrag = true;
        this.hasLayout = false;
        this.isIntercept = false;
        ViewDragHelper.Callback callback = new ViewDragHelper.Callback() { // from class: com.lxj.xpopup.widget.PopupDrawerLayout.1
            private void calcFraction(int i2, int i3) {
                nv nvVar = nv.Close;
                PopupDrawerLayout popupDrawerLayout = PopupDrawerLayout.this;
                pv pvVar = popupDrawerLayout.position;
                if (pvVar == pv.Left) {
                    popupDrawerLayout.fraction = ((popupDrawerLayout.mChild.getMeasuredWidth() + i2) * 1.0f) / PopupDrawerLayout.this.mChild.getMeasuredWidth();
                    if (i2 == (-PopupDrawerLayout.this.mChild.getMeasuredWidth()) && PopupDrawerLayout.this.listener != null) {
                        PopupDrawerLayout popupDrawerLayout2 = PopupDrawerLayout.this;
                        if (popupDrawerLayout2.status != nvVar) {
                            popupDrawerLayout2.status = nvVar;
                            popupDrawerLayout2.listener.onClose();
                        }
                    }
                } else if (pvVar == pv.Right) {
                    popupDrawerLayout.fraction = ((popupDrawerLayout.getMeasuredWidth() - i2) * 1.0f) / PopupDrawerLayout.this.mChild.getMeasuredWidth();
                    if (i2 == PopupDrawerLayout.this.getMeasuredWidth() && PopupDrawerLayout.this.listener != null) {
                        PopupDrawerLayout popupDrawerLayout3 = PopupDrawerLayout.this;
                        if (popupDrawerLayout3.status != nvVar) {
                            popupDrawerLayout3.status = nvVar;
                            popupDrawerLayout3.listener.onClose();
                        }
                    }
                }
                PopupDrawerLayout popupDrawerLayout4 = PopupDrawerLayout.this;
                if (popupDrawerLayout4.enableShadow) {
                    popupDrawerLayout4.setBackgroundColor(popupDrawerLayout4.bgAnimator.m893new(popupDrawerLayout4.fraction));
                }
                if (PopupDrawerLayout.this.listener != null) {
                    PopupDrawerLayout.this.listener.onDrag(i2, PopupDrawerLayout.this.fraction, i3 < 0);
                    PopupDrawerLayout popupDrawerLayout5 = PopupDrawerLayout.this;
                    if (popupDrawerLayout5.fraction == 1.0f) {
                        nv nvVar2 = popupDrawerLayout5.status;
                        nv nvVar3 = nv.Open;
                        if (nvVar2 != nvVar3) {
                            popupDrawerLayout5.status = nvVar3;
                            popupDrawerLayout5.listener.onOpen();
                        }
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(@NonNull View view, int i2, int i3) {
                PopupDrawerLayout popupDrawerLayout = PopupDrawerLayout.this;
                return view == popupDrawerLayout.placeHolder ? i2 : popupDrawerLayout.fixLeft(i2);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int getViewHorizontalDragRange(@NonNull View view) {
                return 1;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(@NonNull View view, int i2, int i3, int i4, int i5) {
                super.onViewPositionChanged(view, i2, i3, i4, i5);
                View view2 = PopupDrawerLayout.this.placeHolder;
                if (view == view2) {
                    view2.layout(0, 0, view2.getMeasuredWidth(), PopupDrawerLayout.this.placeHolder.getMeasuredHeight());
                    PopupDrawerLayout popupDrawerLayout = PopupDrawerLayout.this;
                    int fixLeft = popupDrawerLayout.fixLeft(popupDrawerLayout.mChild.getLeft() + i4);
                    View view3 = PopupDrawerLayout.this.mChild;
                    view3.layout(fixLeft, view3.getTop(), PopupDrawerLayout.this.mChild.getMeasuredWidth() + fixLeft, PopupDrawerLayout.this.mChild.getBottom());
                    calcFraction(fixLeft, i4);
                    return;
                }
                calcFraction(i2, i4);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(@NonNull View view, float f, float f2) {
                int measuredWidth;
                int measuredWidth2;
                super.onViewReleased(view, f, f2);
                PopupDrawerLayout popupDrawerLayout = PopupDrawerLayout.this;
                if (view == popupDrawerLayout.placeHolder && f == 0.0f) {
                    popupDrawerLayout.close();
                    return;
                }
                PopupDrawerLayout popupDrawerLayout2 = PopupDrawerLayout.this;
                if (view == popupDrawerLayout2.mChild && popupDrawerLayout2.isToLeft && !popupDrawerLayout2.canChildScrollLeft && f < -500.0f) {
                    popupDrawerLayout2.close();
                    return;
                }
                PopupDrawerLayout popupDrawerLayout3 = PopupDrawerLayout.this;
                if (popupDrawerLayout3.position == pv.Left) {
                    if (f < -1000.0f) {
                        measuredWidth2 = popupDrawerLayout3.mChild.getMeasuredWidth();
                    } else {
                        if (PopupDrawerLayout.this.mChild.getLeft() < (-popupDrawerLayout3.mChild.getMeasuredWidth()) / 2) {
                            measuredWidth2 = PopupDrawerLayout.this.mChild.getMeasuredWidth();
                        } else {
                            measuredWidth = 0;
                        }
                    }
                    measuredWidth = -measuredWidth2;
                } else if (f > 1000.0f) {
                    measuredWidth = popupDrawerLayout3.getMeasuredWidth();
                } else {
                    measuredWidth = view.getLeft() < popupDrawerLayout3.getMeasuredWidth() - (PopupDrawerLayout.this.mChild.getMeasuredWidth() / 2) ? PopupDrawerLayout.this.getMeasuredWidth() - PopupDrawerLayout.this.mChild.getMeasuredWidth() : PopupDrawerLayout.this.getMeasuredWidth();
                }
                PopupDrawerLayout popupDrawerLayout4 = PopupDrawerLayout.this;
                popupDrawerLayout4.dragHelper.smoothSlideViewTo(popupDrawerLayout4.mChild, measuredWidth, view.getTop());
                ViewCompat.postInvalidateOnAnimation(PopupDrawerLayout.this);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NonNull View view, int i2) {
                return (PopupDrawerLayout.this.dragHelper.continueSettling(true) || PopupDrawerLayout.this.status == nv.Close) ? false : true;
            }
        };
        this.callback = callback;
        this.isCanClose = true;
        this.dragHelper = ViewDragHelper.create(this, callback);
    }

    private boolean canScroll(ViewGroup viewGroup, float f, float f2) {
        return canScroll(viewGroup, f, f2, 0);
    }
}
