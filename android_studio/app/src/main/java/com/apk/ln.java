package com.apk;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.apk.hk;
import com.apk.ym;
import java.io.InputStream;

/* compiled from: MediaStoreImageThumbLoader.java */
/* loaded from: classes8.dex */
public class ln implements ym<Uri, InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final Context f2842do;

    /* compiled from: MediaStoreImageThumbLoader.java */
    /* renamed from: com.apk.ln$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<Uri, InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final Context f2843do;

        public Cdo(Context context) {
            this.f2843do = context;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, InputStream> mo55for(cn cnVar) {
            return new ln(this.f2843do);
        }
    }

    public ln(Context context) {
        this.f2842do = context.getApplicationContext();
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        Uri uri2 = uri;
        return eg.m619transient(uri2) && !uri2.getPathSegments().contains("video");
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        Uri uri2 = uri;
        if (eg.m615synchronized(i, i2)) {
            vr vrVar = new vr(uri2);
            Context context = this.f2842do;
            return new ym.Cdo<>(vrVar, hk.m1136for(context, uri2, new hk.Cdo(context.getContentResolver())));
        }
        return null;
    }
}
