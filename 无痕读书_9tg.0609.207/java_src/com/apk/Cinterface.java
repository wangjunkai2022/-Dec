package com.apk;

import android.view.View;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
/* compiled from: AdViewBangDan.java */
/* renamed from: com.apk.interface  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cinterface implements q40 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ AdViewBangDan f2209do;

    public Cinterface(AdViewBangDan adViewBangDan) {
        this.f2209do = adViewBangDan;
    }

    @Override // com.apk.q40
    /* renamed from: do */
    public void mo9do() {
    }

    @Override // com.apk.q40
    /* renamed from: if */
    public void mo10if(int i, String str) {
        AdViewBangDan adViewBangDan = this.f2209do;
        adViewBangDan.f6299else = true;
        if (adViewBangDan.f6300goto && adViewBangDan.getChildCount() == 0) {
            View view = new View(this.f2209do.f6303try);
            view.setMinimumHeight(1);
            AdViewBangDan.m3266if(this.f2209do, view);
        }
    }

    @Override // com.apk.q40
    /* renamed from: new */
    public void mo11new(View view) {
        AdViewBangDan adViewBangDan = this.f2209do;
        adViewBangDan.f6299else = true;
        AdViewBangDan.m3266if(adViewBangDan, view);
    }

    @Override // com.apk.q40
    public void onAdClick() {
    }
}
