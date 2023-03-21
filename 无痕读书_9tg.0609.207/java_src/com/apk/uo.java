package com.apk;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.apk.lj;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: VideoDecoder.java */
/* loaded from: classes8.dex */
public class uo<T> implements oj<T, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final Ccase<T> f4944do;

    /* renamed from: for  reason: not valid java name */
    public final Ctry f4945for;

    /* renamed from: if  reason: not valid java name */
    public final pl f4946if;

    /* renamed from: new  reason: not valid java name */
    public static final lj<Long> f4942new = new lj<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new Cdo());

    /* renamed from: try  reason: not valid java name */
    public static final lj<Integer> f4943try = new lj<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new Cif());

    /* renamed from: case  reason: not valid java name */
    public static final Ctry f4941case = new Ctry();

    /* compiled from: VideoDecoder.java */
    @VisibleForTesting
    /* renamed from: com.apk.uo$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ccase<T> {
        /* renamed from: do  reason: not valid java name */
        void mo2727do(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* compiled from: VideoDecoder.java */
    /* renamed from: com.apk.uo$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements lj.Cif<Long> {

        /* renamed from: do  reason: not valid java name */
        public final ByteBuffer f4947do = ByteBuffer.allocate(8);

        @Override // com.apk.lj.Cif
        public void update(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f4947do) {
                this.f4947do.position(0);
                messageDigest.update(this.f4947do.putLong(l.longValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    /* renamed from: com.apk.uo$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Celse implements Ccase<ParcelFileDescriptor> {
        @Override // com.apk.uo.Ccase
        /* renamed from: do */
        public void mo2727do(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* compiled from: VideoDecoder.java */
    /* renamed from: com.apk.uo$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor implements Ccase<AssetFileDescriptor> {
        public Cfor(Cdo cdo) {
        }

        @Override // com.apk.uo.Ccase
        /* renamed from: do */
        public void mo2727do(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* compiled from: VideoDecoder.java */
    /* renamed from: com.apk.uo$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements lj.Cif<Integer> {

        /* renamed from: do  reason: not valid java name */
        public final ByteBuffer f4948do = ByteBuffer.allocate(4);

        @Override // com.apk.lj.Cif
        public void update(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f4948do) {
                this.f4948do.position(0);
                messageDigest.update(this.f4948do.putInt(num.intValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    @RequiresApi(23)
    /* renamed from: com.apk.uo$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cnew implements Ccase<ByteBuffer> {
        @Override // com.apk.uo.Ccase
        /* renamed from: do */
        public void mo2727do(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new vo(this, byteBuffer));
        }
    }

    /* compiled from: VideoDecoder.java */
    @VisibleForTesting
    /* renamed from: com.apk.uo$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry {
    }

    public uo(pl plVar, Ccase<T> ccase) {
        Ctry ctry = f4941case;
        this.f4946if = plVar;
        this.f4944do = ccase;
        this.f4945for = ctry;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m2726for(android.media.MediaMetadataRetriever r9, long r10, int r12, int r13, int r14, com.apk.co r15) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 27
            if (r0 < r1) goto L53
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r13 == r0) goto L53
            if (r14 == r0) goto L53
            com.apk.co r0 = com.apk.co.f689new
            if (r15 == r0) goto L53
            r0 = 18
            java.lang.String r0 = r9.extractMetadata(r0)     // Catch: java.lang.Throwable -> L53
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L53
            r1 = 19
            java.lang.String r1 = r9.extractMetadata(r1)     // Catch: java.lang.Throwable -> L53
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L53
            r2 = 24
            java.lang.String r2 = r9.extractMetadata(r2)     // Catch: java.lang.Throwable -> L53
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L53
            r3 = 90
            if (r2 == r3) goto L36
            r3 = 270(0x10e, float:3.78E-43)
            if (r2 != r3) goto L39
        L36:
            r8 = r1
            r1 = r0
            r0 = r8
        L39:
            float r13 = r15.mo375if(r0, r1, r13, r14)     // Catch: java.lang.Throwable -> L53
            float r14 = (float) r0     // Catch: java.lang.Throwable -> L53
            float r14 = r14 * r13
            int r6 = java.lang.Math.round(r14)     // Catch: java.lang.Throwable -> L53
            float r14 = (float) r1     // Catch: java.lang.Throwable -> L53
            float r13 = r13 * r14
            int r7 = java.lang.Math.round(r13)     // Catch: java.lang.Throwable -> L53
            r2 = r9
            r3 = r10
            r5 = r12
            android.graphics.Bitmap r13 = r2.getScaledFrameAtTime(r3, r5, r6, r7)     // Catch: java.lang.Throwable -> L53
            goto L54
        L53:
            r13 = 0
        L54:
            if (r13 != 0) goto L5a
            android.graphics.Bitmap r13 = r9.getFrameAtTime(r10, r12)
        L5a:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.uo.m2726for(android.media.MediaMetadataRetriever, long, int, int, int, com.apk.co):android.graphics.Bitmap");
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull T t, @NonNull mj mjVar) {
        return true;
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull T t, int i, int i2, @NonNull mj mjVar) throws IOException {
        long longValue = ((Long) mjVar.m1724for(f4942new)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException(Cgoto.m1000for("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", longValue));
        }
        Integer num = (Integer) mjVar.m1724for(f4943try);
        if (num == null) {
            num = 2;
        }
        co coVar = (co) mjVar.m1724for(co.f684case);
        if (coVar == null) {
            coVar = co.f690try;
        }
        co coVar2 = coVar;
        if (this.f4945for != null) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    this.f4944do.mo2727do(mediaMetadataRetriever, t);
                    Bitmap m2726for = m2726for(mediaMetadataRetriever, longValue, num.intValue(), i, i2, coVar2);
                    mediaMetadataRetriever.release();
                    return vn.m2827try(m2726for, this.f4946if);
                } catch (RuntimeException e) {
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                mediaMetadataRetriever.release();
                throw th;
            }
        }
        throw null;
    }
}
