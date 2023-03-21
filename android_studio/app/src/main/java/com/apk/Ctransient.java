package com.apk;

import android.view.View;
import com.biquge.ebook.app.ad.ads.AdViewBanner;

/* compiled from: AdViewBanner.java */
/* renamed from: com.apk.transient  reason: invalid class name */
/* loaded from: classes8.dex */
public class Ctransient implements q40 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ AdViewBanner f4761do;

    public Ctransient(AdViewBanner adViewBanner) {
        this.f4761do = adViewBanner;
    }

    @Override // com.apk.q40
    /* renamed from: do */
    public void mo9do() {
    }

    @Override // com.apk.q40
    /* renamed from: if */
    public void mo10if(int i, String str) {
        this.f4761do.f6310else = true;
    }

    @Override // com.apk.q40
    /* renamed from: new */
    public void mo11new(View view) {
        AdViewBanner adViewBanner = this.f4761do;
        adViewBanner.f6310else = true;
        AdViewBanner.m3270if(adViewBanner, view);
    }

    @Override // com.apk.q40
    public void onAdClick() {
    }
}
