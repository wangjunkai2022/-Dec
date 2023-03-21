package com.apk;

import android.view.View;

/* compiled from: CommonBaseAdapter.java */
/* loaded from: classes7.dex */
public class w80 implements View.OnLongClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ r80 f5242do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ y80 f5243for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f5244if;

    public w80(y80 y80Var, r80 r80Var, int i) {
        this.f5243for = y80Var;
        this.f5242do = r80Var;
        this.f5244if = i;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        y80 y80Var = this.f5243for;
        t90<T> t90Var = y80Var.f5876while;
        if (t90Var != 0) {
            t90Var.m2585do(this.f5242do, y80Var.f4308new.get(this.f5244if), this.f5244if);
            return true;
        }
        return true;
    }
}
