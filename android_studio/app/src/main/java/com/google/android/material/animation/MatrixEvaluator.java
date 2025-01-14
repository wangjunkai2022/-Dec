package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

/* loaded from: classes8.dex */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {
    public final float[] tempStartValues = new float[9];
    public final float[] tempEndValues = new float[9];
    public final Matrix tempMatrix = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.tempStartValues);
        matrix2.getValues(this.tempEndValues);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.tempEndValues;
            float f2 = fArr[i];
            float[] fArr2 = this.tempStartValues;
            fArr[i] = ((f2 - fArr2[i]) * f) + fArr2[i];
        }
        this.tempMatrix.setValues(this.tempEndValues);
        return this.tempMatrix;
    }
}
