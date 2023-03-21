package com.apk;

import android.view.View;
import com.apk.Cstrictfp;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.swl.gg.ggs.SwlAdAdBanner;
/* compiled from: AdViewBanner.java */
/* renamed from: com.apk.protected  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cprotected implements x60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ AdViewBanner f3737do;

    public Cprotected(AdViewBanner adViewBanner) {
        this.f3737do = adViewBanner;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
        this.f3737do.f6310else = true;
        v m2734do = v.m2734do();
        String str = this.f3737do.f6306case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: do */
    public void mo164do() {
        this.f3737do.f6310else = true;
        v m2734do = v.m2734do();
        String str = this.f3737do.f6306case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
        v m2734do = v.m2734do();
        String str = this.f3737do.f6306case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: goto */
    public void mo1184goto() {
        v m2734do = v.m2734do();
        String str = this.f3737do.f6306case;
        if (m2734do != null) {
            if (ze.m3179private("SP_AD_CLOSE_MODEL_LONG_KEY", false)) {
                this.f3737do.m3272new();
                return;
            }
            if (this.f3737do.getChildCount() > 0) {
                this.f3737do.removeAllViews();
            }
            Cstrictfp.Cdo cdo = this.f3737do.f6313new;
            if (cdo != null) {
                cdo.removeMessages(102);
                AdViewBanner adViewBanner = this.f3737do;
                adViewBanner.f6313new.sendEmptyMessageDelayed(102, adViewBanner.f6312goto);
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        AdViewBanner adViewBanner = this.f3737do;
        adViewBanner.f6310else = true;
        if (i == 60001) {
            adViewBanner.f6310else = false;
            if (adViewBanner != null) {
                try {
                    SwlAdAdBanner swlAdAdBanner = new SwlAdAdBanner(adViewBanner.f6315try, new Ctransient(adViewBanner), adViewBanner.f6306case);
                    adViewBanner.f6309const = swlAdAdBanner;
                    swlAdAdBanner.loadAd(str);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                throw null;
            }
        }
        v m2734do = v.m2734do();
        String str2 = this.f3737do.f6306case;
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.x60
    /* renamed from: new */
    public void mo165new(View view) {
        v m2734do = v.m2734do();
        AdViewBanner adViewBanner = this.f3737do;
        String str = adViewBanner.f6306case;
        if (m2734do != null) {
            AdViewBanner.m3270if(adViewBanner, view);
            return;
        }
        throw null;
    }

    @Override // com.apk.x60
    public void onAdClick() {
        v m2734do = v.m2734do();
        String str = this.f3737do.f6306case;
        if (m2734do == null) {
            throw null;
        }
    }
}
