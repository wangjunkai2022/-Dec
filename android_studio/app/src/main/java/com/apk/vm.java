package com.apk;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.ym;
import java.io.File;
import java.io.FileNotFoundException;

/* compiled from: MediaStoreFileLoader.java */
/* loaded from: classes8.dex */
public final class vm implements ym<Uri, File> {

    /* renamed from: do  reason: not valid java name */
    public final Context f5169do;

    /* compiled from: MediaStoreFileLoader.java */
    /* renamed from: com.apk.vm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements zm<Uri, File> {

        /* renamed from: do  reason: not valid java name */
        public final Context f5170do;

        public Cdo(Context context) {
            this.f5170do = context;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Uri, File> mo55for(cn cnVar) {
            return new vm(this.f5170do);
        }
    }

    /* compiled from: MediaStoreFileLoader.java */
    /* renamed from: com.apk.vm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements uj<File> {

        /* renamed from: for  reason: not valid java name */
        public static final String[] f5171for = {"_data"};

        /* renamed from: do  reason: not valid java name */
        public final Context f5172do;

        /* renamed from: if  reason: not valid java name */
        public final Uri f5173if;

        public Cif(Context context, Uri uri) {
            this.f5172do = context;
            this.f5173if = uri;
        }

        @Override // com.apk.uj
        public void cancel() {
        }

        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super File> cdo) {
            Cursor query = this.f5172do.getContentResolver().query(this.f5173if, f5171for, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(r0)) {
                StringBuilder m1016super = Cgoto.m1016super("Failed to find file path for: ");
                m1016super.append(this.f5173if);
                cdo.mo212for(new FileNotFoundException(m1016super.toString()));
                return;
            }
            cdo.mo213new(new File(r0));
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<File> mo58do() {
            return File.class;
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return dj.LOCAL;
        }
    }

    public vm(Context context) {
        this.f5169do = context;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        return eg.m619transient(uri);
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<File> mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        Uri uri2 = uri;
        return new ym.Cdo<>(new vr(uri2), new Cif(this.f5169do, uri2));
    }
}
