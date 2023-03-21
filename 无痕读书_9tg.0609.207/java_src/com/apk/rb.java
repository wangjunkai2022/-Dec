package com.apk;

import com.biquge.ebook.app.ad.AdFloatView;
import com.biquge.ebook.app.ui.fragment.HomeFragment;
/* compiled from: HomeFragment.java */
/* loaded from: classes8.dex */
public class rb implements AdFloatView.Cfor {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ AdFloatView f4022do;

    public rb(HomeFragment homeFragment, AdFloatView adFloatView) {
        this.f4022do = adFloatView;
    }

    @Override // com.biquge.ebook.app.ad.AdFloatView.Cfor
    /* renamed from: do  reason: not valid java name */
    public void mo2256do() {
        AdFloatView adFloatView = this.f4022do;
        if (adFloatView != null) {
            adFloatView.setVisibility(4);
        }
    }

    @Override // com.biquge.ebook.app.ad.AdFloatView.Cfor
    public void onShow() {
        AdFloatView adFloatView = this.f4022do;
        if (adFloatView != null) {
            adFloatView.setVisibility(0);
        }
    }
}
