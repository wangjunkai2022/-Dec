package com.apk;

import android.view.ViewTreeObserver;
import com.tr.comment.sdk.commons.widget.TrReplyLayout;
/* compiled from: TrReplyLayout.java */
/* loaded from: classes7.dex */
public class h90 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrReplyLayout f1815do;

    public h90(TrReplyLayout trReplyLayout) {
        this.f1815do = trReplyLayout;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f1815do.f10375if.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        TrReplyLayout trReplyLayout = this.f1815do;
        trReplyLayout.f10372final = trReplyLayout.f10375if.getWidth();
        TrReplyLayout trReplyLayout2 = this.f1815do;
        trReplyLayout2.f10380super = trReplyLayout2.f10375if.getHeight();
        this.f1815do.requestLayout();
        TrReplyLayout trReplyLayout3 = this.f1815do;
        int i = (int) (trReplyLayout3.f10380super * 0.9f);
        trReplyLayout3.f10382throw = i;
        trReplyLayout3.setListHeight(i);
        this.f1815do.setVisibility(8);
    }
}
