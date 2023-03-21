package com.apk;

import android.content.SharedPreferences;
/* compiled from: TrDanMuManager.java */
/* loaded from: classes7.dex */
public final class ib0 extends ab0<Object> {
    @Override // com.apk.ab0
    /* renamed from: do */
    public Object mo39do() {
        mb0 mb0Var = (mb0) sb0.m2408do();
        SharedPreferences.Editor editor = mb0Var.f3001if;
        if (editor != null) {
            editor.remove("SP_DANMU_SDK_REQUEST_TOKEN_KEY");
        }
        mb0Var.m1689do();
        jb0.m1308new();
        return null;
    }
}
