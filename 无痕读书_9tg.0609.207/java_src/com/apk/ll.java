package com.apk;

import android.util.Log;
import com.apk.qk;
import com.apk.ym;
import java.util.Collections;
import java.util.List;
/* compiled from: SourceGenerator.java */
/* loaded from: classes8.dex */
public class ll implements qk, qk.Cdo {

    /* renamed from: case  reason: not valid java name */
    public volatile ym.Cdo<?> f2827case;

    /* renamed from: do  reason: not valid java name */
    public final rk<?> f2828do;

    /* renamed from: else  reason: not valid java name */
    public ok f2829else;

    /* renamed from: for  reason: not valid java name */
    public int f2830for;

    /* renamed from: if  reason: not valid java name */
    public final qk.Cdo f2831if;

    /* renamed from: new  reason: not valid java name */
    public nk f2832new;

    /* renamed from: try  reason: not valid java name */
    public Object f2833try;

    public ll(rk<?> rkVar, qk.Cdo cdo) {
        this.f2828do = rkVar;
        this.f2831if = cdo;
    }

    @Override // com.apk.qk
    public void cancel() {
        ym.Cdo<?> cdo = this.f2827case;
        if (cdo != null) {
            cdo.f6004for.cancel();
        }
    }

    @Override // com.apk.qk.Cdo
    /* renamed from: do  reason: not valid java name */
    public void mo1643do(kj kjVar, Exception exc, uj<?> ujVar, dj djVar) {
        this.f2831if.mo1643do(kjVar, exc, ujVar, this.f2827case.f6004for.mo61try());
    }

    @Override // com.apk.qk.Cdo
    /* renamed from: for  reason: not valid java name */
    public void mo1644for() {
        throw new UnsupportedOperationException();
    }

    @Override // com.apk.qk
    /* renamed from: if */
    public boolean mo1138if() {
        Object obj = this.f2833try;
        if (obj != null) {
            this.f2833try = null;
            long m396if = cs.m396if();
            try {
                gj<X> m2286try = this.f2828do.m2286try(obj);
                pk pkVar = new pk(m2286try, obj, this.f2828do.f4103this);
                this.f2829else = new ok(this.f2827case.f6003do, this.f2828do.f4096final);
                this.f2828do.m2284if().mo73do(this.f2829else, pkVar);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    String str = "Finished encoding source to cache, key: " + this.f2829else + ", data: " + obj + ", encoder: " + m2286try + ", duration: " + cs.m395do(m396if);
                }
                this.f2827case.f6004for.mo60if();
                this.f2832new = new nk(Collections.singletonList(this.f2827case.f6003do), this.f2828do, this);
            } catch (Throwable th) {
                this.f2827case.f6004for.mo60if();
                throw th;
            }
        }
        nk nkVar = this.f2832new;
        if (nkVar == null || !nkVar.mo1138if()) {
            this.f2832new = null;
            this.f2827case = null;
            boolean z = false;
            while (!z) {
                if (!(this.f2830for < this.f2828do.m2283for().size())) {
                    break;
                }
                List<ym.Cdo<?>> m2283for = this.f2828do.m2283for();
                int i = this.f2830for;
                this.f2830for = i + 1;
                this.f2827case = m2283for.get(i);
                if (this.f2827case != null && (this.f2828do.f4104throw.mo2711for(this.f2827case.f6004for.mo61try()) || this.f2828do.m2282else(this.f2827case.f6004for.mo58do()))) {
                    this.f2827case.f6004for.mo57case(this.f2828do.f4102super, new kl(this, this.f2827case));
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    @Override // com.apk.qk.Cdo
    /* renamed from: new  reason: not valid java name */
    public void mo1645new(kj kjVar, Object obj, uj<?> ujVar, dj djVar, kj kjVar2) {
        this.f2831if.mo1645new(kjVar, obj, ujVar, this.f2827case.f6004for.mo61try(), kjVar);
    }
}
