package com.apk;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import com.apk.ym;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: UriLoader.java */
/* loaded from: classes8.dex */
public class hn<Data> implements ym<Uri, Data> {

    /* renamed from: if  reason: not valid java name */
    public static final Set<String> f1896if = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: do  reason: not valid java name */
    public final Cfor<Data> f1897do;

    /* compiled from: UriLoader.java */
    /* renamed from: com.apk.hn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements zm<Uri, AssetFileDescriptor>, Cfor<AssetFileDescriptor> {

        /* renamed from: do  reason: not valid java name */
        public final ContentResolver f1898do;

        public Cdo(ContentResolver contentResolver) {
            this.f1898do = contentResolver;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        /* renamed from: for */
        public ym<Uri, AssetFileDescriptor> mo55for(cn cnVar) {
            return new hn(this);
        }

        @Override // com.apk.hn.Cfor
        /* renamed from: if  reason: not valid java name */
        public uj<AssetFileDescriptor> mo1142if(Uri uri) {
            return new rj(this.f1898do, uri);
        }
    }

    /* compiled from: UriLoader.java */
    /* renamed from: com.apk.hn$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor<Data> {
        /* renamed from: if */
        uj<Data> mo1142if(Uri uri);
    }

    /* compiled from: UriLoader.java */
    /* renamed from: com.apk.hn$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements zm<Uri, ParcelFileDescriptor>, Cfor<ParcelFileDescriptor> {

        /* renamed from: do  reason: not valid java name */
        public final ContentResolver f1899do;

        public Cif(ContentResolver contentResolver) {
            this.f1899do = contentResolver;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, ParcelFileDescriptor> mo55for(cn cnVar) {
            return new hn(this);
        }

        @Override // com.apk.hn.Cfor
        /* renamed from: if */
        public uj<ParcelFileDescriptor> mo1142if(Uri uri) {
            return new zj(this.f1899do, uri);
        }
    }

    /* compiled from: UriLoader.java */
    /* renamed from: com.apk.hn$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew implements zm<Uri, InputStream>, Cfor<InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final ContentResolver f1900do;

        public Cnew(ContentResolver contentResolver) {
            this.f1900do = contentResolver;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, InputStream> mo55for(cn cnVar) {
            return new hn(this);
        }

        @Override // com.apk.hn.Cfor
        /* renamed from: if */
        public uj<InputStream> mo1142if(Uri uri) {
            return new fk(this.f1900do, uri);
        }
    }

    public hn(Cfor<Data> cfor) {
        this.f1897do = cfor;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        return f1896if.contains(uri.getScheme());
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        Uri uri2 = uri;
        return new ym.Cdo(new vr(uri2), this.f1897do.mo1142if(uri2));
    }
}
