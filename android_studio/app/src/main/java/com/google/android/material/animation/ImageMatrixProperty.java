package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* loaded from: classes8.dex */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {
    public final Matrix matrix;

    public ImageMatrixProperty() {
        super(Matrix.class, "imageMatrixProperty");
        this.matrix = new Matrix();
    }

    @Override // android.util.Property
    @NonNull
    public Matrix get(@NonNull ImageView imageView) {
        this.matrix.set(imageView.getImageMatrix());
        return this.matrix;
    }

    @Override // android.util.Property
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
