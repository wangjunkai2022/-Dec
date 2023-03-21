package com.apk;

import android.view.View;

/* compiled from: CommonBaseAdapter.java */
/* loaded from: classes7.dex */
public class v80 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ r80 f5030do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ y80 f5031for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f5032if;

    public v80(y80 y80Var, r80 r80Var, int i) {
        this.f5031for = y80Var;
        this.f5030do = r80Var;
        this.f5032if = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        y80 y80Var = this.f5031for;
        s90<T> s90Var = y80Var.f5875throw;
        if (s90Var != 0) {
            s90Var.mo414do(this.f5030do, y80Var.f4308new.get(this.f5032if), this.f5032if);
        }
    }
}
