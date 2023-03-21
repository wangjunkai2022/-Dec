package com.apk;

import com.manhua.ui.activity.ComicCategoryActivity;
import com.shizhefei.view.indicator.ScrollIndicatorView;

/* compiled from: ComicCategoryActivity.java */
/* loaded from: classes8.dex */
public class y00 implements g1 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicCategoryActivity f5829do;

    public y00(ComicCategoryActivity comicCategoryActivity) {
        this.f5829do = comicCategoryActivity;
    }

    @Override // com.apk.g1
    public void onData(Object obj) {
        int intValue = ((Integer) obj).intValue();
        ScrollIndicatorView scrollIndicatorView = this.f5829do.f9662for;
        if (scrollIndicatorView != null) {
            scrollIndicatorView.setCurrentItem(intValue);
        }
        ComicCategoryActivity.k(this.f5829do, true);
    }
}
