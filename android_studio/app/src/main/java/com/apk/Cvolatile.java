package com.apk;

import android.view.View;
import com.apk.Cstrictfp;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.swl.gg.ggs.SwlAdAdBangDan;

/* compiled from: AdViewBangDan.java */
/* renamed from: com.apk.volatile  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cvolatile implements x60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ AdViewBangDan f5187do;

    public Cvolatile(AdViewBangDan adViewBangDan) {
        this.f5187do = adViewBangDan;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
        this.f5187do.f6299else = true;
        v m2734do = v.m2734do();
        String str = this.f5187do.f6295case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: do */
    public void mo164do() {
        this.f5187do.f6299else = true;
        v m2734do = v.m2734do();
        String str = this.f5187do.f6295case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
        v m2734do = v.m2734do();
        String str = this.f5187do.f6295case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: goto */
    public void mo1184goto() {
        v m2734do = v.m2734do();
        String str = this.f5187do.f6295case;
        if (m2734do != null) {
            if (ze.m3179private("SP_AD_CLOSE_MODEL_LONG_KEY", false)) {
                this.f5187do.m3269try();
                return;
            }
            if (this.f5187do.getChildCount() > 0) {
                this.f5187do.removeAllViews();
            }
            Cstrictfp.Cdo cdo = this.f5187do.f6301new;
            if (cdo != null) {
                cdo.removeMessages(102);
                AdViewBangDan adViewBangDan = this.f5187do;
                adViewBangDan.f6301new.sendEmptyMessageDelayed(102, adViewBangDan.f6302this);
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        AdViewBangDan adViewBangDan = this.f5187do;
        adViewBangDan.f6299else = true;
        if (i == 60001) {
            adViewBangDan.f6299else = false;
            SwlAdAdBangDan swlAdAdBangDan = new SwlAdAdBangDan(adViewBangDan.f6303try, new Cinterface(adViewBangDan));
            adViewBangDan.f6298const = swlAdAdBangDan;
            swlAdAdBangDan.loadAd(str);
            return;
        }
        if (adViewBangDan.f6300goto && adViewBangDan.getChildCount() == 0) {
            View view = new View(this.f5187do.f6303try);
            view.setMinimumHeight(1);
            AdViewBangDan.m3266if(this.f5187do, view);
        }
        v m2734do = v.m2734do();
        String str2 = this.f5187do.f6295case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: new */
    public void mo165new(View view) {
        v m2734do = v.m2734do();
        AdViewBangDan adViewBangDan = this.f5187do;
        String str = adViewBangDan.f6295case;
        if (m2734do != null) {
            AdViewBangDan.m3266if(adViewBangDan, view);
            return;
        }
        throw null;
    }

    @Override // com.apk.x60
    public void onAdClick() {
        v m2734do = v.m2734do();
        String str = this.f5187do.f6295case;
        if (m2734do == null) {
            throw null;
        }
    }
}
