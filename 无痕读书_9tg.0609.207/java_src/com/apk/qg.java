package com.apk;

import androidx.viewpager.widget.ViewPager;
import com.biquge.ebook.app.widget.ComicViewPagerRecyclerView;
/* compiled from: ComicViewPagerRecyclerView.java */
/* loaded from: classes8.dex */
public class qg implements ViewPager.OnPageChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicViewPagerRecyclerView f3849do;

    public qg(ComicViewPagerRecyclerView comicViewPagerRecyclerView) {
        this.f3849do = comicViewPagerRecyclerView;
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
            this.f3849do.f8039new.setSelectedPage(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
