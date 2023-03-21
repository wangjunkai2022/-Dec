package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.apk.Cgoto;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.reflect.Field;

/* loaded from: classes8.dex */
public class AppBarLayoutBehavior extends AppBarLayout.Behavior {

    /* renamed from: do  reason: not valid java name */
    public boolean f7978do;

    /* renamed from: if  reason: not valid java name */
    public boolean f7979if;

    public AppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: do  reason: not valid java name */
    public final Field m3463do() throws NoSuchFieldException {
        try {
            return getClass().getSuperclass().getSuperclass().getDeclaredField("mFlingRunnable");
        } catch (NoSuchFieldException unused) {
            return AppBarLayoutBehavior.class.getSuperclass().getSuperclass().getSuperclass().getDeclaredField("flingRunnable");
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3464for(AppBarLayout appBarLayout) {
        try {
            Field m3463do = m3463do();
            Field m3465if = m3465if();
            m3463do.setAccessible(true);
            m3465if.setAccessible(true);
            Runnable runnable = (Runnable) m3463do.get(this);
            OverScroller overScroller = (OverScroller) m3465if.get(this);
            if (runnable != null) {
                appBarLayout.removeCallbacks(runnable);
                m3463do.set(this, null);
            }
            if (overScroller == null || overScroller.isFinished()) {
                return;
            }
            overScroller.abortAnimation();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final Field m3465if() throws NoSuchFieldException {
        try {
            return getClass().getSuperclass().getSuperclass().getDeclaredField("mScroller");
        } catch (NoSuchFieldException unused) {
            return AppBarLayoutBehavior.class.getSuperclass().getSuperclass().getSuperclass().getDeclaredField("scroller");
        }
    }

    @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        appBarLayout.getTotalScrollRange();
        this.f7979if = false;
        if (this.f7978do) {
            this.f7979if = true;
        }
        if (motionEvent.getActionMasked() == 0) {
            m3464for(appBarLayout);
        }
        return super.onInterceptTouchEvent(coordinatorLayout, appBarLayout, motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        StringBuilder m1016super = Cgoto.m1016super("onNestedScroll: target:");
        m1016super.append(view2.getClass());
        m1016super.append(" ,");
        m1016super.append(appBarLayout.getTotalScrollRange());
        m1016super.append(" ,dxConsumed:");
        m1016super.append(i);
        m1016super.append(" ,dyConsumed:");
        m1016super.append(i2);
        m1016super.append(" ,type:");
        m1016super.append(i5);
        m1016super.toString();
        if (this.f7979if) {
            return;
        }
        super.onNestedScroll(coordinatorLayout, appBarLayout, view2, i, i2, i3, i4, i5);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        appBarLayout.getTotalScrollRange();
        if (i3 == 1) {
            this.f7978do = true;
        }
        if (this.f7979if) {
            return;
        }
        super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
        m3464for(appBarLayout);
        return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i, i2);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i);
        this.f7978do = false;
        this.f7979if = false;
    }
}
