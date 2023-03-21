package com.apk;

import android.widget.Toast;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.ui.activity.WelComeActivity;
import com.swl.gg.sdk.TrAdSdk;
import kimi.wuhends.ebooks.R;

/* compiled from: WelComeActivity.java */
/* loaded from: classes8.dex */
public class r8 implements y60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f4013do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f4014for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f4015if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ WelComeActivity f4016new;

    public r8(WelComeActivity welComeActivity, int i, int i2, String str) {
        this.f4016new = welComeActivity;
        this.f4013do = i;
        this.f4015if = i2;
        this.f4014for = str;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
        this.f4016new.j();
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.y60
    /* renamed from: do  reason: not valid java name */
    public void mo2249do() {
        this.f4016new.f6876else = true;
        if (v.m2734do() != null) {
            if (v.m2734do() != null) {
                try {
                    if (w0.m2892super() > 0) {
                        w0.m2871continue("SP_SAVE_SPLASH_AD_SHOW_MAX_KEY");
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            throw null;
        }
        throw null;
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
        this.f4016new.j();
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.y60
    /* renamed from: for  reason: not valid java name */
    public void mo2250for() {
        if (v.m2734do() != null) {
            if (TrAdSdk.isFullAdType(this.f4014for)) {
                int m3174instanceof = ze.m3174instanceof("SPLASH_TIPS_SHOW_MAX_KEY", -1);
                boolean z = true;
                if (m3174instanceof != -1) {
                    if (m3174instanceof <= 0 || ze.m3174instanceof("SPLASH_TIPS_SHOW_COUNT_KEY", 0) >= m3174instanceof) {
                        z = false;
                    } else {
                        tt.f4763do.putInt("SPLASH_TIPS_SHOW_COUNT_KEY", ze.m3174instanceof("SPLASH_TIPS_SHOW_COUNT_KEY", 0) + 1);
                    }
                }
                if (z) {
                    Toast.makeText(AppContext.f6392case, tt.m2620do("SPLASH_AD_VIDEO_TIPS_KEY", ze.q(R.string.splash_ad_fullvideo_skip_tips)), 0).show();
                }
            }
            v m2734do = v.m2734do();
            System.currentTimeMillis();
            long j = this.f4016new.f6878goto;
            if (m2734do == null) {
                throw null;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        if (v.m2734do() != null) {
            v m2734do = v.m2734do();
            System.currentTimeMillis();
            WelComeActivity welComeActivity = this.f4016new;
            long j = welComeActivity.f6878goto;
            if (m2734do != null) {
                welComeActivity.j();
                return;
            }
            throw null;
        }
        throw null;
    }

    @Override // com.apk.y60
    public void onAdClick() {
        this.f4016new.f6876else = false;
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.y60
    public void onAdDismiss() {
        if (v.m2734do() != null) {
            if (v.m2734do() != null) {
                WelComeActivity welComeActivity = this.f4016new;
                welComeActivity.f6876else = false;
                welComeActivity.j();
                return;
            }
            throw null;
        }
        throw null;
    }

    @Override // com.apk.y60
    public void onAdShow() {
        this.f4016new.f6876else = true;
        if (v.m2734do() != null) {
            if (v.m2734do() != null) {
                try {
                    if (w0.m2892super() > 0) {
                        w0.m2871continue("SP_SAVE_SPLASH_AD_SHOW_MAX_KEY");
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            throw null;
        }
        throw null;
    }

    @Override // com.apk.y60
    public void onZoomOut() {
        p0.m2011super("SPLASH_V_PLUS_ZOOMOUT_KEY", "");
    }
}
