package com.apk;

import com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment;
import com.shizhefei.view.indicator.ScrollIndicatorView;
/* compiled from: BookStoreCategoryFragment.java */
/* loaded from: classes8.dex */
public class hb implements g1 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookStoreCategoryFragment f1826do;

    public hb(BookStoreCategoryFragment bookStoreCategoryFragment) {
        this.f1826do = bookStoreCategoryFragment;
    }

    @Override // com.apk.g1
    public void onData(Object obj) {
        int intValue = ((Integer) obj).intValue();
        ScrollIndicatorView scrollIndicatorView = this.f1826do.f7397new;
        if (scrollIndicatorView != null) {
            scrollIndicatorView.setCurrentItem(intValue);
        }
        BookStoreCategoryFragment.h(this.f1826do, true);
    }
}
