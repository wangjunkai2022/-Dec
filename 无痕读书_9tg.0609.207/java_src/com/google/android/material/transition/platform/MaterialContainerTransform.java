package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.apk.Cgoto;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.transition.platform.TransitionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi(21)
/* loaded from: classes8.dex */
public final class MaterialContainerTransform extends Transition {
    public static final float ELEVATION_NOT_SET = -1.0f;
    public static final int FADE_MODE_CROSS = 2;
    public static final int FADE_MODE_IN = 0;
    public static final int FADE_MODE_OUT = 1;
    public static final int FADE_MODE_THROUGH = 3;
    public static final int FIT_MODE_AUTO = 0;
    public static final int FIT_MODE_HEIGHT = 2;
    public static final int FIT_MODE_WIDTH = 1;
    public static final String PROP_BOUNDS = "materialContainerTransition:bounds";
    public static final String PROP_SHAPE_APPEARANCE = "materialContainerTransition:shapeAppearance";
    public static final int TRANSITION_DIRECTION_AUTO = 0;
    public static final int TRANSITION_DIRECTION_ENTER = 1;
    public static final int TRANSITION_DIRECTION_RETURN = 2;
    public boolean elevationShadowEnabled;
    public float endElevation;
    @Nullable
    public ShapeAppearanceModel endShapeAppearanceModel;
    @Nullable
    public View endView;
    @Nullable
    public ProgressThresholds fadeProgressThresholds;
    @Nullable
    public ProgressThresholds scaleMaskProgressThresholds;
    @Nullable
    public ProgressThresholds scaleProgressThresholds;
    @Nullable
    public ProgressThresholds shapeMaskProgressThresholds;
    public float startElevation;
    @Nullable
    public ShapeAppearanceModel startShapeAppearanceModel;
    @Nullable
    public View startView;
    public static final String TAG = MaterialContainerTransform.class.getSimpleName();
    public static final String[] TRANSITION_PROPS = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};
    public static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));
    public static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));
    public static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));
    public static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));
    public boolean drawDebugEnabled = false;
    public boolean holdAtEndEnabled = false;
    @IdRes
    public int drawingViewId = 16908290;
    @IdRes
    public int startViewId = -1;
    @IdRes
    public int endViewId = -1;
    @ColorInt
    public int containerColor = 0;
    @ColorInt
    public int startContainerColor = 0;
    @ColorInt
    public int endContainerColor = 0;
    @ColorInt
    public int scrimColor = 1375731712;
    public int transitionDirection = 0;
    public int fadeMode = 0;
    public int fitMode = 0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes8.dex */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes8.dex */
    public @interface FitMode {
    }

    /* loaded from: classes8.dex */
    public static class ProgressThresholds {
        @FloatRange(from = 0.0d, to = 1.0d)
        public final float end;
        @FloatRange(from = 0.0d, to = 1.0d)
        public final float start;

        public ProgressThresholds(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            this.start = f;
            this.end = f2;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getEnd() {
            return this.end;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getStart() {
            return this.start;
        }
    }

    /* loaded from: classes8.dex */
    public static class ProgressThresholdsGroup {
        @NonNull
        public final ProgressThresholds fade;
        @NonNull
        public final ProgressThresholds scale;
        @NonNull
        public final ProgressThresholds scaleMask;
        @NonNull
        public final ProgressThresholds shapeMask;

        public ProgressThresholdsGroup(@NonNull ProgressThresholds progressThresholds, @NonNull ProgressThresholds progressThresholds2, @NonNull ProgressThresholds progressThresholds3, @NonNull ProgressThresholds progressThresholds4) {
            this.fade = progressThresholds;
            this.scale = progressThresholds2;
            this.scaleMask = progressThresholds3;
            this.shapeMask = progressThresholds4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes8.dex */
    public @interface TransitionDirection {
    }

    /* loaded from: classes8.dex */
    public static final class TransitionDrawable extends Drawable {
        public static final int COMPAT_SHADOW_COLOR = -7829368;
        public static final float COMPAT_SHADOW_OFFSET_MULTIPLIER = 0.75f;
        public static final int SHADOW_COLOR = 754974720;
        public final MaterialShapeDrawable compatShadowDrawable;
        public final Paint containerPaint;
        public float currentElevation;
        public final RectF currentEndBounds;
        public final RectF currentEndBoundsMasked;
        public RectF currentMaskBounds;
        public final RectF currentStartBounds;
        public final RectF currentStartBoundsMasked;
        public final Paint debugPaint;
        public final Path debugPath;
        public final boolean drawDebugEnabled;
        public final boolean elevationShadowEnabled;
        public final RectF endBounds;
        public final Paint endContainerPaint;
        public final float endElevation;
        public final ShapeAppearanceModel endShapeAppearanceModel;
        public final View endView;
        public final boolean entering;
        public final FadeModeEvaluator fadeModeEvaluator;
        public FadeModeResult fadeModeResult;
        public final FitModeEvaluator fitModeEvaluator;
        public FitModeResult fitModeResult;
        public final MaskEvaluator maskEvaluator;
        public final float motionPathLength;
        public final PathMeasure motionPathMeasure;
        public final float[] motionPathPosition;
        public float progress;
        public final ProgressThresholdsGroup progressThresholds;
        public final Paint scrimPaint;
        public final Paint shadowPaint;
        public final RectF startBounds;
        public final Paint startContainerPaint;
        public final float startElevation;
        public final ShapeAppearanceModel startShapeAppearanceModel;
        public final View startView;

        private void drawDebugCumulativePath(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF motionPathPoint = getMotionPathPoint(rectF);
            if (this.progress == 0.0f) {
                path.reset();
                path.moveTo(motionPathPoint.x, motionPathPoint.y);
                return;
            }
            path.lineTo(motionPathPoint.x, motionPathPoint.y);
            this.debugPaint.setColor(i);
            canvas.drawPath(path, this.debugPaint);
        }

        private void drawDebugRect(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.debugPaint.setColor(i);
            canvas.drawRect(rectF, this.debugPaint);
        }

        private void drawElevationShadow(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.maskEvaluator.getPath(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                drawElevationShadowWithPaintShadowLayer(canvas);
            } else {
                drawElevationShadowWithMaterialShapeDrawable(canvas);
            }
            canvas.restore();
        }

        private void drawElevationShadowWithMaterialShapeDrawable(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.compatShadowDrawable;
            RectF rectF = this.currentMaskBounds;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.compatShadowDrawable.setElevation(this.currentElevation);
            this.compatShadowDrawable.setShadowVerticalOffset((int) (this.currentElevation * 0.75f));
            this.compatShadowDrawable.setShapeAppearanceModel(this.maskEvaluator.getCurrentShapeAppearanceModel());
            this.compatShadowDrawable.draw(canvas);
        }

        private void drawElevationShadowWithPaintShadowLayer(Canvas canvas) {
            ShapeAppearanceModel currentShapeAppearanceModel = this.maskEvaluator.getCurrentShapeAppearanceModel();
            if (currentShapeAppearanceModel.isRoundRect(this.currentMaskBounds)) {
                float cornerSize = currentShapeAppearanceModel.getTopLeftCornerSize().getCornerSize(this.currentMaskBounds);
                canvas.drawRoundRect(this.currentMaskBounds, cornerSize, cornerSize, this.shadowPaint);
                return;
            }
            canvas.drawPath(this.maskEvaluator.getPath(), this.shadowPaint);
        }

        private void drawEndView(Canvas canvas) {
            maybeDrawContainerColor(canvas, this.endContainerPaint);
            Rect bounds = getBounds();
            RectF rectF = this.currentEndBounds;
            TransitionUtils.transform(canvas, bounds, rectF.left, rectF.top, this.fitModeResult.endScale, this.fadeModeResult.endAlpha, new TransitionUtils.CanvasOperation() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.TransitionDrawable.2
                @Override // com.google.android.material.transition.platform.TransitionUtils.CanvasOperation
                public void run(Canvas canvas2) {
                    TransitionDrawable.this.endView.draw(canvas2);
                }
            });
        }

        private void drawStartView(Canvas canvas) {
            maybeDrawContainerColor(canvas, this.startContainerPaint);
            Rect bounds = getBounds();
            RectF rectF = this.currentStartBounds;
            TransitionUtils.transform(canvas, bounds, rectF.left, rectF.top, this.fitModeResult.startScale, this.fadeModeResult.startAlpha, new TransitionUtils.CanvasOperation() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.TransitionDrawable.1
                @Override // com.google.android.material.transition.platform.TransitionUtils.CanvasOperation
                public void run(Canvas canvas2) {
                    TransitionDrawable.this.startView.draw(canvas2);
                }
            });
        }

        public static PointF getMotionPathPoint(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        private void maybeDrawContainerColor(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProgress(float f) {
            if (this.progress != f) {
                updateProgress(f);
            }
        }

        private void updateProgress(float f) {
            this.progress = f;
            this.scrimPaint.setAlpha((int) (this.entering ? TransitionUtils.lerp(0.0f, 255.0f, f) : TransitionUtils.lerp(255.0f, 0.0f, f)));
            float lerp = TransitionUtils.lerp(this.startElevation, this.endElevation, f);
            this.currentElevation = lerp;
            this.shadowPaint.setShadowLayer(lerp, 0.0f, lerp, 754974720);
            this.motionPathMeasure.getPosTan(this.motionPathLength * f, this.motionPathPosition, null);
            float[] fArr = this.motionPathPosition;
            float f2 = fArr[0];
            float f3 = fArr[1];
            FitModeResult evaluate = this.fitModeEvaluator.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scale.start))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scale.end))).floatValue(), this.startBounds.width(), this.startBounds.height(), this.endBounds.width(), this.endBounds.height());
            this.fitModeResult = evaluate;
            RectF rectF = this.currentStartBounds;
            float f4 = evaluate.currentStartWidth;
            rectF.set(f2 - (f4 / 2.0f), f3, (f4 / 2.0f) + f2, evaluate.currentStartHeight + f3);
            RectF rectF2 = this.currentEndBounds;
            FitModeResult fitModeResult = this.fitModeResult;
            float f5 = fitModeResult.currentEndWidth;
            rectF2.set(f2 - (f5 / 2.0f), f3, (f5 / 2.0f) + f2, fitModeResult.currentEndHeight + f3);
            this.currentStartBoundsMasked.set(this.currentStartBounds);
            this.currentEndBoundsMasked.set(this.currentEndBounds);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scaleMask.start))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scaleMask.end))).floatValue();
            boolean shouldMaskStartBounds = this.fitModeEvaluator.shouldMaskStartBounds(this.fitModeResult);
            RectF rectF3 = shouldMaskStartBounds ? this.currentStartBoundsMasked : this.currentEndBoundsMasked;
            float lerp2 = TransitionUtils.lerp(0.0f, 1.0f, floatValue, floatValue2, f);
            if (!shouldMaskStartBounds) {
                lerp2 = 1.0f - lerp2;
            }
            this.fitModeEvaluator.applyMask(rectF3, lerp2, this.fitModeResult);
            this.currentMaskBounds = new RectF(Math.min(this.currentStartBoundsMasked.left, this.currentEndBoundsMasked.left), Math.min(this.currentStartBoundsMasked.top, this.currentEndBoundsMasked.top), Math.max(this.currentStartBoundsMasked.right, this.currentEndBoundsMasked.right), Math.max(this.currentStartBoundsMasked.bottom, this.currentEndBoundsMasked.bottom));
            this.maskEvaluator.evaluate(f, this.startShapeAppearanceModel, this.endShapeAppearanceModel, this.currentStartBounds, this.currentStartBoundsMasked, this.currentEndBoundsMasked, this.progressThresholds.shapeMask);
            this.fadeModeResult = this.fadeModeEvaluator.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.fade.start))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.fade.end))).floatValue());
            if (this.startContainerPaint.getColor() != 0) {
                this.startContainerPaint.setAlpha(this.fadeModeResult.startAlpha);
            }
            if (this.endContainerPaint.getColor() != 0) {
                this.endContainerPaint.setAlpha(this.fadeModeResult.endAlpha);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.scrimPaint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.scrimPaint);
            }
            int save = this.drawDebugEnabled ? canvas.save() : -1;
            if (this.elevationShadowEnabled && this.currentElevation > 0.0f) {
                drawElevationShadow(canvas);
            }
            this.maskEvaluator.clip(canvas);
            maybeDrawContainerColor(canvas, this.containerPaint);
            if (this.fadeModeResult.endOnTop) {
                drawStartView(canvas);
                drawEndView(canvas);
            } else {
                drawEndView(canvas);
                drawStartView(canvas);
            }
            if (this.drawDebugEnabled) {
                canvas.restoreToCount(save);
                drawDebugCumulativePath(canvas, this.currentStartBounds, this.debugPath, -65281);
                drawDebugRect(canvas, this.currentStartBoundsMasked, InputDeviceCompat.SOURCE_ANY);
                drawDebugRect(canvas, this.currentStartBounds, -16711936);
                drawDebugRect(canvas, this.currentEndBoundsMasked, -16711681);
                drawDebugRect(canvas, this.currentEndBounds, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        public TransitionDrawable(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, ProgressThresholdsGroup progressThresholdsGroup, boolean z3) {
            this.containerPaint = new Paint();
            this.startContainerPaint = new Paint();
            this.endContainerPaint = new Paint();
            this.shadowPaint = new Paint();
            this.scrimPaint = new Paint();
            this.maskEvaluator = new MaskEvaluator();
            this.motionPathPosition = new float[2];
            this.compatShadowDrawable = new MaterialShapeDrawable();
            this.debugPaint = new Paint();
            this.debugPath = new Path();
            this.startView = view;
            this.startBounds = rectF;
            this.startShapeAppearanceModel = shapeAppearanceModel;
            this.startElevation = f;
            this.endView = view2;
            this.endBounds = rectF2;
            this.endShapeAppearanceModel = shapeAppearanceModel2;
            this.endElevation = f2;
            this.entering = z;
            this.elevationShadowEnabled = z2;
            this.fadeModeEvaluator = fadeModeEvaluator;
            this.fitModeEvaluator = fitModeEvaluator;
            this.progressThresholds = progressThresholdsGroup;
            this.drawDebugEnabled = z3;
            this.containerPaint.setColor(i);
            this.startContainerPaint.setColor(i2);
            this.endContainerPaint.setColor(i3);
            this.compatShadowDrawable.setFillColor(ColorStateList.valueOf(0));
            this.compatShadowDrawable.setShadowCompatibilityMode(2);
            this.compatShadowDrawable.setShadowBitmapDrawingEnable(false);
            this.compatShadowDrawable.setShadowColor(-7829368);
            this.currentStartBounds = new RectF(rectF);
            this.currentStartBoundsMasked = new RectF(this.currentStartBounds);
            this.currentEndBounds = new RectF(this.currentStartBounds);
            this.currentEndBoundsMasked = new RectF(this.currentEndBounds);
            PointF motionPathPoint = getMotionPathPoint(rectF);
            PointF motionPathPoint2 = getMotionPathPoint(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(motionPathPoint.x, motionPathPoint.y, motionPathPoint2.x, motionPathPoint2.y), false);
            this.motionPathMeasure = pathMeasure;
            this.motionPathLength = pathMeasure.getLength();
            this.motionPathPosition[0] = rectF.centerX();
            this.motionPathPosition[1] = rectF.top;
            this.scrimPaint.setStyle(Paint.Style.FILL);
            this.scrimPaint.setShader(TransitionUtils.createColorShader(i4));
            this.debugPaint.setStyle(Paint.Style.STROKE);
            this.debugPaint.setStrokeWidth(10.0f);
            updateProgress(0.0f);
        }
    }

    public MaterialContainerTransform() {
        this.elevationShadowEnabled = Build.VERSION.SDK_INT >= 28;
        this.startElevation = -1.0f;
        this.endElevation = -1.0f;
        setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    }

    private ProgressThresholdsGroup buildThresholdsGroup(boolean z) {
        PathMotion pathMotion = getPathMotion();
        if (!(pathMotion instanceof ArcMotion) && !(pathMotion instanceof MaterialArcMotion)) {
            return getThresholdsOrDefault(z, DEFAULT_ENTER_THRESHOLDS, DEFAULT_RETURN_THRESHOLDS);
        }
        return getThresholdsOrDefault(z, DEFAULT_ENTER_THRESHOLDS_ARC, DEFAULT_RETURN_THRESHOLDS_ARC);
    }

    public static RectF calculateDrawableBounds(View view, @Nullable View view2, float f, float f2) {
        if (view2 != null) {
            RectF locationOnScreen = TransitionUtils.getLocationOnScreen(view2);
            locationOnScreen.offset(f, f2);
            return locationOnScreen;
        }
        return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
    }

    public static ShapeAppearanceModel captureShapeAppearance(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.convertToRelativeCornerSizes(getShapeAppearance(view, shapeAppearanceModel), rectF);
    }

    public static void captureValues(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = TransitionUtils.findDescendantOrAncestorById(transitionValues.view, i);
        } else if (view != null) {
            transitionValues.view = view;
        } else if (transitionValues.view.getTag(R.id.mtrl_motion_snapshot_view) instanceof View) {
            transitionValues.view.setTag(R.id.mtrl_motion_snapshot_view, null);
            transitionValues.view = (View) transitionValues.view.getTag(R.id.mtrl_motion_snapshot_view);
        }
        View view2 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view2) && view2.getWidth() == 0 && view2.getHeight() == 0) {
            return;
        }
        RectF relativeBounds = view2.getParent() == null ? TransitionUtils.getRelativeBounds(view2) : TransitionUtils.getLocationOnScreen(view2);
        transitionValues.values.put("materialContainerTransition:bounds", relativeBounds);
        transitionValues.values.put("materialContainerTransition:shapeAppearance", captureShapeAppearance(view2, relativeBounds, shapeAppearanceModel));
    }

    public static float getElevationOrDefault(float f, View view) {
        return f != -1.0f ? f : ViewCompat.getElevation(view);
    }

    public static ShapeAppearanceModel getShapeAppearance(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        if (view.getTag(R.id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(R.id.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int transitionShapeAppearanceResId = getTransitionShapeAppearanceResId(context);
        if (transitionShapeAppearanceResId != -1) {
            return ShapeAppearanceModel.builder(context, transitionShapeAppearanceResId, 0).build();
        }
        if (view instanceof Shapeable) {
            return ((Shapeable) view).getShapeAppearanceModel();
        }
        return ShapeAppearanceModel.builder().build();
    }

    private ProgressThresholdsGroup getThresholdsOrDefault(boolean z, ProgressThresholdsGroup progressThresholdsGroup, ProgressThresholdsGroup progressThresholdsGroup2) {
        if (!z) {
            progressThresholdsGroup = progressThresholdsGroup2;
        }
        return new ProgressThresholdsGroup((ProgressThresholds) TransitionUtils.defaultIfNull(this.fadeProgressThresholds, progressThresholdsGroup.fade), (ProgressThresholds) TransitionUtils.defaultIfNull(this.scaleProgressThresholds, progressThresholdsGroup.scale), (ProgressThresholds) TransitionUtils.defaultIfNull(this.scaleMaskProgressThresholds, progressThresholdsGroup.scaleMask), (ProgressThresholds) TransitionUtils.defaultIfNull(this.shapeMaskProgressThresholds, progressThresholdsGroup.shapeMask));
    }

    @StyleRes
    public static int getTransitionShapeAppearanceResId(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean isEntering(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.transitionDirection;
        if (i == 0) {
            return TransitionUtils.calculateArea(rectF2) > TransitionUtils.calculateArea(rectF);
        } else if (i != 1) {
            if (i == 2) {
                return false;
            }
            StringBuilder m1016super = Cgoto.m1016super("Invalid transition direction: ");
            m1016super.append(this.transitionDirection);
            throw new IllegalArgumentException(m1016super.toString());
        } else {
            return true;
        }
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues, this.endView, this.endViewId, this.endShapeAppearanceModel);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues, this.startView, this.startViewId, this.startShapeAppearanceModel);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        final View findAncestorById;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get("materialContainerTransition:bounds");
            ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get("materialContainerTransition:shapeAppearance");
            if (rectF != null && shapeAppearanceModel != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get("materialContainerTransition:bounds");
                ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get("materialContainerTransition:shapeAppearance");
                if (rectF2 != null && shapeAppearanceModel2 != null) {
                    final View view = transitionValues.view;
                    final View view2 = transitionValues2.view;
                    View view3 = view2.getParent() != null ? view2 : view;
                    if (this.drawingViewId == view3.getId()) {
                        findAncestorById = (View) view3.getParent();
                    } else {
                        findAncestorById = TransitionUtils.findAncestorById(view3, this.drawingViewId);
                        view3 = null;
                    }
                    RectF locationOnScreen = TransitionUtils.getLocationOnScreen(findAncestorById);
                    float f = -locationOnScreen.left;
                    float f2 = -locationOnScreen.top;
                    RectF calculateDrawableBounds = calculateDrawableBounds(findAncestorById, view3, f, f2);
                    rectF.offset(f, f2);
                    rectF2.offset(f, f2);
                    boolean isEntering = isEntering(rectF, rectF2);
                    final TransitionDrawable transitionDrawable = new TransitionDrawable(getPathMotion(), view, rectF, shapeAppearanceModel, getElevationOrDefault(this.startElevation, view), view2, rectF2, shapeAppearanceModel2, getElevationOrDefault(this.endElevation, view2), this.containerColor, this.startContainerColor, this.endContainerColor, this.scrimColor, isEntering, this.elevationShadowEnabled, FadeModeEvaluators.get(this.fadeMode, isEntering), FitModeEvaluators.get(this.fitMode, isEntering, rectF, rectF2), buildThresholdsGroup(isEntering), this.drawDebugEnabled);
                    transitionDrawable.setBounds(Math.round(calculateDrawableBounds.left), Math.round(calculateDrawableBounds.top), Math.round(calculateDrawableBounds.right), Math.round(calculateDrawableBounds.bottom));
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            transitionDrawable.setProgress(valueAnimator.getAnimatedFraction());
                        }
                    });
                    addListener(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.2
                        @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                        public void onTransitionEnd(@NonNull Transition transition) {
                            if (MaterialContainerTransform.this.holdAtEndEnabled) {
                                return;
                            }
                            view.setAlpha(1.0f);
                            view2.setAlpha(1.0f);
                            ViewUtils.getOverlay(findAncestorById).remove(transitionDrawable);
                        }

                        @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                        public void onTransitionStart(@NonNull Transition transition) {
                            ViewUtils.getOverlay(findAncestorById).add(transitionDrawable);
                            view.setAlpha(0.0f);
                            view2.setAlpha(0.0f);
                        }
                    });
                    return ofFloat;
                }
            }
        }
        return null;
    }

    @ColorInt
    public int getContainerColor() {
        return this.containerColor;
    }

    @IdRes
    public int getDrawingViewId() {
        return this.drawingViewId;
    }

    @ColorInt
    public int getEndContainerColor() {
        return this.endContainerColor;
    }

    public float getEndElevation() {
        return this.endElevation;
    }

    @Nullable
    public ShapeAppearanceModel getEndShapeAppearanceModel() {
        return this.endShapeAppearanceModel;
    }

    @Nullable
    public View getEndView() {
        return this.endView;
    }

    @IdRes
    public int getEndViewId() {
        return this.endViewId;
    }

    public int getFadeMode() {
        return this.fadeMode;
    }

    @Nullable
    public ProgressThresholds getFadeProgressThresholds() {
        return this.fadeProgressThresholds;
    }

    public int getFitMode() {
        return this.fitMode;
    }

    @Nullable
    public ProgressThresholds getScaleMaskProgressThresholds() {
        return this.scaleMaskProgressThresholds;
    }

    @Nullable
    public ProgressThresholds getScaleProgressThresholds() {
        return this.scaleProgressThresholds;
    }

    @ColorInt
    public int getScrimColor() {
        return this.scrimColor;
    }

    @Nullable
    public ProgressThresholds getShapeMaskProgressThresholds() {
        return this.shapeMaskProgressThresholds;
    }

    @ColorInt
    public int getStartContainerColor() {
        return this.startContainerColor;
    }

    public float getStartElevation() {
        return this.startElevation;
    }

    @Nullable
    public ShapeAppearanceModel getStartShapeAppearanceModel() {
        return this.startShapeAppearanceModel;
    }

    @Nullable
    public View getStartView() {
        return this.startView;
    }

    @IdRes
    public int getStartViewId() {
        return this.startViewId;
    }

    public int getTransitionDirection() {
        return this.transitionDirection;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return TRANSITION_PROPS;
    }

    public boolean isDrawDebugEnabled() {
        return this.drawDebugEnabled;
    }

    public boolean isElevationShadowEnabled() {
        return this.elevationShadowEnabled;
    }

    public boolean isHoldAtEndEnabled() {
        return this.holdAtEndEnabled;
    }

    public void setAllContainerColors(@ColorInt int i) {
        this.containerColor = i;
        this.startContainerColor = i;
        this.endContainerColor = i;
    }

    public void setContainerColor(@ColorInt int i) {
        this.containerColor = i;
    }

    public void setDrawDebugEnabled(boolean z) {
        this.drawDebugEnabled = z;
    }

    public void setDrawingViewId(@IdRes int i) {
        this.drawingViewId = i;
    }

    public void setElevationShadowEnabled(boolean z) {
        this.elevationShadowEnabled = z;
    }

    public void setEndContainerColor(@ColorInt int i) {
        this.endContainerColor = i;
    }

    public void setEndElevation(float f) {
        this.endElevation = f;
    }

    public void setEndShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.endShapeAppearanceModel = shapeAppearanceModel;
    }

    public void setEndView(@Nullable View view) {
        this.endView = view;
    }

    public void setEndViewId(@IdRes int i) {
        this.endViewId = i;
    }

    public void setFadeMode(int i) {
        this.fadeMode = i;
    }

    public void setFadeProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.fadeProgressThresholds = progressThresholds;
    }

    public void setFitMode(int i) {
        this.fitMode = i;
    }

    public void setHoldAtEndEnabled(boolean z) {
        this.holdAtEndEnabled = z;
    }

    public void setScaleMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.scaleMaskProgressThresholds = progressThresholds;
    }

    public void setScaleProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.scaleProgressThresholds = progressThresholds;
    }

    public void setScrimColor(@ColorInt int i) {
        this.scrimColor = i;
    }

    public void setShapeMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.shapeMaskProgressThresholds = progressThresholds;
    }

    public void setStartContainerColor(@ColorInt int i) {
        this.startContainerColor = i;
    }

    public void setStartElevation(float f) {
        this.startElevation = f;
    }

    public void setStartShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.startShapeAppearanceModel = shapeAppearanceModel;
    }

    public void setStartView(@Nullable View view) {
        this.startView = view;
    }

    public void setStartViewId(@IdRes int i) {
        this.startViewId = i;
    }

    public void setTransitionDirection(int i) {
        this.transitionDirection = i;
    }
}
