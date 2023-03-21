package com.apk;

import android.view.View;
import com.apk.re;

/* compiled from: WebErrorView.java */
/* loaded from: classes8.dex */
public class qe extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ re f3841do;

    public qe(re reVar) {
        this.f3841do = reVar;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        re.Cdo cdo = this.f3841do.f4035for;
        if (cdo != null) {
            ((lh) cdo).f2805do.m3532case();
        }
    }
}
