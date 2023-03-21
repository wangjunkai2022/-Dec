package com.apk;

import androidx.viewpager.widget.ViewPager;
/* compiled from: ShelfPageChangeListener.java */
/* loaded from: classes8.dex */
public class fg implements ViewPager.OnPageChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final boolean f1290do;

    public fg() {
        this.f1290do = false;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.f1290do) {
            tt.f4763do.putInt("SP_BOOK_CITY_CURRENT_POSITION_KEY", i);
        } else {
            w0.m2891strictfp(i);
        }
    }

    public fg(boolean z) {
        this.f1290do = z;
    }
}
