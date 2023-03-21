package com.lxj.xpopup.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ViewCompat;
import com.apk.fv;
import com.apk.nv;
import com.apk.zu;

/* loaded from: classes8.dex */
public class SmartDragLayout extends FrameLayout implements NestedScrollingParent {
    public static final String TAG = "SmartDragLayout";
    public fv bgAnimator;
    public View child;
    public boolean dismissOnTouchOutside;
    public boolean enableDrag;
    public boolean hasShadowBg;
    public boolean isScrollUp;
    public boolean isThreeDrag;
    public boolean isUserClose;
    public int lastHeight;
    public OnCloseListener listener;
    public int maxY;
    public int minY;
    public OverScroller scroller;
    public nv status;
    public float touchX;
    public float touchY;
    public VelocityTracker tracker;

    /* loaded from: classes8.dex */
    public interface OnCloseListener {
        void onClose();

        void onDrag(int i, float f, boolean z);

        void onOpen();
    }

    public SmartDragLayout(Context context) {
        this(context, null);
    }

    private void finishScroll() {
        int scrollY;
        if (this.enableDrag) {
            int scrollY2 = (getScrollY() > (this.isScrollUp ? this.maxY - this.minY : (this.maxY - this.minY) * 2) / 3 ? this.maxY : this.minY) - getScrollY();
            if (this.isThreeDrag) {
                int i = this.maxY / 3;
                float f = i;
                float f2 = 2.5f * f;
                if (getScrollY() > f2) {
                    i = this.maxY;
                    scrollY = getScrollY();
                } else if (getScrollY() <= f2 && getScrollY() > f * 1.5f) {
                    i *= 2;
                    scrollY = getScrollY();
                } else if (getScrollY() > i) {
                    scrollY = getScrollY();
                } else {
                    i = this.minY;
                    scrollY = getScrollY();
                }
                scrollY2 = i - scrollY;
            }
            this.scroller.startScroll(getScrollX(), getScrollY(), 0, scrollY2, zu.f6264if);
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void close() {
        this.isUserClose = true;
        post(new Runnable() { // from class: com.lxj.xpopup.widget.SmartDragLayout.2
            @Override // java.lang.Runnable
            public void run() {
                SmartDragLayout.this.scroller.abortAnimation();
                SmartDragLayout smartDragLayout = SmartDragLayout.this;
                smartDragLayout.smoothScroll(smartDragLayout.minY - smartDragLayout.getScrollY(), false);
                SmartDragLayout.this.status = nv.Closing;
            }
        });
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.scroller.computeScrollOffset()) {
            scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void dismissOnTouchOutside(boolean z) {
        this.dismissOnTouchOutside = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.isUserClose = true;
        return super.dispatchTouchEvent(motionEvent);
    }

    public void enableDrag(boolean z) {
        this.enableDrag = z;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return 2;
    }

    public void hasShadowBg(boolean z) {
        this.hasShadowBg = z;
    }

    public void isThreeDrag(boolean z) {
        this.isThreeDrag = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isScrollUp = false;
        this.isUserClose = false;
        setTranslationY(0.0f);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.maxY = this.child.getMeasuredHeight();
        this.minY = 0;
        int measuredWidth = (getMeasuredWidth() / 2) - (this.child.getMeasuredWidth() / 2);
        if (this.enableDrag) {
            this.child.layout(measuredWidth, getMeasuredHeight(), this.child.getMeasuredWidth() + measuredWidth, getMeasuredHeight() + this.maxY);
            if (this.status == nv.Open) {
                if (this.isThreeDrag) {
                    scrollTo(getScrollX(), getScrollY() - (this.lastHeight - this.maxY));
                } else {
                    scrollTo(getScrollX(), getScrollY() - (this.lastHeight - this.maxY));
                }
            }
        } else {
            this.child.layout(measuredWidth, getMeasuredHeight() - this.child.getMeasuredHeight(), this.child.getMeasuredWidth() + measuredWidth, getMeasuredHeight());
        }
        this.lastHeight = this.maxY;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if ((getScrollY() > this.minY && getScrollY() < this.maxY) && f2 < -1500.0f && !this.isThreeDrag) {
            close();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            int scrollY = getScrollY() + i2;
            if (scrollY < this.maxY) {
                iArr[1] = i2;
            }
            scrollTo(getScrollX(), scrollY);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        scrollTo(getScrollX(), getScrollY() + i4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.scroller.abortAnimation();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return i == 2 && this.enableDrag;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        finishScroll();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
        if (r0 != 3) goto L15;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            boolean r0 = r8.enableDrag
            r1 = 1
            if (r0 == 0) goto L13
            android.widget.OverScroller r0 = r8.scroller
            boolean r0 = r0.computeScrollOffset()
            if (r0 == 0) goto L13
            r9 = 0
            r8.touchX = r9
            r8.touchY = r9
            return r1
        L13:
            int r0 = r9.getAction()
            if (r0 == 0) goto Lc3
            if (r0 == r1) goto L51
            r2 = 2
            if (r0 == r2) goto L23
            r2 = 3
            if (r0 == r2) goto L51
            goto Le0
        L23:
            boolean r0 = r8.enableDrag
            if (r0 == 0) goto Le0
            android.view.VelocityTracker r0 = r8.tracker
            if (r0 == 0) goto Le0
            r0.addMovement(r9)
            android.view.VelocityTracker r0 = r8.tracker
            r2 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r2)
            float r0 = r9.getY()
            float r2 = r8.touchY
            float r0 = r0 - r2
            int r0 = (int) r0
            int r2 = r8.getScrollX()
            int r3 = r8.getScrollY()
            int r3 = r3 - r0
            r8.scrollTo(r2, r3)
            float r9 = r9.getY()
            r8.touchY = r9
            goto Le0
        L51:
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            android.view.View r2 = r8.child
            r2.getGlobalVisibleRect(r0)
            float r2 = r9.getRawX()
            float r3 = r9.getRawY()
            boolean r0 = com.apk.pw.m2092super(r2, r3, r0)
            if (r0 != 0) goto La1
            boolean r0 = r8.dismissOnTouchOutside
            if (r0 == 0) goto La1
            float r0 = r9.getX()
            float r2 = r8.touchX
            float r0 = r0 - r2
            double r2 = (double) r0
            r4 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r2 = java.lang.Math.pow(r2, r4)
            float r9 = r9.getY()
            float r0 = r8.touchY
            float r9 = r9 - r0
            double r6 = (double) r9
            double r4 = java.lang.Math.pow(r6, r4)
            double r4 = r4 + r2
            double r2 = java.lang.Math.sqrt(r4)
            float r9 = (float) r2
            android.content.Context r0 = r8.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            float r0 = (float) r0
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 >= 0) goto La1
            r8.performClick()
        La1:
            boolean r9 = r8.enableDrag
            if (r9 == 0) goto Le0
            android.view.VelocityTracker r9 = r8.tracker
            if (r9 == 0) goto Le0
            float r9 = r9.getYVelocity()
            r0 = 1153138688(0x44bb8000, float:1500.0)
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 <= 0) goto Lbc
            boolean r9 = r8.isThreeDrag
            if (r9 != 0) goto Lbc
            r8.close()
            goto Lbf
        Lbc:
            r8.finishScroll()
        Lbf:
            r9 = 0
            r8.tracker = r9
            goto Le0
        Lc3:
            boolean r0 = r8.enableDrag
            if (r0 == 0) goto Ld4
            android.view.VelocityTracker r0 = r8.tracker
            if (r0 == 0) goto Lce
            r0.clear()
        Lce:
            android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
            r8.tracker = r0
        Ld4:
            float r0 = r9.getX()
            r8.touchX = r0
            float r9 = r9.getY()
            r8.touchY = r9
        Le0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lxj.xpopup.widget.SmartDragLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        this.child = view;
    }

    public void open() {
        post(new Runnable() { // from class: com.lxj.xpopup.widget.SmartDragLayout.1
            @Override // java.lang.Runnable
            public void run() {
                SmartDragLayout smartDragLayout = SmartDragLayout.this;
                int scrollY = smartDragLayout.maxY - smartDragLayout.getScrollY();
                SmartDragLayout smartDragLayout2 = SmartDragLayout.this;
                if (smartDragLayout2.enableDrag && smartDragLayout2.isThreeDrag) {
                    scrollY /= 3;
                }
                smartDragLayout2.smoothScroll(scrollY, true);
                SmartDragLayout.this.status = nv.Opening;
            }
        });
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        int i3 = this.maxY;
        if (i2 > i3) {
            i2 = i3;
        }
        int i4 = this.minY;
        if (i2 < i4) {
            i2 = i4;
        }
        int i5 = this.minY;
        float f = ((i2 - i5) * 1.0f) / (this.maxY - i5);
        this.isScrollUp = i2 > getScrollY();
        if (this.hasShadowBg) {
            setBackgroundColor(this.bgAnimator.m893new(f));
        }
        OnCloseListener onCloseListener = this.listener;
        if (onCloseListener != null) {
            if (this.isUserClose && f == 0.0f) {
                nv nvVar = this.status;
                nv nvVar2 = nv.Close;
                if (nvVar != nvVar2) {
                    this.status = nvVar2;
                    onCloseListener.onClose();
                    this.listener.onDrag(i2, f, this.isScrollUp);
                }
            }
            if (f == 1.0f) {
                nv nvVar3 = this.status;
                nv nvVar4 = nv.Open;
                if (nvVar3 != nvVar4) {
                    this.status = nvVar4;
                    this.listener.onOpen();
                }
            }
            this.listener.onDrag(i2, f, this.isScrollUp);
        }
        super.scrollTo(i, i2);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.listener = onCloseListener;
    }

    public void smoothScroll(final int i, final boolean z) {
        post(new Runnable() { // from class: com.lxj.xpopup.widget.SmartDragLayout.3
            @Override // java.lang.Runnable
            public void run() {
                SmartDragLayout smartDragLayout = SmartDragLayout.this;
                smartDragLayout.scroller.startScroll(smartDragLayout.getScrollX(), SmartDragLayout.this.getScrollY(), 0, i, (int) (z ? zu.f6264if : zu.f6264if * 0.8f));
                ViewCompat.postInvalidateOnAnimation(SmartDragLayout.this);
            }
        });
    }

    public SmartDragLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmartDragLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bgAnimator = new fv();
        this.enableDrag = true;
        this.dismissOnTouchOutside = true;
        this.hasShadowBg = true;
        this.isUserClose = false;
        this.isThreeDrag = false;
        this.status = nv.Close;
        this.scroller = new OverScroller(context);
    }
}
