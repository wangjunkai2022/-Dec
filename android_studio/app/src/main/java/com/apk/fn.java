package com.apk;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.ym;
import java.io.File;
import java.io.InputStream;

/* compiled from: StringLoader.java */
/* loaded from: classes8.dex */
public class fn<Data> implements ym<String, Data> {

    /* renamed from: do  reason: not valid java name */
    public final ym<Uri, Data> f1405do;

    /* compiled from: StringLoader.java */
    /* renamed from: com.apk.fn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements zm<String, AssetFileDescriptor> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        /* renamed from: for */
        public ym<String, AssetFileDescriptor> mo55for(@NonNull cn cnVar) {
            return new fn(cnVar.m368for(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: StringLoader.java */
    /* renamed from: com.apk.fn$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor implements zm<String, InputStream> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<String, InputStream> mo55for(@NonNull cn cnVar) {
            return new fn(cnVar.m368for(Uri.class, InputStream.class));
        }
    }

    /* compiled from: StringLoader.java */
    /* renamed from: com.apk.fn$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements zm<String, ParcelFileDescriptor> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<String, ParcelFileDescriptor> mo55for(@NonNull cn cnVar) {
            return new fn(cnVar.m368for(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public fn(ym<Uri, Data> ymVar) {
        this.f1405do = ymVar;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull String str) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull String str, int i, int i2, @NonNull mj mjVar) {
        Uri fromFile;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            fromFile = null;
        } else if (str2.charAt(0) == '/') {
            fromFile = Uri.fromFile(new File(str2));
        } else {
            Uri parse = Uri.parse(str2);
            fromFile = parse.getScheme() == null ? Uri.fromFile(new File(str2)) : parse;
        }
        if (fromFile == null || !this.f1405do.mo52do(fromFile)) {
            return null;
        }
        return this.f1405do.mo53if(fromFile, i, i2, mjVar);
    }
}
