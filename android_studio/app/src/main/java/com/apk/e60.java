package com.apk;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import com.apk.n60;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAd;
import com.qq.e.ads.splash.SplashAD;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: TrOpenAd.java */
/* loaded from: classes7.dex */
public class e60 extends p70 {

    /* renamed from: else  reason: not valid java name */
    public m60 f1012else;

    /* renamed from: for  reason: not valid java name */
    public final y60 f1013for;

    /* renamed from: if  reason: not valid java name */
    public final Activity f1015if;

    /* renamed from: new  reason: not valid java name */
    public ViewGroup f1016new;

    /* renamed from: this  reason: not valid java name */
    public p50 f1017this;

    /* renamed from: try  reason: not valid java name */
    public n60 f1018try;

    /* renamed from: case  reason: not valid java name */
    public final a70 f1011case = new Cdo();

    /* renamed from: goto  reason: not valid java name */
    public final z60 f1014goto = new Cif();

    /* renamed from: break  reason: not valid java name */
    public final v60 f1010break = new Cfor();

    /* compiled from: TrOpenAd.java */
    /* renamed from: com.apk.e60$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements a70 {
        public Cdo() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.mo159if(i, str);
            }
        }
    }

    /* compiled from: TrOpenAd.java */
    /* renamed from: com.apk.e60$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cfor implements v60 {
        public Cfor() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.mo159if(i, str);
            }
        }

        @Override // com.apk.v60
        public void onAdClick() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.onAdClick();
            }
        }

        @Override // com.apk.v60
        public void onAdClose() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.onAdDismiss();
            }
        }

        @Override // com.apk.v60
        public void onAdLoaded() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.mo2250for();
            }
            e60 e60Var = e60.this;
            p50 p50Var = e60Var.f1017this;
            if (p50Var != null) {
                p50Var.m2022goto(e60Var.f1015if);
            }
        }

        @Override // com.apk.v60
        public void onAdShow() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.onAdShow();
            }
        }

        @Override // com.apk.v60
        public void onVideoCached() {
        }
    }

    /* compiled from: TrOpenAd.java */
    /* renamed from: com.apk.e60$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements z60 {
        public Cif() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.z60
        /* renamed from: do */
        public void mo524do() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.mo2249do();
            }
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.mo159if(i, str);
            }
        }

        @Override // com.apk.z60
        public void onAdClick() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.onAdClick();
            }
        }

        @Override // com.apk.z60
        public void onAdClose() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.onAdDismiss();
            }
        }

        @Override // com.apk.z60
        public void onAdLoaded() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.mo2250for();
            }
            e60 e60Var = e60.this;
            m60 m60Var = e60Var.f1012else;
            if (m60Var != null) {
                m60Var.m1688else(e60Var.f1015if);
            }
        }

        @Override // com.apk.z60
        public void onAdShow() {
            y60 y60Var = e60.this.f1013for;
            if (y60Var != null) {
                y60Var.onAdShow();
            }
        }

        @Override // com.apk.z60
        public void onVideoCached() {
        }

        @Override // com.apk.z60
        /* renamed from: try */
        public void mo525try() {
        }
    }

    public e60(Activity activity, ViewGroup viewGroup, y60 y60Var, String str) {
        this.f1015if = activity;
        this.f1016new = viewGroup;
        this.f1013for = y60Var;
        this.f3593do = str;
    }

    /* renamed from: case  reason: not valid java name */
    public void m539case() {
        n60 n60Var = this.f1018try;
        if (n60Var != null) {
            if (n60Var.f3190do != null) {
                n60Var.f3190do = null;
            }
            if (n60Var.f3192if != null) {
                n60Var.f3192if = null;
            }
            z40 z40Var = n60Var.f3191for;
            if (z40Var != null) {
                GMMediationAdSdk.unregisterConfigCallback(z40Var.f6127const);
                GMSplashAd gMSplashAd = z40Var.f6123break;
                if (gMSplashAd != null) {
                    gMSplashAd.destroy();
                    z40Var.f6123break = null;
                }
                n60Var.f3191for = null;
            }
            this.f1018try = null;
        }
        p50 p50Var = this.f1017this;
        if (p50Var != null) {
            p50Var.m2020case();
            this.f1017this = null;
        }
        m60 m60Var = this.f1012else;
        if (m60Var != null) {
            if (m60Var.f2984do != null) {
                m60Var.f2984do = null;
            }
            if (m60Var.f2986if != null) {
                m60Var.f2986if = null;
            }
            if (m60Var.f2985for != null) {
                m60Var.f2985for = null;
            }
            this.f1012else = null;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m540else(ViewGroup viewGroup) {
        GMSplashAd gMSplashAd;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (viewGroup != null) {
            this.f1016new = viewGroup;
        }
        n60 n60Var = this.f1018try;
        if (n60Var != null) {
            o70 o70Var = n60Var.f3190do;
            if (o70Var != null) {
                if (SystemClock.elapsedRealtime() >= o70Var.f3370break) {
                    return;
                }
                if (viewGroup != null) {
                    o70Var.f3373goto = viewGroup;
                }
                SplashAD splashAD = o70Var.f3375try;
                if (splashAD == null || (viewGroup3 = o70Var.f3373goto) == null) {
                    return;
                }
                splashAD.showAd(viewGroup3);
                return;
            }
            l50 l50Var = n60Var.f3192if;
            if (l50Var != null) {
                if (viewGroup != null) {
                    l50Var.f2751try = viewGroup;
                }
                ViewGroup viewGroup4 = l50Var.f2751try;
                if (viewGroup4 == null || l50Var.f2750else == null) {
                    return;
                }
                viewGroup4.removeAllViews();
                l50Var.f2751try.addView(l50Var.f2750else);
                return;
            }
            z40 z40Var = n60Var.f3191for;
            if (z40Var != null) {
                if (viewGroup != null) {
                    z40Var.f6129goto = viewGroup;
                }
                if (z40Var.f6126class && (gMSplashAd = z40Var.f6123break) != null && (viewGroup2 = z40Var.f6129goto) != null) {
                    gMSplashAd.showAd(viewGroup2);
                } else {
                    z40Var.m578try(-1, "预加载展示失败", z40Var.f6124case, z40Var.f6130this);
                }
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m541try(String str, String str2, int i, int i2, boolean z) {
        if (TrAdSdk.getApp() == null) {
            m2025if(this.f1013for);
        } else if (!k40.m1446extends()) {
            m2024for(this.f1013for);
        } else if (this.f1015if != null && (z || this.f1016new != null)) {
            if (m2026new(i, i2, this.f1013for)) {
                return;
            }
            if (TrAdSdk.isSplashAdType(str)) {
                n60 n60Var = new n60();
                this.f1018try = n60Var;
                Activity activity = this.f1015if;
                ViewGroup viewGroup = this.f1016new;
                a70 a70Var = this.f1011case;
                if (n60.Cdo.f3194for == 0 || n60.Cdo.f3196new == 0) {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
                    if (n60.Cdo.f3194for == 0) {
                        n60.Cdo.f3194for = displayMetrics.widthPixels;
                    }
                    if (n60.Cdo.f3196new == 0) {
                        n60.Cdo.f3196new = displayMetrics.heightPixels;
                    }
                }
                if (k40.m1456private(str)) {
                    if (n60Var.m2583new(a70Var)) {
                        o70 o70Var = new o70();
                        n60Var.f3190do = o70Var;
                        if (z) {
                            o70Var.j(activity, str, str2, null, a70Var, true);
                        } else {
                            o70Var.j(activity, str, str2, viewGroup, a70Var, false);
                        }
                    }
                } else if ("csj".equals(str)) {
                    if (n60Var.m2581for(a70Var)) {
                        l50 l50Var = new l50();
                        n60Var.f3192if = l50Var;
                        if (z) {
                            l50Var.j(activity, str, str2, null, a70Var, true);
                        } else {
                            l50Var.j(activity, str, str2, viewGroup, a70Var, false);
                        }
                    }
                } else if ("gm".equals(str)) {
                    if (n60Var.m2584try(a70Var)) {
                        z40 z40Var = new z40();
                        n60Var.f3191for = z40Var;
                        if (z) {
                            z40Var.j(activity, str, str2, null, a70Var, true);
                        } else {
                            z40Var.j(activity, str, str2, viewGroup, a70Var, false);
                        }
                    }
                } else if ("swl".equals(str)) {
                    n60Var.m2582if(str2, a70Var);
                } else {
                    n60Var.m2580do(a70Var);
                }
            } else if (TrAdSdk.isFullAdType(str)) {
                p50 p50Var = new p50();
                this.f1017this = p50Var;
                p50Var.m2021else(this.f1015if, str, str2, this.f1010break);
            } else if (TrAdSdk.isRewardAdType(str)) {
                m60 m60Var = new m60();
                this.f1012else = m60Var;
                m60Var.m1687case(this.f1015if, str, str2, this.f1014goto);
            } else {
                y60 y60Var = this.f1013for;
                if (y60Var != null) {
                    y60Var.mo159if(83001, "没有找到匹配的adType");
                }
                k40.m1463this("没有找到匹配的adType");
            }
        } else {
            m2023do(this.f1013for);
        }
    }
}
