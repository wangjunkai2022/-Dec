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

/* compiled from: UrlUriLoader.java */
/* loaded from: classes8.dex */
public class in<Data> implements ym<Uri, Data> {

    /* renamed from: if  reason: not valid java name */
    public static final Set<String> f2201if = Collections.unmodifiableSet(new HashSet(Arrays.asList(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS)));

    /* renamed from: do  reason: not valid java name */
    public final ym<rm, Data> f2202do;

    /* compiled from: UrlUriLoader.java */
    /* renamed from: com.apk.in$do  reason: invalid class name */
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
            return new in(cnVar.m368for(rm.class, InputStream.class));
        }
    }

    public in(ym<rm, Data> ymVar) {
        this.f2202do = ymVar;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        return f2201if.contains(uri.getScheme());
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        return this.f2202do.mo53if(new rm(uri.toString(), sm.f4466do), i, i2, mjVar);
    }
}
