package com.apk;

import androidx.annotation.NonNull;
import com.apk.vj;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: InputStreamRewinder.java */
/* loaded from: classes8.dex */
public final class bk implements vj<InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final oo f346do;

    /* compiled from: InputStreamRewinder.java */
    /* renamed from: com.apk.bk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements vj.Cdo<InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final nl f347do;

        public Cdo(nl nlVar) {
            this.f347do = nlVar;
        }

        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: do  reason: not valid java name */
        public Class<InputStream> mo196do() {
            return InputStream.class;
        }

        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: if  reason: not valid java name */
        public vj<InputStream> mo197if(InputStream inputStream) {
            return new bk(inputStream, this.f347do);
        }
    }

    public bk(InputStream inputStream, nl nlVar) {
        oo ooVar = new oo(inputStream, nlVar);
        this.f346do = ooVar;
        ooVar.mark(5242880);
    }

    @Override // com.apk.vj
    @NonNull
    /* renamed from: for  reason: not valid java name */
    public InputStream mo193do() throws IOException {
        this.f346do.reset();
        return this.f346do;
    }

    @Override // com.apk.vj
    /* renamed from: if  reason: not valid java name */
    public void mo195if() {
        this.f346do.m1978try();
    }
}
