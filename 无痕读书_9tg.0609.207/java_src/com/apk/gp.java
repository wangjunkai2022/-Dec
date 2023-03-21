package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder;
/* compiled from: GifBitmapProvider.java */
/* loaded from: classes8.dex */
public final class gp implements GifDecoder.Cdo {

    /* renamed from: do  reason: not valid java name */
    public final pl f1618do;
    @Nullable

    /* renamed from: if  reason: not valid java name */
    public final nl f1619if;

    public gp(pl plVar, @Nullable nl nlVar) {
        this.f1618do = plVar;
        this.f1619if = nlVar;
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public byte[] m1026do(int i) {
        nl nlVar = this.f1619if;
        if (nlVar == null) {
            return new byte[i];
        }
        return (byte[]) nlVar.mo1887case(i, byte[].class);
    }
}
