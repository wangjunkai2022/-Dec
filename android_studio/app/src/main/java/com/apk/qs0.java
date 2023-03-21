package com.apk;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: CheckerboardDrawable.java */
/* loaded from: classes7.dex */
public class qs0 extends Drawable {

    /* renamed from: do  reason: not valid java name */
    public Paint f3928do = new Paint(1);

    /* renamed from: for  reason: not valid java name */
    public int f3929for;

    /* renamed from: if  reason: not valid java name */
    public int f3930if;

    /* renamed from: new  reason: not valid java name */
    public int f3931new;

    /* compiled from: CheckerboardDrawable.java */
    /* renamed from: com.apk.qs0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {

        /* renamed from: do  reason: not valid java name */
        public int f3932do = 40;

        /* renamed from: if  reason: not valid java name */
        public int f3934if = -4013374;

        /* renamed from: for  reason: not valid java name */
        public int f3933for = -789517;
    }

    public qs0(Cdo cdo) {
        int i = cdo.f3932do;
        this.f3930if = i;
        this.f3929for = cdo.f3934if;
        this.f3931new = cdo.f3933for;
        int i2 = i * 2;
        Bitmap createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        Canvas canvas = new Canvas(createBitmap);
        int i3 = this.f3930if;
        Rect rect = new Rect(0, 0, i3, i3);
        paint.setColor(this.f3929for);
        canvas.drawRect(rect, paint);
        int i4 = this.f3930if;
        rect.offset(i4, i4);
        canvas.drawRect(rect, paint);
        paint.setColor(this.f3931new);
        rect.offset(-this.f3930if, 0);
        canvas.drawRect(rect, paint);
        int i5 = this.f3930if;
        rect.offset(i5, -i5);
        canvas.drawRect(rect, paint);
        Paint paint2 = this.f3928do;
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        paint2.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.drawPaint(this.f3928do);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3928do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f3928do.setColorFilter(colorFilter);
    }
}
