package com.apk;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

/* compiled from: DrawableToBitmapConverter.java */
/* loaded from: classes8.dex */
public final class fo {

    /* renamed from: do  reason: not valid java name */
    public static final pl f1410do = new Cdo();

    /* compiled from: DrawableToBitmapConverter.java */
    /* renamed from: com.apk.fo$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends ql {
        @Override // com.apk.ql, com.apk.pl
        /* renamed from: do  reason: not valid java name */
        public void mo868do(Bitmap bitmap) {
        }
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public static gl<Bitmap> m867do(pl plVar, Drawable drawable, int i, int i2) {
        Drawable current = drawable.getCurrent();
        boolean z = false;
        Bitmap bitmap = null;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (!(current instanceof Animatable)) {
            if (i == Integer.MIN_VALUE && current.getIntrinsicWidth() <= 0) {
                if (Log.isLoggable("DrawableToBitmap", 5)) {
                    String str = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width";
                }
            } else if (i2 == Integer.MIN_VALUE && current.getIntrinsicHeight() <= 0) {
                if (Log.isLoggable("DrawableToBitmap", 5)) {
                    String str2 = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height";
                }
            } else {
                if (current.getIntrinsicWidth() > 0) {
                    i = current.getIntrinsicWidth();
                }
                if (current.getIntrinsicHeight() > 0) {
                    i2 = current.getIntrinsicHeight();
                }
                Lock lock = so.f4473new;
                lock.lock();
                Bitmap mo2051if = plVar.mo2051if(i, i2, Bitmap.Config.ARGB_8888);
                try {
                    Canvas canvas = new Canvas(mo2051if);
                    current.setBounds(0, 0, i, i2);
                    current.draw(canvas);
                    canvas.setBitmap(null);
                    lock.unlock();
                    bitmap = mo2051if;
                } catch (Throwable th) {
                    lock.unlock();
                    throw th;
                }
            }
            z = true;
        }
        if (!z) {
            plVar = f1410do;
        }
        return vn.m2827try(bitmap, plVar);
    }
}
