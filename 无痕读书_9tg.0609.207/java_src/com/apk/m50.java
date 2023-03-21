package com.apk;

import android.os.CountDownTimer;
import android.view.View;
/* compiled from: CsjProviderSplash.java */
/* loaded from: classes7.dex */
public class m50 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2980do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ l50 f2981for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ a70 f2982if;

    public m50(l50 l50Var, String str, a70 a70Var) {
        this.f2981for = l50Var;
        this.f2980do = str;
        this.f2982if = a70Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        CountDownTimer countDownTimer = this.f2981for.f2749case;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            l50 l50Var = this.f2981for;
            l50Var.f2749case = null;
            l50Var.m562native(this.f2980do, this.f2982if);
        }
    }
}
