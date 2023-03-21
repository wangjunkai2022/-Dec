package com.apk;

import com.google.android.material.appbar.AppBarLayout;
/* compiled from: AppBarLayoutStateChangeListener.java */
/* loaded from: classes8.dex */
public abstract class lg implements AppBarLayout.OnOffsetChangedListener {

    /* renamed from: do  reason: not valid java name */
    public Cdo f2794do = Cdo.INTERMEDIATE;

    /* compiled from: AppBarLayoutStateChangeListener.java */
    /* renamed from: com.apk.lg$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        EXPANDED,
        COLLAPSED,
        INTERMEDIATE
    }

    /* renamed from: do  reason: not valid java name */
    public abstract void mo1628do(AppBarLayout appBarLayout, Cdo cdo);

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        Cdo cdo = Cdo.COLLAPSED;
        Cdo cdo2 = Cdo.INTERMEDIATE;
        Cdo cdo3 = Cdo.EXPANDED;
        if (i == 0) {
            if (this.f2794do != cdo3) {
                mo1628do(appBarLayout, cdo3);
            }
            this.f2794do = cdo3;
        } else if (Math.abs(i) >= appBarLayout.getTotalScrollRange()) {
            if (this.f2794do != cdo) {
                mo1628do(appBarLayout, cdo);
            }
            this.f2794do = cdo;
        } else {
            if (this.f2794do != cdo2) {
                mo1628do(appBarLayout, cdo2);
            }
            this.f2794do = cdo2;
        }
    }
}
