package com.apk;

import android.app.Activity;
import com.swl.gg.ggs.SwlAdAdInsert;
/* compiled from: AdInsertHelper.java */
/* renamed from: com.apk.default  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cdefault implements w60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Activity f854do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Cswitch f855if;

    public Cdefault(Cswitch cswitch, Activity activity) {
        this.f855if = cswitch;
        this.f854do = activity;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
    }

    @Override // com.apk.w60
    /* renamed from: do  reason: not valid java name */
    public void mo448do() {
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
    }

    @Override // com.apk.w60
    /* renamed from: for  reason: not valid java name */
    public void mo449for() {
        Cswitch cswitch = this.f855if;
        if (cswitch.f4608if) {
            cswitch.f4604case = true;
            return;
        }
        d60 d60Var = cswitch.f4610try;
        if (d60Var != null) {
            d60Var.m410else(this.f854do);
        }
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        d60 d60Var = this.f855if.f4610try;
        if (d60Var != null) {
            d60Var.m409case();
            this.f855if.f4610try = null;
        }
        if (i == 60001) {
            Cswitch cswitch = this.f855if;
            Activity activity = this.f854do;
            if (cswitch != null) {
                SwlAdAdInsert swlAdAdInsert = new SwlAdAdInsert(activity, new Cextends(cswitch));
                cswitch.f4606else = swlAdAdInsert;
                swlAdAdInsert.loadAd(str);
                return;
            }
            throw null;
        }
    }

    @Override // com.apk.w60
    public void onAdClick() {
    }

    @Override // com.apk.w60
    public void onAdClosed() {
        d60 d60Var = this.f855if.f4610try;
        if (d60Var != null) {
            d60Var.m409case();
            this.f855if.f4610try = null;
        }
    }
}
