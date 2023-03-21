package com.apk;

import com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment;
import com.chanven.lib.cptr.PtrClassicFrameLayout;

/* compiled from: BookStoreCategoryFragment.java */
/* loaded from: classes8.dex */
public class ib implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookStoreCategoryFragment f2069do;

    public ib(BookStoreCategoryFragment bookStoreCategoryFragment) {
        this.f2069do = bookStoreCategoryFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f2069do.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4550do = (byte) 1;
        ptrClassicFrameLayout.m2541if();
    }
}
