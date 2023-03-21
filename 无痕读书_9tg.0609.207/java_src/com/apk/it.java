package com.apk;

import android.widget.PopupWindow;
import com.apk.lt;
import com.apk.nt;
/* compiled from: PopBase.java */
/* loaded from: classes8.dex */
public class it implements PopupWindow.OnDismissListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ lt f2231do;

    public it(lt ltVar) {
        this.f2231do = ltVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        nt.Cdo cdo;
        lt ltVar = this.f2231do;
        if (ltVar.f2904for) {
            ltVar.m1668do(1.0f);
        }
        lt.Cdo cdo2 = this.f2231do.f2907try;
        if (cdo2 == null || (cdo = ((nt) cdo2).f3310if) == null) {
            return;
        }
        cdo.onDismiss();
    }
}
