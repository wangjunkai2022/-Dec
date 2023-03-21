package com.apk;

import java.util.ArrayList;
/* compiled from: Unzip.java */
/* loaded from: classes7.dex */
public class qf0 extends Thread {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ArrayList f3844do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ pf0 f3845for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ kf0 f3846if = null;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f3847new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ rf0 f3848try;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qf0(rf0 rf0Var, String str, ArrayList arrayList, pf0 pf0Var, String str2) {
        super(str);
        this.f3848try = rf0Var;
        this.f3844do = arrayList;
        this.f3845for = pf0Var;
        this.f3847new = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f3848try.m2262if(this.f3844do, null, this.f3845for, this.f3847new);
            this.f3845for.m2033do();
        } catch (af0 unused) {
        }
    }
}
