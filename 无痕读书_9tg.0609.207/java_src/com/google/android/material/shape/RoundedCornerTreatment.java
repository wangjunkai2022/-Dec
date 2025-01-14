package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes8.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    public float radius;

    public RoundedCornerTreatment() {
        this.radius = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(@NonNull ShapePath shapePath, float f, float f2, float f3) {
        shapePath.reset(0.0f, f3 * f2, 180.0f, 180.0f - f);
        float f4 = f3 * 2.0f * f2;
        shapePath.addArc(0.0f, 0.0f, f4, f4, 180.0f, f);
    }

    @Deprecated
    public RoundedCornerTreatment(float f) {
        this.radius = -1.0f;
        this.radius = f;
    }
}
