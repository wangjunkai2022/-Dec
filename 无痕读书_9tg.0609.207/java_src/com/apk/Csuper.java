package com.apk;

import android.view.View;
import com.swl.gg.bean.SwlAdView;
import com.swl.gg.ggs.SwlAdHelper;
/* compiled from: AdBlockNativeHelper.java */
/* renamed from: com.apk.super  reason: invalid class name */
/* loaded from: classes8.dex */
public class Csuper implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SwlAdView f4598do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Cfinal f4599if;

    public Csuper(Cfinal cfinal, SwlAdView swlAdView) {
        this.f4599if = cfinal;
        this.f4598do = swlAdView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SwlAdHelper.clickAd(this.f4599if.f1315else, this.f4598do);
    }
}
