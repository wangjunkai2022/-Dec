package com.apk;

import android.view.View;
/* compiled from: EmptyAnimator.java */
/* loaded from: classes8.dex */
public class bv extends cv {
    public bv(View view) {
        super(view, null);
    }

    @Override // com.apk.cv
    /* renamed from: do */
    public void mo114do() {
        this.f790do.animate().alpha(0.0f).setDuration(zu.f6264if).withLayer().start();
    }

    @Override // com.apk.cv
    /* renamed from: for */
    public void mo115for() {
        this.f790do.setAlpha(0.0f);
    }

    @Override // com.apk.cv
    /* renamed from: if */
    public void mo116if() {
        this.f790do.animate().alpha(1.0f).setDuration(zu.f6264if).withLayer().start();
    }
}
