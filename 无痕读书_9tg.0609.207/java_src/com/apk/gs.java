package com.apk;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* compiled from: Util.java */
/* loaded from: classes8.dex */
public final class gs {

    /* renamed from: do  reason: not valid java name */
    public static final char[] f1630do = "0123456789abcdef".toCharArray();

    /* renamed from: if  reason: not valid java name */
    public static final char[] f1631if = new char[64];

    /* compiled from: Util.java */
    /* renamed from: com.apk.gs$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class Cdo {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f1632do;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f1632do = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1632do[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1632do[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1632do[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1632do[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static int m1030break(@Nullable Object obj, int i) {
        return (i * 31) + (obj == null ? 0 : obj.hashCode());
    }

    @TargetApi(19)
    /* renamed from: case  reason: not valid java name */
    public static int m1031case(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    /* renamed from: catch  reason: not valid java name */
    public static boolean m1032catch() {
        return !m1033class();
    }

    /* renamed from: class  reason: not valid java name */
    public static boolean m1033class() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: const  reason: not valid java name */
    public static boolean m1034const(int i, int i2) {
        if (i > 0 || i == Integer.MIN_VALUE) {
            if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1035do() {
        if (!m1033class()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    @NonNull
    /* renamed from: else  reason: not valid java name */
    public static <T> List<T> m1036else(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: final  reason: not valid java name */
    public static String m1037final(@NonNull byte[] bArr) {
        String str;
        synchronized (f1631if) {
            char[] cArr = f1631if;
            for (int i = 0; i < bArr.length; i++) {
                int i2 = bArr[i] & ExifInterface.MARKER;
                int i3 = i * 2;
                char[] cArr2 = f1630do;
                cArr[i3] = cArr2[i2 >>> 4];
                cArr[i3 + 1] = cArr2[i2 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m1038for(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    /* renamed from: goto  reason: not valid java name */
    public static int m1039goto(float f) {
        return Float.floatToIntBits(f) + 527;
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m1040if(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        } else if (obj instanceof wm) {
            return ((wm) obj).m2929do(obj2);
        } else {
            return obj.equals(obj2);
        }
    }

    @NonNull
    /* renamed from: new  reason: not valid java name */
    public static <T> Queue<T> m1041new(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: this  reason: not valid java name */
    public static int m1042this(int i) {
        return 527 + i;
    }

    /* renamed from: try  reason: not valid java name */
    public static int m1043try(int i, int i2, @Nullable Bitmap.Config config) {
        int i3 = i * i2;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i4 = Cdo.f1632do[config.ordinal()];
        int i5 = 4;
        if (i4 == 1) {
            i5 = 1;
        } else if (i4 == 2 || i4 == 3) {
            i5 = 2;
        } else if (i4 == 4) {
            i5 = 8;
        }
        return i3 * i5;
    }
}
