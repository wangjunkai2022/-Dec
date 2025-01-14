package com.google.android.material.slider;

import androidx.annotation.NonNull;

/* loaded from: classes8.dex */
public interface LabelFormatter {
    public static final int LABEL_FLOATING = 0;
    public static final int LABEL_GONE = 2;
    public static final int LABEL_WITHIN_BOUNDS = 1;

    @NonNull
    String getFormattedValue(float f);
}
