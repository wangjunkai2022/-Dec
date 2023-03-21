package com.apk;

import android.view.View;
import com.swl.gg.bean.SwlAdView;
import com.swl.gg.ggs.SwlAdHelper;

/* compiled from: AdBlockNativeHelper.java */
/* renamed from: com.apk.while  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cwhile implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SwlAdView f5293do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Cfinal f5294if;

    public Cwhile(Cfinal cfinal, SwlAdView swlAdView) {
        this.f5294if = cfinal;
        this.f5293do = swlAdView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SwlAdHelper.clickAd(this.f5294if.f1315else, this.f5293do);
    }
}
