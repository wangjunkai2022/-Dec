package com.apk;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.apk.uj;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ThumbFetcher.java */
/* loaded from: classes8.dex */
public class hk implements uj<InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final Uri f1874do;

    /* renamed from: for  reason: not valid java name */
    public InputStream f1875for;

    /* renamed from: if  reason: not valid java name */
    public final jk f1876if;

    /* compiled from: ThumbFetcher.java */
    /* renamed from: com.apk.hk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements ik {

        /* renamed from: if  reason: not valid java name */
        public static final String[] f1877if = {"_data"};

        /* renamed from: do  reason: not valid java name */
        public final ContentResolver f1878do;

        public Cdo(ContentResolver contentResolver) {
            this.f1878do = contentResolver;
        }

        @Override // com.apk.ik
        public Cursor query(Uri uri) {
            return this.f1878do.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f1877if, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* compiled from: ThumbFetcher.java */
    /* renamed from: com.apk.hk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements ik {

        /* renamed from: if  reason: not valid java name */
        public static final String[] f1879if = {"_data"};

        /* renamed from: do  reason: not valid java name */
        public final ContentResolver f1880do;

        public Cif(ContentResolver contentResolver) {
            this.f1880do = contentResolver;
        }

        @Override // com.apk.ik
        public Cursor query(Uri uri) {
            return this.f1880do.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f1879if, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public hk(Uri uri, jk jkVar) {
        this.f1874do = uri;
        this.f1876if = jkVar;
    }

    /* renamed from: for  reason: not valid java name */
    public static hk m1136for(Context context, Uri uri, ik ikVar) {
        return new hk(uri, new jk(ii.m1220new(context).f2122try.m1959try(), ikVar, ii.m1220new(context).f2114case, context.getContentResolver()));
    }

    @Override // com.apk.uj
    public void cancel() {
    }

    @Override // com.apk.uj
    /* renamed from: case */
    public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super InputStream> cdo) {
        try {
            InputStream m1137new = m1137new();
            this.f1875for = m1137new;
            cdo.mo213new(m1137new);
        } catch (FileNotFoundException e) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            cdo.mo212for(e);
        }
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    @Override // com.apk.uj
    /* renamed from: if */
    public void mo60if() {
        InputStream inputStream = this.f1875for;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r6 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        if (r6 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0047, code lost:
        r7 = null;
     */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0022: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:12:0x0022 */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream m1137new() throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.hk.m1137new():java.io.InputStream");
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: try */
    public dj mo61try() {
        return dj.LOCAL;
    }
}
