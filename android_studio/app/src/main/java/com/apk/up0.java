package com.apk;

import android.database.ContentObserver;

/* compiled from: IdentifierIdObserver.java */
/* loaded from: classes7.dex */
public class up0 extends ContentObserver {

    /* renamed from: do  reason: not valid java name */
    public String f4954do;

    /* renamed from: for  reason: not valid java name */
    public tp0 f4955for;

    /* renamed from: if  reason: not valid java name */
    public int f4956if;

    public up0(tp0 tp0Var, int i, String str) {
        super(null);
        this.f4955for = tp0Var;
        this.f4956if = i;
        this.f4954do = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        tp0 tp0Var = this.f4955for;
        if (tp0Var != null) {
            tp0Var.m2612if(this.f4956if, this.f4954do);
        }
    }
}
