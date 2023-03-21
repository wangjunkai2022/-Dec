package com.apk;

import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.zf0;
import com.apk.zg0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes8.dex */
public class zi implements uj<InputStream>, ag0 {

    /* renamed from: case  reason: not valid java name */
    public volatile zf0 f6201case;

    /* renamed from: do  reason: not valid java name */
    public final zf0.Cdo f6202do;

    /* renamed from: for  reason: not valid java name */
    public InputStream f6203for;

    /* renamed from: if  reason: not valid java name */
    public final rm f6204if;

    /* renamed from: new  reason: not valid java name */
    public dh0 f6205new;

    /* renamed from: try  reason: not valid java name */
    public uj.Cdo<? super InputStream> f6206try;

    public zi(zf0.Cdo cdo, rm rmVar) {
        this.f6202do = cdo;
        this.f6204if = rmVar;
    }

    @Override // com.apk.uj
    public void cancel() {
        zf0 zf0Var = this.f6201case;
        if (zf0Var != null) {
            zf0Var.cancel();
        }
    }

    @Override // com.apk.uj
    /* renamed from: case */
    public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super InputStream> cdo) {
        zg0.Cdo cdo2 = new zg0.Cdo();
        cdo2.m3203goto(this.f6204if.m2318try());
        for (Map.Entry<String, String> entry : this.f6204if.m2317new().entrySet()) {
            cdo2.m3200do(entry.getKey(), entry.getValue());
        }
        zg0 m3204if = cdo2.m3204if();
        this.f6206try = cdo;
        this.f6201case = ((xg0) this.f6202do).m2991do(m3204if);
        this.f6201case.mo3008try(this);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    @Override // com.apk.ag0
    /* renamed from: for */
    public void mo46for(@NonNull zf0 zf0Var, @NonNull ch0 ch0Var) {
        this.f6205new = ch0Var.f614goto;
        if (ch0Var.m338throw()) {
            dh0 dh0Var = this.f6205new;
            eg.m593else(dh0Var, "Argument must not be null");
            yr yrVar = new yr(this.f6205new.m456for(), dh0Var.mo457throw());
            this.f6203for = yrVar;
            this.f6206try.mo213new(yrVar);
            return;
        }
        this.f6206try.mo212for(new hj(ch0Var.f616new, ch0Var.f618try));
    }

    @Override // com.apk.uj
    /* renamed from: if */
    public void mo60if() {
        try {
            if (this.f6203for != null) {
                this.f6203for.close();
            }
        } catch (IOException unused) {
        }
        dh0 dh0Var = this.f6205new;
        if (dh0Var != null) {
            dh0Var.close();
        }
        this.f6206try = null;
    }

    @Override // com.apk.ag0
    /* renamed from: new */
    public void mo47new(@NonNull zf0 zf0Var, @NonNull IOException iOException) {
        this.f6206try.mo212for(iOException);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: try */
    public dj mo61try() {
        return dj.REMOTE;
    }
}
