package com.apk;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.apk.ko;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* compiled from: Downsampler.java */
/* loaded from: classes8.dex */
public final class eo {

    /* renamed from: break  reason: not valid java name */
    public static final Set<String> f1102break;

    /* renamed from: catch  reason: not valid java name */
    public static final Cif f1104catch;

    /* renamed from: class  reason: not valid java name */
    public static final Set<ImageHeaderParser.ImageType> f1105class;

    /* renamed from: const  reason: not valid java name */
    public static final Queue<BitmapFactory.Options> f1106const;

    /* renamed from: goto  reason: not valid java name */
    public static final lj<Boolean> f1108goto;

    /* renamed from: this  reason: not valid java name */
    public static final lj<Boolean> f1109this;

    /* renamed from: do  reason: not valid java name */
    public final pl f1110do;

    /* renamed from: for  reason: not valid java name */
    public final nl f1111for;

    /* renamed from: if  reason: not valid java name */
    public final DisplayMetrics f1112if;

    /* renamed from: new  reason: not valid java name */
    public final List<ImageHeaderParser> f1113new;

    /* renamed from: try  reason: not valid java name */
    public final jo f1114try = jo.m1370do();

    /* renamed from: case  reason: not valid java name */
    public static final lj<ej> f1103case = lj.m1635do("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", ej.f1073for);

    /* renamed from: else  reason: not valid java name */
    public static final lj<nj> f1107else = lj.m1635do("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", nj.SRGB);

    /* compiled from: Downsampler.java */
    /* renamed from: com.apk.eo$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Cif {
        @Override // com.apk.eo.Cif
        /* renamed from: do  reason: not valid java name */
        public void mo665do(pl plVar, Bitmap bitmap) {
        }

        @Override // com.apk.eo.Cif
        /* renamed from: if  reason: not valid java name */
        public void mo666if() {
        }
    }

    /* compiled from: Downsampler.java */
    /* renamed from: com.apk.eo$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo665do(pl plVar, Bitmap bitmap) throws IOException;

        /* renamed from: if */
        void mo666if();
    }

    static {
        lj<co> ljVar = co.f684case;
        f1108goto = lj.m1635do("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.FALSE);
        f1109this = lj.m1635do("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", Boolean.FALSE);
        f1102break = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f1104catch = new Cdo();
        f1105class = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f1106const = gs.m1041new(0);
    }

    public eo(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, pl plVar, nl nlVar) {
        this.f1113new = list;
        eg.m593else(displayMetrics, "Argument must not be null");
        this.f1112if = displayMetrics;
        eg.m593else(plVar, "Argument must not be null");
        this.f1110do = plVar;
        eg.m593else(nlVar, "Argument must not be null");
        this.f1111for = nlVar;
    }

    /* renamed from: break  reason: not valid java name */
    public static void m654break(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* renamed from: case  reason: not valid java name */
    public static int m655case(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    /* renamed from: catch  reason: not valid java name */
    public static int m656catch(double d) {
        return (int) (d + 0.5d);
    }

    /* renamed from: else  reason: not valid java name */
    public static int[] m657else(ko koVar, BitmapFactory.Options options, Cif cif, pl plVar) throws IOException {
        options.inJustDecodeBounds = true;
        m659new(koVar, options, cif, plVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m658goto(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: new  reason: not valid java name */
    public static Bitmap m659new(ko koVar, BitmapFactory.Options options, Cif cif, pl plVar) throws IOException {
        Bitmap m659new;
        if (!options.inJustDecodeBounds) {
            cif.mo666if();
            koVar.mo1537for();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        so.f4473new.lock();
        try {
            try {
                m659new = koVar.mo1538if(options);
            } catch (IllegalArgumentException e) {
                IOException m660this = m660this(e, i, i2, str, options);
                if (options.inBitmap != null) {
                    try {
                        plVar.mo868do(options.inBitmap);
                        options.inBitmap = null;
                        m659new = m659new(koVar, options, cif, plVar);
                    } catch (IOException unused) {
                        throw m660this;
                    }
                } else {
                    throw m660this;
                }
            }
            return m659new;
        } finally {
            so.f4473new.unlock();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static IOException m660this(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m661try(options.inBitmap), illegalArgumentException);
    }

    @Nullable
    @TargetApi(19)
    /* renamed from: try  reason: not valid java name */
    public static String m661try(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        StringBuilder m1016super = Cgoto.m1016super(" (");
        m1016super.append(bitmap.getAllocationByteCount());
        m1016super.append(")");
        String sb = m1016super.toString();
        StringBuilder m1016super2 = Cgoto.m1016super("[");
        m1016super2.append(bitmap.getWidth());
        m1016super2.append("x");
        m1016super2.append(bitmap.getHeight());
        m1016super2.append("] ");
        m1016super2.append(bitmap.getConfig());
        m1016super2.append(sb);
        return m1016super2.toString();
    }

    /* renamed from: do  reason: not valid java name */
    public final gl<Bitmap> m662do(ko koVar, int i, int i2, mj mjVar, Cif cif) throws IOException {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        byte[] bArr = (byte[]) this.f1111for.mo1887case(65536, byte[].class);
        synchronized (eo.class) {
            synchronized (f1106const) {
                poll = f1106const.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                m654break(poll);
            }
            options = poll;
        }
        options.inTempStorage = bArr;
        ej ejVar = (ej) mjVar.m1724for(f1103case);
        nj njVar = (nj) mjVar.m1724for(f1107else);
        try {
            vn m2827try = vn.m2827try(m663for(koVar, options, (co) mjVar.m1724for(co.f684case), ejVar, njVar, mjVar.m1724for(f1109this) != null && ((Boolean) mjVar.m1724for(f1109this)).booleanValue(), i, i2, ((Boolean) mjVar.m1724for(f1108goto)).booleanValue(), cif), this.f1110do);
            m654break(options);
            synchronized (f1106const) {
                f1106const.offer(options);
            }
            this.f1111for.put(bArr);
            return m2827try;
        } catch (Throwable th) {
            m654break(options);
            synchronized (f1106const) {
                f1106const.offer(options);
                this.f1111for.put(bArr);
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0297 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02da A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x019c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a9  */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap m663for(com.apk.ko r26, android.graphics.BitmapFactory.Options r27, com.apk.co r28, com.apk.ej r29, com.apk.nj r30, boolean r31, int r32, int r33, boolean r34, com.apk.eo.Cif r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1070
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.eo.m663for(com.apk.ko, android.graphics.BitmapFactory$Options, com.apk.co, com.apk.ej, com.apk.nj, boolean, int, int, boolean, com.apk.eo$if):android.graphics.Bitmap");
    }

    /* renamed from: if  reason: not valid java name */
    public gl<Bitmap> m664if(InputStream inputStream, int i, int i2, mj mjVar, Cif cif) throws IOException {
        return m662do(new ko.Cdo(inputStream, this.f1113new, this.f1111for), i, i2, mjVar, cif);
    }
}
