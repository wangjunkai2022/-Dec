package com.apk;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TransformationUtils.java */
/* loaded from: classes8.dex */
public final class so {

    /* renamed from: do  reason: not valid java name */
    public static final Paint f4470do = new Paint(6);

    /* renamed from: for  reason: not valid java name */
    public static final Set<String> f4471for;

    /* renamed from: if  reason: not valid java name */
    public static final Paint f4472if;

    /* renamed from: new  reason: not valid java name */
    public static final Lock f4473new;

    /* compiled from: TransformationUtils.java */
    /* renamed from: com.apk.so$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        new Paint(7);
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f4471for = hashSet;
        f4473new = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new Cdo();
        Paint paint = new Paint(7);
        f4472if = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    @NonNull
    /* renamed from: case  reason: not valid java name */
    public static Bitmap.Config m2512case(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m2513do(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        f4473new.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f4470do);
            canvas.setBitmap(null);
        } finally {
            f4473new.unlock();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static Bitmap m2514else(@NonNull pl plVar, @NonNull Bitmap bitmap, int i) {
        Bitmap mo2051if;
        eg.m620try(i > 0, "roundingRadius must be greater than 0.");
        Bitmap.Config m2518try = m2518try(bitmap);
        Bitmap.Config m2518try2 = m2518try(bitmap);
        if (m2518try2.equals(bitmap.getConfig())) {
            mo2051if = bitmap;
        } else {
            mo2051if = plVar.mo2051if(bitmap.getWidth(), bitmap.getHeight(), m2518try2);
            new Canvas(mo2051if).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        Bitmap mo2051if2 = plVar.mo2051if(mo2051if.getWidth(), mo2051if.getHeight(), m2518try);
        mo2051if2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(mo2051if, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, mo2051if2.getWidth(), mo2051if2.getHeight());
        f4473new.lock();
        try {
            Canvas canvas = new Canvas(mo2051if2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f = i;
            canvas.drawRoundRect(rectF, f, f, paint);
            canvas.setBitmap(null);
            f4473new.unlock();
            if (!mo2051if.equals(bitmap)) {
                plVar.mo868do(mo2051if);
            }
            return mo2051if2;
        } catch (Throwable th) {
            f4473new.unlock();
            throw th;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static Bitmap m2515for(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() <= i && bitmap.getHeight() <= i2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        Log.isLoggable("TransformationUtils", 2);
        return m2517new(plVar, bitmap, i, i2);
    }

    /* renamed from: if  reason: not valid java name */
    public static Bitmap m2516if(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            f = (i - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i / bitmap.getWidth();
            height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f + 0.5f), (int) (height + 0.5f));
        Bitmap mo2051if = plVar.mo2051if(i, i2, m2512case(bitmap));
        mo2051if.setHasAlpha(bitmap.hasAlpha());
        m2513do(bitmap, mo2051if, matrix);
        return mo2051if;
    }

    /* renamed from: new  reason: not valid java name */
    public static Bitmap m2517new(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            return bitmap;
        }
        Bitmap mo2051if = plVar.mo2051if((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m2512case(bitmap));
        mo2051if.setHasAlpha(bitmap.hasAlpha());
        if (Log.isLoggable("TransformationUtils", 2)) {
            bitmap.getWidth();
            bitmap.getHeight();
            mo2051if.getWidth();
            mo2051if.getHeight();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m2513do(bitmap, mo2051if, matrix);
        return mo2051if;
    }

    @NonNull
    /* renamed from: try  reason: not valid java name */
    public static Bitmap.Config m2518try(@NonNull Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) {
            return Bitmap.Config.RGBA_F16;
        }
        return Bitmap.Config.ARGB_8888;
    }
}
