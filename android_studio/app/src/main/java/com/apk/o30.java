package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.ym;
import java.io.InputStream;

/* compiled from: DesModelLoader.java */
/* loaded from: classes8.dex */
public class o30 implements ym<String, InputStream> {

    /* compiled from: DesModelLoader.java */
    /* renamed from: com.apk.o30$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<String, InputStream> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<String, InputStream> mo55for(@NonNull cn cnVar) {
            return new o30();
        }
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(String str) {
        return true;
    }

    @Override // com.apk.ym
    @Nullable
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(String str, int i, int i2, mj mjVar) {
        String str2 = str;
        return new ym.Cdo<>(new vr(str2), new n30(str2));
    }
}
