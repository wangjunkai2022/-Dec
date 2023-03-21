package com.apk;

import android.view.View;
/* compiled from: CommonBaseAdapter.java */
/* loaded from: classes7.dex */
public class x80 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f5490do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ int f5491for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ r80 f5492if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ y80 f5493new;

    public x80(y80 y80Var, int i, r80 r80Var, int i2) {
        this.f5493new = y80Var;
        this.f5490do = i;
        this.f5492if = r80Var;
        this.f5491for = i2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ((r90) this.f5493new.f5874native.get(this.f5490do)).mo2255do(this.f5492if, view, this.f5493new.f4308new.get(this.f5491for), this.f5491for);
    }
}
