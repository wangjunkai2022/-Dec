package com.apk;

import org.json.JSONObject;
/* compiled from: TrRequestManager.java */
/* loaded from: classes7.dex */
public final class ka0 extends ma0 {

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ q80 f2497for;

    public ka0(q80 q80Var) {
        this.f2497for = q80Var;
    }

    @Override // com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        try {
            q80 q80Var = this.f2497for;
            if (q80Var != null) {
                q80Var.failed(iyVar.m1292do(), iyVar.m1294new());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.ma0, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    q80 q80Var = this.f2497for;
                    if (q80Var != null) {
                        q80Var.success(new JSONObject(iyVar.f2262do));
                    }
                } else {
                    q80 q80Var2 = this.f2497for;
                    if (q80Var2 != null) {
                        q80Var2.failed(iyVar.m1292do(), iyVar.m1294new());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
