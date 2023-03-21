package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.apk.lp;

/* compiled from: GifDrawableResource.java */
/* loaded from: classes8.dex */
public class jp extends zo<hp> implements cl {
    public jp(hp hpVar) {
        super(hpVar);
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public void mo65do() {
        ((hp) this.f6222do).stop();
        hp hpVar = (hp) this.f6222do;
        hpVar.f1934new = true;
        lp lpVar = hpVar.f1929do.f1937do;
        lpVar.f2857for.clear();
        Bitmap bitmap = lpVar.f2853const;
        if (bitmap != null) {
            lpVar.f2864try.mo868do(bitmap);
            lpVar.f2853const = null;
        }
        lpVar.f2850case = false;
        lp.Cdo cdo = lpVar.f2849break;
        if (cdo != null) {
            lpVar.f2860new.m2132const(cdo);
            lpVar.f2849break = null;
        }
        lp.Cdo cdo2 = lpVar.f2852class;
        if (cdo2 != null) {
            lpVar.f2860new.m2132const(cdo2);
            lpVar.f2852class = null;
        }
        lp.Cdo cdo3 = lpVar.f2856final;
        if (cdo3 != null) {
            lpVar.f2860new.m2132const(cdo3);
            lpVar.f2856final = null;
        }
        lpVar.f2854do.clear();
        lpVar.f2851catch = true;
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public int mo66for() {
        lp lpVar = ((hp) this.f6222do).f1929do.f1937do;
        return lpVar.f2854do.mo3071else() + lpVar.f2861super;
    }

    @Override // com.apk.zo, com.apk.cl
    /* renamed from: if */
    public void mo353if() {
        ((hp) this.f6222do).m1152if().prepareToDraw();
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new */
    public Class<hp> mo68new() {
        return hp.class;
    }
}
