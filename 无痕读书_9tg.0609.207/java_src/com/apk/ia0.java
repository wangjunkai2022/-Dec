package com.apk;

import android.text.TextUtils;
import org.json.JSONObject;
/* compiled from: TrRequestManager.java */
/* loaded from: classes7.dex */
public final class ia0 extends ma0 {

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ q80 f2068for;

    public ia0(q80 q80Var) {
        this.f2068for = q80Var;
    }

    @Override // com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        try {
            fa0.m769return();
            iyVar.m1292do();
            iyVar.m1294new();
            q80 q80Var = this.f2068for;
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
                    JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                    String optString = jSONObject.optString("Info");
                    JSONObject optJSONObject = jSONObject.optJSONObject("Data");
                    if (optJSONObject != null) {
                        if (optJSONObject.optInt("Result") == 1) {
                            q80 q80Var = this.f2068for;
                            if (q80Var != null) {
                                q80Var.success(jSONObject);
                            }
                        } else {
                            q80 q80Var2 = this.f2068for;
                            if (q80Var2 != null) {
                                if (TextUtils.isEmpty(optString)) {
                                    optString = "failed";
                                }
                                q80Var2.failed(0, optString);
                            }
                        }
                    }
                    fa0.m769return();
                    jSONObject.toString();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
