package com.lxj.xpopup.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import androidx.viewpager.widget.ViewPager;
import com.apk.jw;
import com.apk.kw;
import com.apk.vv;
import com.lxj.xpopup.core.ImageViewerPopupView;

/* loaded from: classes8.dex */
public class PhotoViewContainer extends FrameLayout {
    public static final String TAG = "PhotoViewContainer";
    public int HideTopThreshold;
    public ViewDragHelper.Callback cb;
    public vv dragChangeListener;
    public ViewDragHelper dragHelper;
    public boolean isReleasing;
    public boolean isVertical;
    public int maxOffset;
    public float touchX;
    public float touchY;
    public ViewPager viewPager;

    public PhotoViewContainer(@NonNull Context context) {
        this(context, null);
    }

    private jw getCurrentPhotoView() {
        ViewPager viewPager = this.viewPager;
        return (jw) viewPager.getChildAt(viewPager.getCurrentItem());
    }

    private void init() {
        this.HideTopThreshold = dip2px(this.HideTopThreshold);
        this.dragHelper = ViewDragHelper.create(this, this.cb);
        setBackgroundColor(0);
    }

    private boolean isTopOrBottomEnd() {
        jw currentPhotoView = getCurrentPhotoView();
        if (currentPhotoView != null) {
            kw kwVar = currentPhotoView.f2431do;
            if (kwVar.f2697private || kwVar.f2674abstract) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.dragHelper.continueSettling(false)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public int dip2px(float f) {
        return (int) ((f * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getPointerCount() > 1) {
            return super.dispatchTouchEvent(motionEvent);
        }
        try {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        float x = motionEvent.getX() - this.touchX;
                        float y = motionEvent.getY() - this.touchY;
                        this.viewPager.dispatchTouchEvent(motionEvent);
                        if (Math.abs(y) <= Math.abs(x)) {
                            z = false;
                        }
                        this.isVertical = z;
                        this.touchX = motionEvent.getX();
                        this.touchY = motionEvent.getY();
                    } else if (action != 3) {
                    }
                }
                this.touchX = 0.0f;
                this.touchY = 0.0f;
                this.isVertical = false;
            } else {
                this.touchX = motionEvent.getX();
                this.touchY = motionEvent.getY();
            }
        } catch (Exception unused) {
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isReleasing = false;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.viewPager = (ViewPager) getChildAt(0);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean shouldInterceptTouchEvent = this.dragHelper.shouldInterceptTouchEvent(motionEvent);
        if (motionEvent.getPointerCount() <= 1 || motionEvent.getAction() != 2) {
            if (isTopOrBottomEnd() && this.isVertical) {
                return true;
            }
            return shouldInterceptTouchEvent && this.isVertical;
        }
        return false;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.maxOffset = getHeight() / 3;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() > 1) {
            return false;
        }
        try {
            this.dragHelper.processTouchEvent(motionEvent);
        } catch (Exception unused) {
        }
        return true;
    }

    public void setOnDragChangeListener(vv vvVar) {
        this.dragChangeListener = vvVar;
    }

    public PhotoViewContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoViewContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.HideTopThreshold = 80;
        this.isReleasing = false;
        this.isVertical = false;
        this.cb = new ViewDragHelper.Callback() { // from class: com.lxj.xpopup.widget.PhotoViewContainer.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(@NonNull View view, int i2, int i3) {
                int top2 = (i3 / 2) + PhotoViewContainer.this.viewPager.getTop();
                return top2 >= 0 ? Math.min(top2, PhotoViewContainer.this.maxOffset) : -Math.min(-top2, PhotoViewContainer.this.maxOffset);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int getViewVerticalDragRange(@NonNull View view) {
                return 1;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(@NonNull View view, int i2, int i3, int i4, int i5) {
                super.onViewPositionChanged(view, i2, i3, i4, i5);
                ViewPager viewPager = PhotoViewContainer.this.viewPager;
                if (view != viewPager) {
                    viewPager.offsetTopAndBottom(i5);
                }
                float abs = (Math.abs(i3) * 1.0f) / PhotoViewContainer.this.maxOffset;
                float f = 1.0f - (0.2f * abs);
                PhotoViewContainer.this.viewPager.setScaleX(f);
                PhotoViewContainer.this.viewPager.setScaleY(f);
                view.setScaleX(f);
                view.setScaleY(f);
                if (PhotoViewContainer.this.dragChangeListener == null) {
                    return;
                }
                ((ImageViewerPopupView) PhotoViewContainer.this.dragChangeListener).f9517for.setAlpha(1.0f - abs);
                throw null;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(@NonNull View view, float f, float f2) {
                super.onViewReleased(view, f, f2);
                if (Math.abs(view.getTop()) > PhotoViewContainer.this.HideTopThreshold) {
                    if (PhotoViewContainer.this.dragChangeListener != null) {
                        ((ImageViewerPopupView) PhotoViewContainer.this.dragChangeListener).dismiss();
                        return;
                    }
                    return;
                }
                PhotoViewContainer.this.dragHelper.smoothSlideViewTo(PhotoViewContainer.this.viewPager, 0, 0);
                PhotoViewContainer.this.dragHelper.smoothSlideViewTo(view, 0, 0);
                ViewCompat.postInvalidateOnAnimation(PhotoViewContainer.this);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NonNull View view, int i2) {
                return !PhotoViewContainer.this.isReleasing;
            }
        };
        init();
    }
}
