package com.apk;

import android.content.SharedPreferences;
import com.tr.comment.sdk.commons.widget.TrUserFaceLayout;

/* compiled from: TrUserFaceLayout.java */
/* loaded from: classes7.dex */
public class o90 implements s90<ga0> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrUserFaceLayout.Cdo f3382do;

    public o90(TrUserFaceLayout.Cdo cdo) {
        this.f3382do = cdo;
    }

    @Override // com.apk.s90
    /* renamed from: do */
    public void mo414do(r80 r80Var, ga0 ga0Var, int i) {
        ga0 ga0Var2 = ga0Var;
        TrUserFaceLayout.Cdo cdo = this.f3382do;
        cdo.f10402public = ga0Var2.m955do();
        cdo.notifyDataSetChanged();
        nb0 m2408do = sb0.m2408do();
        String m955do = ga0Var2.m955do();
        mb0 mb0Var = (mb0) m2408do;
        SharedPreferences.Editor editor = mb0Var.f3001if;
        if (editor != null) {
            editor.putString("SP_USERFACE_TAG_KEY", m955do);
        }
        mb0Var.m1689do();
    }
}
