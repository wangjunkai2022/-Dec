package com.apk;

import android.view.View;
/* compiled from: MultiBaseAdapter.java */
/* loaded from: classes7.dex */
public class z80 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ r80 f6148do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ int f6149for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f6150if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ b90 f6151new;

    public z80(b90 b90Var, r80 r80Var, int i, int i2) {
        this.f6151new = b90Var;
        this.f6148do = r80Var;
        this.f6150if = i;
        this.f6149for = i2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b90 b90Var = this.f6151new;
        da0<T> da0Var = b90Var.f273throw;
        if (da0Var != 0) {
            da0Var.m444do(this.f6148do, b90Var.f4308new.get(this.f6150if), this.f6150if, this.f6149for);
        }
    }
}
