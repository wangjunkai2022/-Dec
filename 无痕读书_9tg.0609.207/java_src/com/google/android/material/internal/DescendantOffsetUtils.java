package com.google.android.material.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes8.dex */
public class DescendantOffsetUtils {
    public static final ThreadLocal<Matrix> matrix = new ThreadLocal<>();
    public static final ThreadLocal<RectF> rectF = new ThreadLocal<>();

    public static void getDescendantRect(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        offsetDescendantRect(viewGroup, view, rect);
    }

    public static void offsetDescendantMatrix(ViewParent viewParent, @NonNull View view, @NonNull Matrix matrix2) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            offsetDescendantMatrix(viewParent, view2, matrix2);
            matrix2.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix2.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix2.preConcat(view.getMatrix());
    }

    public static void offsetDescendantRect(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull Rect rect) {
        Matrix matrix2 = matrix.get();
        if (matrix2 == null) {
            matrix2 = new Matrix();
            matrix.set(matrix2);
        } else {
            matrix2.reset();
        }
        offsetDescendantMatrix(viewGroup, view, matrix2);
        RectF rectF2 = rectF.get();
        if (rectF2 == null) {
            rectF2 = new RectF();
            rectF.set(rectF2);
        }
        rectF2.set(rect);
        matrix2.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }
}
