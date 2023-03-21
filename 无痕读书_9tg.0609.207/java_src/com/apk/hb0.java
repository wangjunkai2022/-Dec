package com.apk;

import androidx.core.app.NotificationCompat;
import org.json.JSONObject;
/* compiled from: TrDanMuManager.java */
/* loaded from: classes7.dex */
public final class hb0 extends db0 {

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ q80 f1827for;

    public hb0(q80 q80Var) {
        this.f1827for = q80Var;
    }

    @Override // com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        q80 q80Var = this.f1827for;
        if (q80Var != null) {
            q80Var.failed(0, "请求失败");
        }
    }

    @Override // com.apk.db0, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                    if (jSONObject.optInt(NotificationCompat.CATEGORY_STATUS) == 1) {
                        q80 q80Var = this.f1827for;
                        if (q80Var != null) {
                            q80Var.success(jSONObject);
                        }
                    } else {
                        q80 q80Var2 = this.f1827for;
                        if (q80Var2 != null) {
                            q80Var2.failed(0, jSONObject.optString("data"));
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        q80 q80Var3 = this.f1827for;
        if (q80Var3 != null) {
            q80Var3.failed(0, "请求失败");
        }
    }
}
