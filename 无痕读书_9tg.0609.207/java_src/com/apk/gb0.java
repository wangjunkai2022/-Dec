package com.apk;
/* compiled from: TrDanMuManager.java */
/* loaded from: classes7.dex */
public class gb0 extends db0 {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ xb0 f1543case;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ jb0 f1544else;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f1545for;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f1546new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ String f1547try;

    public gb0(jb0 jb0Var, String str, String str2, String str3, xb0 xb0Var) {
        this.f1544else = jb0Var;
        this.f1545for = str;
        this.f1546new = str2;
        this.f1547try = str3;
        this.f1543case = xb0Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar == null || !iyVar.m1293for()) {
            return;
        }
        jb0.m1307if(this.f1544else, iyVar.f2262do, this.f1545for, this.f1546new, this.f1547try, this.f1543case);
    }

    @Override // com.apk.db0, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar == null || !iyVar.m1293for()) {
            return;
        }
        jb0.m1307if(this.f1544else, iyVar.f2262do, this.f1545for, this.f1546new, this.f1547try, this.f1543case);
    }
}
