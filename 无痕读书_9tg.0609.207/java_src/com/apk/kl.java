package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.qk;
import com.apk.uj;
import com.apk.ym;
/* compiled from: SourceGenerator.java */
/* loaded from: classes8.dex */
public class kl implements uj.Cdo<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ym.Cdo f2585do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ll f2586if;

    public kl(ll llVar, ym.Cdo cdo) {
        this.f2586if = llVar;
        this.f2585do = cdo;
    }

    @Override // com.apk.uj.Cdo
    /* renamed from: for */
    public void mo212for(@NonNull Exception exc) {
        ll llVar = this.f2586if;
        ym.Cdo<?> cdo = this.f2585do;
        ym.Cdo<?> cdo2 = llVar.f2827case;
        if (cdo2 != null && cdo2 == cdo) {
            ll llVar2 = this.f2586if;
            ym.Cdo cdo3 = this.f2585do;
            qk.Cdo cdo4 = llVar2.f2831if;
            kj kjVar = llVar2.f2829else;
            uj<Data> ujVar = cdo3.f6004for;
            cdo4.mo1643do(kjVar, exc, ujVar, ujVar.mo61try());
        }
    }

    @Override // com.apk.uj.Cdo
    /* renamed from: new */
    public void mo213new(@Nullable Object obj) {
        ll llVar = this.f2586if;
        ym.Cdo<?> cdo = this.f2585do;
        ym.Cdo<?> cdo2 = llVar.f2827case;
        if (cdo2 != null && cdo2 == cdo) {
            ll llVar2 = this.f2586if;
            ym.Cdo cdo3 = this.f2585do;
            uk ukVar = llVar2.f2828do.f4104throw;
            if (obj != null && ukVar.mo2711for(cdo3.f6004for.mo61try())) {
                llVar2.f2833try = obj;
                llVar2.f2831if.mo1644for();
                return;
            }
            qk.Cdo cdo4 = llVar2.f2831if;
            kj kjVar = cdo3.f6003do;
            uj<Data> ujVar = cdo3.f6004for;
            cdo4.mo1645new(kjVar, obj, ujVar, ujVar.mo61try(), llVar2.f2829else);
        }
    }
}
