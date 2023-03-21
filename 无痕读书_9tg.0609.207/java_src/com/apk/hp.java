package com.apk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.apk.lp;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GifDrawable.java */
/* loaded from: classes8.dex */
public class hp extends Drawable implements lp.Cif, Animatable, Animatable2Compat {

    /* renamed from: break  reason: not valid java name */
    public Rect f1926break;

    /* renamed from: case  reason: not valid java name */
    public int f1927case;

    /* renamed from: catch  reason: not valid java name */
    public List<Animatable2Compat.AnimationCallback> f1928catch;

    /* renamed from: do  reason: not valid java name */
    public final Cdo f1929do;

    /* renamed from: else  reason: not valid java name */
    public int f1930else;

    /* renamed from: for  reason: not valid java name */
    public boolean f1931for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f1932goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f1933if;

    /* renamed from: new  reason: not valid java name */
    public boolean f1934new;

    /* renamed from: this  reason: not valid java name */
    public Paint f1935this;

    /* renamed from: try  reason: not valid java name */
    public boolean f1936try;

    /* compiled from: GifDrawable.java */
    /* renamed from: com.apk.hp$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo extends Drawable.ConstantState {
        @VisibleForTesting

        /* renamed from: do  reason: not valid java name */
        public final lp f1937do;

        public Cdo(lp lpVar) {
            this.f1937do = lpVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new hp(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new hp(this);
        }
    }

    public hp(Context context, GifDecoder gifDecoder, qj<Bitmap> qjVar, int i, int i2, Bitmap bitmap) {
        Cdo cdo = new Cdo(new lp(ii.m1220new(context), gifDecoder, i, i2, qjVar, bitmap));
        this.f1936try = true;
        this.f1930else = -1;
        eg.m593else(cdo, "Argument must not be null");
        this.f1929do = cdo;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f1928catch;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.apk.lp.Cif
    /* renamed from: do  reason: not valid java name */
    public void mo1150do() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        lp.Cdo cdo = this.f1929do.f1937do.f2849break;
        if ((cdo != null ? cdo.f2869try : -1) == this.f1929do.f1937do.f2854do.mo3072for() - 1) {
            this.f1927case++;
        }
        int i = this.f1930else;
        if (i == -1 || this.f1927case < i) {
            return;
        }
        List<Animatable2Compat.AnimationCallback> list = this.f1928catch;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1928catch.get(i2).onAnimationEnd(this);
            }
        }
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap;
        if (this.f1934new) {
            return;
        }
        if (this.f1932goto) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f1926break == null) {
                this.f1926break = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f1926break);
            this.f1932goto = false;
        }
        lp lpVar = this.f1929do.f1937do;
        lp.Cdo cdo = lpVar.f2849break;
        if (cdo != null) {
            bitmap = cdo.f2867else;
        } else {
            bitmap = lpVar.f2853const;
        }
        if (this.f1926break == null) {
            this.f1926break = new Rect();
        }
        canvas.drawBitmap(bitmap, (Rect) null, this.f1926break, m1151for());
    }

    /* renamed from: for  reason: not valid java name */
    public final Paint m1151for() {
        if (this.f1935this == null) {
            this.f1935this = new Paint(2);
        }
        return this.f1935this;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f1929do;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1929do.f1937do.f2865while;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1929do.f1937do.f2863throw;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* renamed from: if  reason: not valid java name */
    public Bitmap m1152if() {
        return this.f1929do.f1937do.f2853const;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f1933if;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m1153new() {
        eg.m620try(!this.f1934new, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f1929do.f1937do.f2854do.mo3072for() == 1) {
            invalidateSelf();
        } else if (this.f1933if) {
        } else {
            this.f1933if = true;
            lp lpVar = this.f1929do.f1937do;
            if (!lpVar.f2851catch) {
                if (!lpVar.f2857for.contains(this)) {
                    boolean isEmpty = lpVar.f2857for.isEmpty();
                    lpVar.f2857for.add(this);
                    if (isEmpty && !lpVar.f2850case) {
                        lpVar.f2850case = true;
                        lpVar.f2851catch = false;
                        lpVar.m1648do();
                    }
                    invalidateSelf();
                    return;
                }
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1932goto = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f1928catch == null) {
            this.f1928catch = new ArrayList();
        }
        this.f1928catch.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m1151for().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m1151for().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        eg.m620try(!this.f1934new, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f1936try = z;
        if (!z) {
            m1154try();
        } else if (this.f1931for) {
            m1153new();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f1931for = true;
        this.f1927case = 0;
        if (this.f1936try) {
            m1153new();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f1931for = false;
        m1154try();
    }

    /* renamed from: try  reason: not valid java name */
    public final void m1154try() {
        this.f1933if = false;
        lp lpVar = this.f1929do.f1937do;
        lpVar.f2857for.remove(this);
        if (lpVar.f2857for.isEmpty()) {
            lpVar.f2850case = false;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f1928catch;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    public hp(Cdo cdo) {
        this.f1936try = true;
        this.f1930else = -1;
        eg.m593else(cdo, "Argument must not be null");
        this.f1929do = cdo;
    }
}
