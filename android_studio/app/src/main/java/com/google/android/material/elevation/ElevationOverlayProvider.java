package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes8.dex */
public class ElevationOverlayProvider {
    public static final float FORMULA_MULTIPLIER = 4.5f;
    public static final float FORMULA_OFFSET = 2.0f;
    public final int colorSurface;
    public final float displayDensity;
    public final int elevationOverlayColor;
    public final boolean elevationOverlayEnabled;

    public ElevationOverlayProvider(@NonNull Context context) {
        this.elevationOverlayEnabled = MaterialAttributes.resolveBoolean(context, R.attr.elevationOverlayEnabled, false);
        this.elevationOverlayColor = MaterialColors.getColor(context, R.attr.elevationOverlayColor, 0);
        this.colorSurface = MaterialColors.getColor(context, R.attr.colorSurface, 0);
        this.displayDensity = context.getResources().getDisplayMetrics().density;
    }

    private boolean isThemeSurfaceColor(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, 255) == this.colorSurface;
    }

    public int calculateOverlayAlpha(float f) {
        return Math.round(calculateOverlayAlphaFraction(f) * 255.0f);
    }

    public float calculateOverlayAlphaFraction(float f) {
        float f2 = this.displayDensity;
        if (f2 <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    public int compositeOverlay(@ColorInt int i, float f, @NonNull View view) {
        return compositeOverlay(i, getParentAbsoluteElevation(view) + f);
    }

    @ColorInt
    public int compositeOverlayIfNeeded(@ColorInt int i, float f, @NonNull View view) {
        return compositeOverlayIfNeeded(i, getParentAbsoluteElevation(view) + f);
    }

    @ColorInt
    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f, @NonNull View view) {
        return compositeOverlayWithThemeSurfaceColorIfNeeded(getParentAbsoluteElevation(view) + f);
    }

    public float getParentAbsoluteElevation(@NonNull View view) {
        return ViewUtils.getParentAbsoluteElevation(view);
    }

    @ColorInt
    public int getThemeElevationOverlayColor() {
        return this.elevationOverlayColor;
    }

    @ColorInt
    public int getThemeSurfaceColor() {
        return this.colorSurface;
    }

    public boolean isThemeElevationOverlayEnabled() {
        return this.elevationOverlayEnabled;
    }

    @ColorInt
    public int compositeOverlay(@ColorInt int i, float f) {
        float calculateOverlayAlphaFraction = calculateOverlayAlphaFraction(f);
        return ColorUtils.setAlphaComponent(MaterialColors.layer(ColorUtils.setAlphaComponent(i, 255), this.elevationOverlayColor, calculateOverlayAlphaFraction), Color.alpha(i));
    }

    @ColorInt
    public int compositeOverlayIfNeeded(@ColorInt int i, float f) {
        return (this.elevationOverlayEnabled && isThemeSurfaceColor(i)) ? compositeOverlay(i, f) : i;
    }

    @ColorInt
    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f) {
        return compositeOverlayIfNeeded(this.colorSurface, f);
    }
}
