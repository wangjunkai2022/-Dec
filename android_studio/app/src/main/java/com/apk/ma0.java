package com.apk;

import android.text.TextUtils;
import com.tr.comment.sdk.TrCommentSdk;

/* compiled from: TrStringCallback.java */
/* loaded from: classes7.dex */
public class ma0 extends mx<String> {

    /* renamed from: do  reason: not valid java name */
    public final ox f2996do = new ox();

    /* renamed from: if  reason: not valid java name */
    public String f2997if;

    @Override // com.apk.nx
    public Object convertResponse(ch0 ch0Var) {
        String convertResponse = this.f2996do.convertResponse(ch0Var);
        ch0Var.close();
        return convertResponse;
    }

    @Override // com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2997if = qyVar.f3961do;
        if (TextUtils.isEmpty(fa0.m770static())) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Bearer ");
        m1016super.append(fa0.m770static());
        qyVar.f3956break.m897for("Authorization", m1016super.toString());
    }

    @Override // com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        if (iyVar == null || iyVar.m1292do() != 401 || fa0.m765import().equals(this.f2997if)) {
            return;
        }
        TrCommentSdk.resetToken();
    }
}
