package com.apk;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;

/* compiled from: GifDrawableEncoder.java */
/* loaded from: classes8.dex */
public class ip implements pj<hp> {
    @Override // com.apk.gj
    /* renamed from: do */
    public boolean mo652do(@NonNull Object obj, @NonNull File file, @NonNull mj mjVar) {
        try {
            wr.m2941new(((hp) ((gl) obj).get()).f1929do.f1937do.f2854do.getData().asReadOnlyBuffer(), file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.apk.pj
    @NonNull
    /* renamed from: if  reason: not valid java name */
    public fj mo1258if(@NonNull mj mjVar) {
        return fj.SOURCE;
    }
}
