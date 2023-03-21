package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* compiled from: BitmapTransformation.java */
/* loaded from: classes8.dex */
public abstract class wn implements qj<Bitmap> {
    /* renamed from: for */
    public abstract Bitmap mo77for(@NonNull pl plVar, @NonNull Bitmap bitmap, int i, int i2);

    @Override // com.apk.qj
    @NonNull
    /* renamed from: if */
    public final gl<Bitmap> mo778if(@NonNull Context context, @NonNull gl<Bitmap> glVar, int i, int i2) {
        if (gs.m1034const(i, i2)) {
            pl plVar = ii.m1220new(context).f2119if;
            Bitmap bitmap = glVar.get();
            if (i == Integer.MIN_VALUE) {
                i = bitmap.getWidth();
            }
            if (i2 == Integer.MIN_VALUE) {
                i2 = bitmap.getHeight();
            }
            Bitmap mo77for = mo77for(plVar, bitmap, i, i2);
            return bitmap.equals(mo77for) ? glVar : vn.m2827try(mo77for, plVar);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
