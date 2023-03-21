package com.apk;

import android.view.View;
import com.manhua.ui.widget.PublicLoadingView;

/* compiled from: PublicLoadingView.java */
/* loaded from: classes8.dex */
public class t20 extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ PublicLoadingView f4629do;

    public t20(PublicLoadingView publicLoadingView) {
        this.f4629do = publicLoadingView;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        this.f4629do.m3665do();
        PublicLoadingView.Cdo cdo = this.f4629do.f10227goto;
        if (cdo != null) {
            cdo.mo1847do();
        }
    }
}
