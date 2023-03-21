package com.apk;

import android.content.Context;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChildHelper;

/* compiled from: NestedWebView.java */
/* loaded from: classes8.dex */
public class ph extends ih implements NestedScrollingChild2 {

    /* renamed from: break  reason: not valid java name */
    public final int[] f3640break;

    /* renamed from: case  reason: not valid java name */
    public int f3641case;

    /* renamed from: catch  reason: not valid java name */
    public final int[] f3642catch;

    /* renamed from: class  reason: not valid java name */
    public OverScroller f3643class;

    /* renamed from: const  reason: not valid java name */
    public int f3644const;

    /* renamed from: else  reason: not valid java name */
    public int f3645else;

    /* renamed from: final  reason: not valid java name */
    public int f3646final;

    /* renamed from: for  reason: not valid java name */
    public int f3647for;

    /* renamed from: goto  reason: not valid java name */
    public int f3648goto;

    /* renamed from: if  reason: not valid java name */
    public NestedScrollingChildHelper f3649if;

    /* renamed from: new  reason: not valid java name */
    public VelocityTracker f3650new;

    /* renamed from: super  reason: not valid java name */
    public int f3651super;

    /* renamed from: this  reason: not valid java name */
    public int f3652this;

    /* renamed from: throw  reason: not valid java name */
    public int f3653throw;

    /* renamed from: try  reason: not valid java name */
    public boolean f3654try;

    /* renamed from: while  reason: not valid java name */
    public boolean f3655while;

    public ph(Context context) {
        super(context, null);
        this.f3654try = false;
        this.f3641case = -1;
        this.f3640break = new int[2];
        this.f3642catch = new int[2];
        this.f3643class = new OverScroller(getContext());
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3645else = viewConfiguration.getScaledTouchSlop();
        this.f3648goto = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3652this = viewConfiguration.getScaledMaximumFlingVelocity();
        setNestedScrollingEnabled(true);
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.f3649if == null) {
            this.f3649if = new NestedScrollingChildHelper(this);
        }
        return this.f3649if;
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.f3655while) {
            int scrollY = getScrollY() - this.f3646final;
            if (getScrollY() == 0) {
                startNestedScroll(2, 1);
                if (this.f3653throw < 0) {
                    dispatchNestedScroll(0, scrollY, 0, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, null, 1);
                }
                this.f3655while = false;
                stopNestedScroll(1);
            }
        }
        getScrollY();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2, int i3) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
    }

    @Override // android.webkit.WebView
    public void flingScroll(int i, int i2) {
        super.flingScroll(i, i2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().hasNestedScrollingParent(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00f7  */
    @Override // android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ph.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().setNestedScrollingEnabled(z);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().startNestedScroll(i, i2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i) {
        getScrollingChildHelper().stopNestedScroll(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().startNestedScroll(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }
}
