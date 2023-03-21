package com.youth.banner.view;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;
/* loaded from: classes7.dex */
public class BannerViewPager extends ViewPager {

    /* renamed from: do  reason: not valid java name */
    public Handler f10534do;

    /* renamed from: for  reason: not valid java name */
    public boolean f10535for;

    /* renamed from: if  reason: not valid java name */
    public boolean f10536if;

    /* renamed from: new  reason: not valid java name */
    public Runnable f10537new;

    /* renamed from: com.youth.banner.view.BannerViewPager$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BannerViewPager.this.f10536if = true;
        }
    }

    public BannerViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10534do = new Handler();
        this.f10536if = false;
        this.f10535for = true;
        this.f10537new = new Cdo();
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10534do.removeCallbacksAndMessages(null);
        this.f10534do.postDelayed(this.f10537new, 500L);
        try {
            if (getAdapter() == null || getAdapter().getCount() <= 0) {
                return;
            }
            Field declaredField = ViewPager.class.getDeclaredField("mFirstLayout");
            declaredField.setAccessible(true);
            declaredField.set(this, Boolean.FALSE);
            setCurrentItem(getCurrentItem());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f10534do.removeCallbacksAndMessages(null);
        this.f10536if = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f10535for && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f10535for && super.onTouchEvent(motionEvent);
    }

    public void setScrollable(boolean z) {
        this.f10535for = z;
    }
}
