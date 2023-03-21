package com.apk;

import android.widget.PopupWindow;

/* compiled from: TrFeedBackLayout.java */
/* loaded from: classes7.dex */
public class f90 implements s90<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ g90 f1262do;

    public f90(g90 g90Var) {
        this.f1262do = g90Var;
    }

    @Override // com.apk.s90
    /* renamed from: do */
    public void mo414do(r80 r80Var, String str, int i) {
        String str2 = str;
        g90 g90Var = this.f1262do;
        o80 o80Var = g90Var.f1535new;
        if (o80Var != null) {
            o80Var.mo1943if(g90Var.f1533for, str2);
        }
        PopupWindow popupWindow = this.f1262do.f1536try;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }
}
