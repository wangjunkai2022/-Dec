package com.apk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.view.View;
import androidx.core.view.InputDeviceCompat;
/* compiled from: ColorWheelPalette.java */
/* loaded from: classes7.dex */
public class xs0 extends View {

    /* renamed from: do  reason: not valid java name */
    public float f5801do;

    /* renamed from: for  reason: not valid java name */
    public float f5802for;

    /* renamed from: if  reason: not valid java name */
    public float f5803if;

    /* renamed from: new  reason: not valid java name */
    public Paint f5804new;

    /* renamed from: try  reason: not valid java name */
    public Paint f5805try;

    public xs0(Context context) {
        super(context, null, 0);
        this.f5804new = new Paint(1);
        this.f5805try = new Paint(1);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.drawCircle(this.f5803if, this.f5802for, this.f5801do, this.f5804new);
        canvas.drawCircle(this.f5803if, this.f5802for, this.f5801do, this.f5805try);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        float min = Math.min((i - getPaddingLeft()) - getPaddingRight(), (i2 - getPaddingTop()) - getPaddingBottom()) * 0.5f;
        this.f5801do = min;
        if (min < 0.0f) {
            return;
        }
        this.f5803if = i * 0.5f;
        this.f5802for = i2 * 0.5f;
        this.f5804new.setShader(new SweepGradient(this.f5803if, this.f5802for, new int[]{-65536, -65281, -16776961, -16711681, -16711936, InputDeviceCompat.SOURCE_ANY, -65536}, (float[]) null));
        this.f5805try.setShader(new RadialGradient(this.f5803if, this.f5802for, this.f5801do, -1, 16777215, Shader.TileMode.CLAMP));
    }
}
