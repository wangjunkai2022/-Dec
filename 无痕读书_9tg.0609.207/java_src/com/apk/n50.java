package com.apk;

import android.os.CountDownTimer;
import android.widget.TextView;
/* compiled from: CsjProviderSplash.java */
/* loaded from: classes7.dex */
public class n50 extends CountDownTimer {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ o50 f3185do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ a70 f3186for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f3187if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ l50 f3188new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n50(l50 l50Var, long j, long j2, o50 o50Var, String str, a70 a70Var) {
        super(j, j2);
        this.f3188new = l50Var;
        this.f3185do = o50Var;
        this.f3187if = str;
        this.f3186for = a70Var;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        l50 l50Var = this.f3188new;
        if (l50Var.f1242for) {
            return;
        }
        l50Var.m562native(this.f3187if, this.f3186for);
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        TextView textView = this.f3185do.f3361do;
        textView.setText(((int) (((float) j) / 1000.0f)) + "");
    }
}
