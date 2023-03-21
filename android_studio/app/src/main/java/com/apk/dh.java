package com.apk;

import androidx.viewpager.widget.ViewPager;
import com.biquge.ebook.app.widget.ViewPagerRecyclerView;

/* compiled from: ViewPagerRecyclerView.java */
/* loaded from: classes8.dex */
public class dh implements ViewPager.OnPageChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ViewPagerRecyclerView f860do;

    public dh(ViewPagerRecyclerView viewPagerRecyclerView) {
        this.f860do = viewPagerRecyclerView;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        try {
            this.f860do.f8293new.setSelectedPage(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
