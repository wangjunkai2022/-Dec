package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import com.apk.qs0;

/* compiled from: AlphaSliderView.java */
/* loaded from: classes7.dex */
public class rs0 extends ws0 {

    /* renamed from: final  reason: not valid java name */
    public Bitmap f4201final;

    /* renamed from: super  reason: not valid java name */
    public Canvas f4202super;

    public rs0(Context context) {
        super(context);
    }

    @Override // com.apk.ws0
    /* renamed from: for  reason: not valid java name */
    public int mo2357for() {
        float[] fArr = new float[3];
        Color.colorToHSV(this.f5394do, fArr);
        return Color.HSVToColor((int) (this.f5397goto * 255.0f), fArr);
    }

    @Override // com.apk.ws0
    /* renamed from: new  reason: not valid java name */
    public void mo2358new(Paint paint) {
        float[] fArr = new float[3];
        Color.colorToHSV(this.f5394do, fArr);
        paint.setShader(new LinearGradient(0.0f, 0.0f, getWidth(), getHeight(), Color.HSVToColor(0, fArr), Color.HSVToColor(255, fArr), Shader.TileMode.CLAMP));
    }

    @Override // com.apk.ws0, android.view.View
    public void onDraw(Canvas canvas) {
        qs0 qs0Var = new qs0(new qs0.Cdo());
        qs0Var.setBounds(0, 0, this.f4202super.getWidth(), this.f4202super.getHeight());
        this.f4202super.drawPaint(qs0Var.f3928do);
        Bitmap bitmap = this.f4201final;
        float f = this.f5395else;
        canvas.drawBitmap(bitmap, f, f, (Paint) null);
        super.onDraw(canvas);
    }

    @Override // com.apk.ws0, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = this.f5395else;
        this.f4201final = Bitmap.createBitmap((int) (i - (2.0f * f)), (int) (i2 - f), Bitmap.Config.ARGB_8888);
        this.f4202super = new Canvas(this.f4201final);
    }

    @Override // com.apk.ws0
    /* renamed from: try  reason: not valid java name */
    public float mo2359try(int i) {
        return Color.alpha(i) / 255.0f;
    }
}
