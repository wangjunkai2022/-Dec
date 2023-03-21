package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: BitmapEncoder.java */
/* loaded from: classes8.dex */
public class tn implements pj<Bitmap> {
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public final nl f4738do;

    /* renamed from: if  reason: not valid java name */
    public static final lj<Integer> f4737if = lj.m1635do("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: for  reason: not valid java name */
    public static final lj<Bitmap.CompressFormat> f4736for = new lj<>("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, lj.f2818try);

    public tn(@NonNull nl nlVar) {
        this.f4738do = nlVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
        if (r6 == null) goto L22;
     */
    @Override // com.apk.gj
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean mo652do(@androidx.annotation.NonNull java.lang.Object r9, @androidx.annotation.NonNull java.io.File r10, @androidx.annotation.NonNull com.apk.mj r11) {
        /*
            r8 = this;
            com.apk.gl r9 = (com.apk.gl) r9
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            com.apk.lj<android.graphics.Bitmap$CompressFormat> r1 = com.apk.tn.f4736for
            java.lang.Object r1 = r11.m1724for(r1)
            android.graphics.Bitmap$CompressFormat r1 = (android.graphics.Bitmap.CompressFormat) r1
            if (r1 == 0) goto L15
            goto L20
        L15:
            boolean r1 = r9.hasAlpha()
            if (r1 == 0) goto L1e
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG
            goto L20
        L1e:
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
        L20:
            r9.getWidth()
            r9.getHeight()
            long r2 = com.apk.cs.m396if()     // Catch: java.lang.Throwable -> Lae
            com.apk.lj<java.lang.Integer> r4 = com.apk.tn.f4737if     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r4 = r11.m1724for(r4)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> Lae
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> Lae
            r5 = 0
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L5f
            r7.<init>(r10)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L5f
            com.apk.nl r10 = r8.f4738do     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            if (r10 == 0) goto L4a
            com.apk.tj r10 = new com.apk.tj     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            com.apk.nl r6 = r8.f4738do     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r10.<init>(r7, r6)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r6 = r10
            goto L4b
        L4a:
            r6 = r7
        L4b:
            r9.compress(r1, r4, r6)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L5f
            r6.close()     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L5f
            r5 = 1
            goto L61
        L53:
            r9 = move-exception
            goto L59
        L55:
            r6 = r7
            goto L5f
        L57:
            r9 = move-exception
            r7 = r6
        L59:
            if (r7 == 0) goto L5e
            r7.close()     // Catch: java.io.IOException -> L5e java.lang.Throwable -> Lae
        L5e:
            throw r9     // Catch: java.lang.Throwable -> Lae
        L5f:
            if (r6 == 0) goto L64
        L61:
            r6.close()     // Catch: java.io.IOException -> L64 java.lang.Throwable -> Lae
        L64:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch: java.lang.Throwable -> Lae
            if (r10 == 0) goto Lad
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lae
            r10.<init>()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r0 = "Compressed with type: "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lae
            r10.append(r1)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r0 = " of size "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lae
            int r0 = com.apk.gs.m1031case(r9)     // Catch: java.lang.Throwable -> Lae
            r10.append(r0)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r0 = " in "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lae
            double r0 = com.apk.cs.m395do(r2)     // Catch: java.lang.Throwable -> Lae
            r10.append(r0)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r0 = ", options format: "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lae
            com.apk.lj<android.graphics.Bitmap$CompressFormat> r0 = com.apk.tn.f4736for     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r11 = r11.m1724for(r0)     // Catch: java.lang.Throwable -> Lae
            r10.append(r11)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)     // Catch: java.lang.Throwable -> Lae
            boolean r9 = r9.hasAlpha()     // Catch: java.lang.Throwable -> Lae
            r10.append(r9)     // Catch: java.lang.Throwable -> Lae
            r10.toString()     // Catch: java.lang.Throwable -> Lae
        Lad:
            return r5
        Lae:
            r9 = move-exception
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.tn.mo652do(java.lang.Object, java.io.File, com.apk.mj):boolean");
    }

    @Override // com.apk.pj
    @NonNull
    /* renamed from: if */
    public fj mo1258if(@NonNull mj mjVar) {
        return fj.TRANSFORMED;
    }
}
