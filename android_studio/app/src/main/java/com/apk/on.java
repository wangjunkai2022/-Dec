package com.apk;

import androidx.annotation.NonNull;
import com.apk.ym;
import java.io.InputStream;
import java.net.URL;

/* compiled from: UrlLoader.java */
/* loaded from: classes8.dex */
public class on implements ym<URL, InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final ym<rm, InputStream> f3473do;

    /* compiled from: UrlLoader.java */
    /* renamed from: com.apk.on$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<URL, InputStream> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<URL, InputStream> mo55for(cn cnVar) {
            return new on(cnVar.m368for(rm.class, InputStream.class));
        }
    }

    public on(ym<rm, InputStream> ymVar) {
        this.f3473do = ymVar;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull URL url) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(@NonNull URL url, int i, int i2, @NonNull mj mjVar) {
        return this.f3473do.mo53if(new rm(url), i, i2, mjVar);
    }
}
