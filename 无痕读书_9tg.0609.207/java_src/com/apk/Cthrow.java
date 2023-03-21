package com.apk;

import android.view.View;
import com.swl.gg.bean.SwlAdView;
import com.swl.gg.ggs.SwlAdHelper;
/* compiled from: AdBlockNativeHelper.java */
/* renamed from: com.apk.throw  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cthrow implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SwlAdView f4705do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Cfinal f4706if;

    public Cthrow(Cfinal cfinal, SwlAdView swlAdView) {
        this.f4706if = cfinal;
        this.f4705do = swlAdView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SwlAdHelper.clickAd(this.f4706if.f1315else, this.f4705do);
    }
}
