package com.apk;

import android.view.ViewTreeObserver;
import com.biquge.ebook.app.ui.book.view.ReadBookLayout;
/* compiled from: ReadBookLayout.java */
/* loaded from: classes8.dex */
public class ea implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ReadBookLayout f1027do;

    public ea(ReadBookLayout readBookLayout) {
        this.f1027do = readBookLayout;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f1027do.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        ReadBookLayout readBookLayout = this.f1027do;
        m1 m1Var = readBookLayout.f7181if;
        if (m1Var != null) {
            if (!readBookLayout.f7180do) {
                m1Var.mo1686synchronized();
            } else {
                m1Var.f(readBookLayout.getWidth(), this.f1027do.getHeight());
            }
        }
        this.f1027do.f7180do = true;
    }
}
