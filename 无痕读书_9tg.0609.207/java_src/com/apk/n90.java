package com.apk;

import android.view.ViewTreeObserver;
import com.tr.comment.sdk.commons.widget.TrStateView;
/* compiled from: TrStateView.java */
/* loaded from: classes7.dex */
public class n90 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrStateView f3201do;

    public n90(TrStateView trStateView) {
        this.f3201do = trStateView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f3201do.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        TrStateView trStateView = this.f3201do;
        trStateView.f10396goto = trStateView.getWidth();
        TrStateView trStateView2 = this.f3201do;
        trStateView2.f10399this = trStateView2.getHeight();
        this.f3201do.requestLayout();
    }
}
