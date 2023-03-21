package com.apk;

import androidx.annotation.NonNull;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
/* compiled from: OaidHelper.java */
/* loaded from: classes8.dex */
public class ut implements IIdentifierListener {

    /* renamed from: do  reason: not valid java name */
    public final Cdo f4967do;

    /* compiled from: OaidHelper.java */
    /* renamed from: com.apk.ut$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: do */
        void mo1048do(@NonNull String str);
    }

    public ut(Cdo cdo) {
        this.f4967do = cdo;
    }

    @Override // com.bun.miitmdid.interfaces.IIdentifierListener
    public void OnSupport(boolean z, IdSupplier idSupplier) {
        if (idSupplier == null) {
            return;
        }
        String oaid = idSupplier.getOAID();
        Cdo cdo = this.f4967do;
        if (cdo != null) {
            cdo.mo1048do(oaid);
        }
    }
}
