package com.manhua.utils.image;

import android.content.Context;
import androidx.annotation.NonNull;
import com.apk.a6;
import com.apk.an;
import com.apk.cm;
import com.apk.cn;
import com.apk.dr;
import com.apk.eg;
import com.apk.ej;
import com.apk.ii;
import com.apk.ji;
import com.apk.ki;
import com.apk.o30;
import com.apk.oi;
import com.apk.q30;
import com.apk.rm;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.module.AppGlideModule;
import java.io.InputStream;
@GlideModule
/* loaded from: classes8.dex */
public class DesGlideModule extends AppGlideModule {
    @Override // com.bumptech.glide.module.AppGlideModule, com.apk.mq
    /* renamed from: do */
    public void mo1745do(Context context, ji jiVar) {
        dr mo2211class = new dr().mo2211class(ej.PREFER_ARGB_8888);
        if (jiVar != null) {
            ki kiVar = new ki(jiVar, mo2211class);
            eg.m593else(kiVar, "Argument must not be null");
            jiVar.f2341class = kiVar;
            jiVar.f2347goto = new cm(a6.m18else().m19case(), 1073741824);
            return;
        }
        throw null;
    }

    @Override // com.apk.oq, com.apk.qq
    /* renamed from: if */
    public void mo1980if(@NonNull Context context, @NonNull ii iiVar, @NonNull oi oiVar) {
        o30.Cdo cdo = new o30.Cdo();
        an anVar = oiVar.f3432do;
        synchronized (anVar) {
            cn cnVar = anVar.f123do;
            synchronized (cnVar) {
                cnVar.f677do.add(0, new cn.Cif<>(String.class, InputStream.class, cdo));
            }
            anVar.f124if.f125do.clear();
        }
        oiVar.m1958this(rm.class, InputStream.class, new q30.Cdo());
    }
}
