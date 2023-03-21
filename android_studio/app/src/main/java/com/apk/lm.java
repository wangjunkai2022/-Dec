package com.apk;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import com.apk.ym;
import java.io.InputStream;

/* compiled from: AssetUriLoader.java */
/* loaded from: classes8.dex */
public class lm<Data> implements ym<Uri, Data> {

    /* renamed from: do  reason: not valid java name */
    public final AssetManager f2834do;

    /* renamed from: if  reason: not valid java name */
    public final Cdo<Data> f2835if;

    /* compiled from: AssetUriLoader.java */
    /* renamed from: com.apk.lm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo<Data> {
        /* renamed from: if  reason: not valid java name */
        uj<Data> mo1646if(AssetManager assetManager, String str);
    }

    /* compiled from: AssetUriLoader.java */
    /* renamed from: com.apk.lm$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor implements zm<Uri, InputStream>, Cdo<InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final AssetManager f2836do;

        public Cfor(AssetManager assetManager) {
            this.f2836do = assetManager;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, InputStream> mo55for(cn cnVar) {
            return new lm(this.f2836do, this);
        }

        @Override // com.apk.lm.Cdo
        /* renamed from: if */
        public uj<InputStream> mo1646if(AssetManager assetManager, String str) {
            return new ek(assetManager, str);
        }
    }

    /* compiled from: AssetUriLoader.java */
    /* renamed from: com.apk.lm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements zm<Uri, ParcelFileDescriptor>, Cdo<ParcelFileDescriptor> {

        /* renamed from: do  reason: not valid java name */
        public final AssetManager f2837do;

        public Cif(AssetManager assetManager) {
            this.f2837do = assetManager;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, ParcelFileDescriptor> mo55for(cn cnVar) {
            return new lm(this.f2837do, this);
        }

        @Override // com.apk.lm.Cdo
        /* renamed from: if */
        public uj<ParcelFileDescriptor> mo1646if(AssetManager assetManager, String str) {
            return new yj(assetManager, str);
        }
    }

    public lm(AssetManager assetManager, Cdo<Data> cdo) {
        this.f2834do = assetManager;
        this.f2835if = cdo;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        Uri uri2 = uri;
        return "file".equals(uri2.getScheme()) && !uri2.getPathSegments().isEmpty() && "android_asset".equals(uri2.getPathSegments().get(0));
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        Uri uri2 = uri;
        return new ym.Cdo(new vr(uri2), this.f2835if.mo1646if(this.f2834do, uri2.toString().substring(22)));
    }
}
