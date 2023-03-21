package com.apk;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.apk.ym;
import com.baidu.tts.client.SpeechSynthesizer;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: HttpUriLoader.java */
/* loaded from: classes8.dex */
public class kn implements ym<Uri, InputStream> {

    /* renamed from: if  reason: not valid java name */
    public static final Set<String> f2598if = Collections.unmodifiableSet(new HashSet(Arrays.asList(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS)));

    /* renamed from: do  reason: not valid java name */
    public final ym<rm, InputStream> f2599do;

    /* compiled from: HttpUriLoader.java */
    /* renamed from: com.apk.kn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<Uri, InputStream> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, InputStream> mo55for(cn cnVar) {
            return new kn(cnVar.m368for(rm.class, InputStream.class));
        }
    }

    public kn(ym<rm, InputStream> ymVar) {
        this.f2599do = ymVar;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        return f2598if.contains(uri.getScheme());
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        return this.f2599do.mo53if(new rm(uri.toString(), sm.f4466do), i, i2, mjVar);
    }
}
