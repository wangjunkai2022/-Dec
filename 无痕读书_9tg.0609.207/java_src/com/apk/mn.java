package com.apk;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.hk;
import com.apk.ym;
import java.io.InputStream;
/* compiled from: MediaStoreVideoThumbLoader.java */
/* loaded from: classes8.dex */
public class mn implements ym<Uri, InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final Context f3071do;

    /* compiled from: MediaStoreVideoThumbLoader.java */
    /* renamed from: com.apk.mn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<Uri, InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final Context f3072do;

        public Cdo(Context context) {
            this.f3072do = context;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, InputStream> mo55for(cn cnVar) {
            return new mn(this.f3072do);
        }
    }

    public mn(Context context) {
        this.f3071do = context.getApplicationContext();
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        Uri uri2 = uri;
        return eg.m619transient(uri2) && uri2.getPathSegments().contains("video");
    }

    @Override // com.apk.ym
    @Nullable
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        Uri uri2 = uri;
        if (eg.m615synchronized(i, i2)) {
            Long l = (Long) mjVar.m1724for(uo.f4942new);
            if (l != null && l.longValue() == -1) {
                vr vrVar = new vr(uri2);
                Context context = this.f3071do;
                return new ym.Cdo<>(vrVar, hk.m1136for(context, uri2, new hk.Cif(context.getContentResolver())));
            }
        }
        return null;
    }
}
