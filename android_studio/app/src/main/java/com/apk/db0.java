package com.apk;

import android.text.TextUtils;

/* compiled from: TrDanMuStringCallback.java */
/* loaded from: classes7.dex */
public class db0 extends mx<String> {

    /* renamed from: do  reason: not valid java name */
    public final ox f844do = new ox();

    /* renamed from: if  reason: not valid java name */
    public String f845if;

    @Override // com.apk.nx
    public Object convertResponse(ch0 ch0Var) {
        String convertResponse = this.f844do.convertResponse(ch0Var);
        ch0Var.close();
        return convertResponse;
    }

    @Override // com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f845if = qyVar.f3961do;
        if (TextUtils.isEmpty(jb0.m1306for())) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Bearer ");
        m1016super.append(jb0.m1306for());
        qyVar.f3956break.m897for("Authorization", m1016super.toString());
    }

    @Override // com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        if (iyVar == null || iyVar.m1292do() != 401 || fa0.m767new(fa0.m761final()).equals(this.f845if)) {
            return;
        }
        new bb0().m166do(new ib0());
    }
}
