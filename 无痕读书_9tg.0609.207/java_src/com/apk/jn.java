package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.xm;
import com.apk.ym;
import java.io.InputStream;
/* compiled from: HttpGlideUrlLoader.java */
/* loaded from: classes8.dex */
public class jn implements ym<rm, InputStream> {

    /* renamed from: if  reason: not valid java name */
    public static final lj<Integer> f2369if = lj.m1635do("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public final xm<rm, rm> f2370do;

    /* compiled from: HttpGlideUrlLoader.java */
    /* renamed from: com.apk.jn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<rm, InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final xm<rm, rm> f2371do = new xm<>(500);

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<rm, InputStream> mo55for(cn cnVar) {
            return new jn(this.f2371do);
        }
    }

    public jn(@Nullable xm<rm, rm> xmVar) {
        this.f2370do = xmVar;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull rm rmVar) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(@NonNull rm rmVar, int i, int i2, @NonNull mj mjVar) {
        rm rmVar2 = rmVar;
        xm<rm, rm> xmVar = this.f2370do;
        if (xmVar != null) {
            xm.Cif<rm> m3027do = xm.Cif.m3027do(rmVar2, 0, 0);
            rm m511do = xmVar.f5696do.m511do(m3027do);
            synchronized (xm.Cif.f5697new) {
                xm.Cif.f5697new.offer(m3027do);
            }
            rm rmVar3 = m511do;
            if (rmVar3 == null) {
                xm<rm, rm> xmVar2 = this.f2370do;
                if (xmVar2 != null) {
                    xmVar2.f5696do.m514new(xm.Cif.m3027do(rmVar2, 0, 0), rmVar2);
                } else {
                    throw null;
                }
            } else {
                rmVar2 = rmVar3;
            }
        }
        return new ym.Cdo<>(rmVar2, new ak(rmVar2, ((Integer) mjVar.m1724for(f2369if)).intValue()));
    }
}
