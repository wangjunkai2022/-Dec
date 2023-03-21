package com.apk;

import android.view.View;
import com.apk.Cstrictfp;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.swl.gg.ggs.SwlAdAdRectangle;
/* compiled from: AdViewRectangle.java */
/* renamed from: com.apk.implements  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cimplements implements x60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ AdViewRectangle f2165do;

    public Cimplements(AdViewRectangle adViewRectangle) {
        this.f2165do = adViewRectangle;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
        this.f2165do.f6321else = true;
        v m2734do = v.m2734do();
        String str = this.f2165do.f6317case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: do */
    public void mo164do() {
        v m2734do = v.m2734do();
        AdViewRectangle adViewRectangle = this.f2165do;
        String str = adViewRectangle.f6317case;
        if (m2734do != null) {
            adViewRectangle.f6321else = true;
            return;
        }
        throw null;
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
        v m2734do = v.m2734do();
        String str = this.f2165do.f6317case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: goto */
    public void mo1184goto() {
        v m2734do = v.m2734do();
        String str = this.f2165do.f6317case;
        if (m2734do != null) {
            if (ze.m3179private("SP_AD_CLOSE_MODEL_LONG_KEY", false)) {
                this.f2165do.m3275new();
                return;
            }
            this.f2165do.removeAllViews();
            Cstrictfp.Cdo cdo = this.f2165do.f6324new;
            if (cdo != null) {
                cdo.removeMessages(102);
                AdViewRectangle adViewRectangle = this.f2165do;
                adViewRectangle.f6324new.sendEmptyMessageDelayed(102, adViewRectangle.f6323goto);
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        AdViewRectangle adViewRectangle = this.f2165do;
        adViewRectangle.f6321else = true;
        if (i == 60001) {
            adViewRectangle.f6321else = false;
            SwlAdAdRectangle swlAdAdRectangle = new SwlAdAdRectangle(adViewRectangle.f6327try, new Cinstanceof(adViewRectangle));
            adViewRectangle.f6322final = swlAdAdRectangle;
            swlAdAdRectangle.loadAd(str);
        }
        v m2734do = v.m2734do();
        String str2 = this.f2165do.f6317case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: new */
    public void mo165new(View view) {
        v m2734do = v.m2734do();
        AdViewRectangle adViewRectangle = this.f2165do;
        String str = adViewRectangle.f6317case;
        if (m2734do == null) {
            throw null;
        }
        if (view != null) {
            AdViewRectangle.m3273if(adViewRectangle, view);
        }
    }

    @Override // com.apk.x60
    public void onAdClick() {
        v m2734do = v.m2734do();
        String str = this.f2165do.f6317case;
        if (m2734do == null) {
            throw null;
        }
    }
}
