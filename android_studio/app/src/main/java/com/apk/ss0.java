package com.apk;

import android.content.Context;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;

/* compiled from: BrightnessSliderView.java */
/* loaded from: classes7.dex */
public class ss0 extends ws0 {
    public ss0(Context context) {
        super(context);
    }

    @Override // com.apk.ws0
    /* renamed from: for */
    public int mo2357for() {
        Color.colorToHSV(this.f5394do, r0);
        float[] fArr = {0.0f, 0.0f, this.f5397goto};
        return Color.HSVToColor(fArr);
    }

    @Override // com.apk.ws0
    /* renamed from: new */
    public void mo2358new(Paint paint) {
        Color.colorToHSV(this.f5394do, r0);
        float[] fArr = {0.0f, 0.0f, 0.0f};
        int HSVToColor = Color.HSVToColor(fArr);
        fArr[2] = 1.0f;
        paint.setShader(new LinearGradient(0.0f, 0.0f, getWidth(), getHeight(), HSVToColor, Color.HSVToColor(fArr), Shader.TileMode.CLAMP));
    }

    @Override // com.apk.ws0
    /* renamed from: try */
    public float mo2359try(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        return fArr[2];
    }
}
