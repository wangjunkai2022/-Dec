package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes8.dex */
public final class PathInterpolatorCompat {
    public static Interpolator create(Path path) {
        return new PathInterpolator(path);
    }

    public static Interpolator create(float f, float f2) {
        return new PathInterpolator(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        return new PathInterpolator(f, f2, f3, f4);
    }
}
