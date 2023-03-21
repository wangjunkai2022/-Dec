package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.hm;

/* compiled from: LruResourceCache.java */
/* loaded from: classes8.dex */
public class gm extends ds<kj, gl<?>> implements hm {

    /* renamed from: new  reason: not valid java name */
    public hm.Cdo f1609new;

    public gm(long j) {
        super(j);
    }

    @Nullable
    /* renamed from: case  reason: not valid java name */
    public /* bridge */ /* synthetic */ gl m981case(@NonNull kj kjVar, @Nullable gl glVar) {
        return (gl) super.m514new(kjVar, glVar);
    }

    @Override // com.apk.ds
    /* renamed from: for */
    public void mo512for(@NonNull kj kjVar, @Nullable gl<?> glVar) {
        gl<?> glVar2 = glVar;
        hm.Cdo cdo = this.f1609new;
        if (cdo == null || glVar2 == null) {
            return;
        }
        ((vk) cdo).f5140try.m1356do(glVar2, true);
    }

    @Override // com.apk.ds
    /* renamed from: if */
    public int mo513if(@Nullable gl<?> glVar) {
        gl<?> glVar2 = glVar;
        if (glVar2 == null) {
            return 1;
        }
        return glVar2.mo66for();
    }
}
