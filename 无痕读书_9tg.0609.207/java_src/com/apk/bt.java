package com.apk;
/* compiled from: DialogUtils.java */
/* loaded from: classes8.dex */
public final class bt implements sv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ zs f463do;

    public bt(zs zsVar) {
        this.f463do = zsVar;
    }

    @Override // com.apk.sv
    public void onCancel() {
        dt dtVar = this.f463do.f6244else;
        if (dtVar != null) {
            dtVar.onClick();
        }
    }
}
