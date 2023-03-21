package com.apk;

import android.app.Activity;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrFullVideoAd.java */
/* loaded from: classes7.dex */
public class c60 extends p70 {

    /* renamed from: for  reason: not valid java name */
    public final v60 f515for;

    /* renamed from: if  reason: not valid java name */
    public final Activity f516if;

    /* renamed from: new  reason: not valid java name */
    public p50 f517new;

    /* renamed from: try  reason: not valid java name */
    public final v60 f518try = new Cdo();

    /* compiled from: TrFullVideoAd.java */
    /* renamed from: com.apk.c60$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements v60 {
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
            v60 v60Var = c60.this.f515for;
            if (v60Var != null) {
                v60Var.mo159if(i, str);
            }
        }

        @Override // com.apk.v60
        public void onAdClick() {
            v60 v60Var = c60.this.f515for;
            if (v60Var != null) {
                v60Var.onAdClick();
            }
        }

        @Override // com.apk.v60
        public void onAdClose() {
            v60 v60Var = c60.this.f515for;
            if (v60Var != null) {
                v60Var.onAdClose();
            }
        }

        @Override // com.apk.v60
        public void onAdLoaded() {
            v60 v60Var = c60.this.f515for;
            if (v60Var != null) {
                v60Var.onAdLoaded();
            }
        }

        @Override // com.apk.v60
        public void onAdShow() {
            v60 v60Var = c60.this.f515for;
            if (v60Var != null) {
                v60Var.onAdShow();
            }
        }

        @Override // com.apk.v60
        public void onVideoCached() {
            v60 v60Var = c60.this.f515for;
            if (v60Var != null) {
                v60Var.onVideoCached();
            }
        }
    }

    public c60(Activity activity, v60 v60Var, String str) {
        this.f516if = activity;
        this.f515for = v60Var;
        this.f3593do = str;
    }

    /* renamed from: case  reason: not valid java name */
    public void m311case(String str, String str2, int i, int i2) {
        if (TrAdSdk.getApp() == null) {
            m2025if(this.f515for);
        } else if (!k40.m1446extends()) {
            m2024for(this.f515for);
        } else if (this.f516if == null) {
            m2023do(this.f515for);
        } else if (m2026new(i, i2, this.f515for)) {
        } else {
            p50 p50Var = new p50();
            this.f517new = p50Var;
            p50Var.m2021else(this.f516if, str, str2, this.f518try);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m312else() {
        p50 p50Var = this.f517new;
        if (p50Var != null) {
            p50Var.m2020case();
            this.f517new = null;
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public boolean m313goto(Activity activity) {
        p50 p50Var = this.f517new;
        if (p50Var != null) {
            if (activity == null || activity.isFinishing()) {
                activity = this.f516if;
            }
            return p50Var.m2022goto(activity);
        }
        return false;
    }

    /* renamed from: try  reason: not valid java name */
    public void m314try() {
        c50 m2110if = q70.m2109do().m2110if(this.f3593do);
        if (m2110if != null) {
            m311case(m2110if.m310if(), m2110if.m309do(), m2110if.f511for, m2110if.f513new);
        }
    }
}
