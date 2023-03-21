package com.apk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.R;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.core.graphics.ColorUtils;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: SkinCompatDrawableManager.java */
/* loaded from: classes7.dex */
public final class kq0 {

    /* renamed from: this  reason: not valid java name */
    public static kq0 f2646this;

    /* renamed from: case  reason: not valid java name */
    public TypedValue f2648case;

    /* renamed from: do  reason: not valid java name */
    public WeakHashMap<Context, SparseArray<ColorStateList>> f2649do;

    /* renamed from: else  reason: not valid java name */
    public boolean f2650else;

    /* renamed from: for  reason: not valid java name */
    public SparseArray<String> f2651for;

    /* renamed from: if  reason: not valid java name */
    public ArrayMap<String, Cfor> f2652if;

    /* renamed from: new  reason: not valid java name */
    public final Object f2653new = new Object();

    /* renamed from: try  reason: not valid java name */
    public final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> f2654try = new WeakHashMap<>(0);

    /* renamed from: goto  reason: not valid java name */
    public static final PorterDuff.Mode f2644goto = PorterDuff.Mode.SRC_IN;

    /* renamed from: break  reason: not valid java name */
    public static final Cif f2639break = new Cif(6);

    /* renamed from: catch  reason: not valid java name */
    public static final int[] f2640catch = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: class  reason: not valid java name */
    public static final int[] f2641class = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: const  reason: not valid java name */
    public static final int[] f2642const = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};

    /* renamed from: final  reason: not valid java name */
    public static final int[] f2643final = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

    /* renamed from: super  reason: not valid java name */
    public static final int[] f2645super = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

    /* renamed from: throw  reason: not valid java name */
    public static final int[] f2647throw = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};

    /* compiled from: SkinCompatDrawableManager.java */
    @RequiresApi(11)
    @TargetApi(11)
    /* renamed from: com.apk.kq0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo implements Cfor {
        @Override // com.apk.kq0.Cfor
        @SuppressLint({"NewApi"})
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, null);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: SkinCompatDrawableManager.java */
    /* renamed from: com.apk.kq0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cfor {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* compiled from: SkinCompatDrawableManager.java */
    /* renamed from: com.apk.kq0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends LruCache<Integer, PorterDuffColorFilter> {
        public Cif(int i) {
            super(i);
        }
    }

    /* compiled from: SkinCompatDrawableManager.java */
    /* renamed from: com.apk.kq0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cnew implements Cfor {
        @Override // com.apk.kq0.Cfor
        @SuppressLint({"NewApi"})
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, (Resources.Theme) null);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static PorterDuffColorFilter m1546else(int i, PorterDuff.Mode mode) {
        Cif cif = f2639break;
        if (cif != null) {
            int i2 = (i + 31) * 31;
            PorterDuffColorFilter porterDuffColorFilter = cif.get(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                Cif cif2 = f2639break;
                if (cif2 != null) {
                    cif2.put(Integer.valueOf(mode.hashCode() + i2), porterDuffColorFilter);
                } else {
                    throw null;
                }
            }
            return porterDuffColorFilter;
        }
        throw null;
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m1547goto(Drawable drawable, int i, PorterDuff.Mode mode) {
        if (sb0.m2411final(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = f2644goto;
        }
        drawable.setColorFilter(m1546else(i, mode));
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m1548if(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: new  reason: not valid java name */
    public static kq0 m1549new() {
        if (f2646this == null) {
            kq0 kq0Var = new kq0();
            f2646this = kq0Var;
            if (Build.VERSION.SDK_INT < 24) {
                Cnew cnew = new Cnew();
                if (kq0Var.f2652if == null) {
                    kq0Var.f2652if = new ArrayMap<>();
                }
                kq0Var.f2652if.put(VectorDrawableCompat.SHAPE_VECTOR, cnew);
                Cdo cdo = new Cdo();
                if (kq0Var.f2652if == null) {
                    kq0Var.f2652if = new ArrayMap<>();
                }
                kq0Var.f2652if.put(AnimatedVectorDrawableCompat.ANIMATED_VECTOR, cdo);
            }
        }
        return f2646this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        if (((r4 instanceof androidx.vectordrawable.graphics.drawable.VectorDrawableCompat) || "android.graphics.drawable.VectorDrawable".equals(r4.getClass().getName())) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
        if (r16.f2652if.get(r4) != null) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0147  */
    /* renamed from: case  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.drawable.Drawable m1550case(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.DrawableRes int r18) {
        /*
            Method dump skipped, instructions count: 943
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.kq0.m1550case(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m1551do(@NonNull Context context, long j, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            synchronized (this.f2653new) {
                LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f2654try.get(context);
                if (longSparseArray == null) {
                    longSparseArray = new LongSparseArray<>();
                    this.f2654try.put(context, longSparseArray);
                }
                longSparseArray.put(j, new WeakReference<>(constantState));
            }
            return true;
        }
        return false;
    }

    /* renamed from: for  reason: not valid java name */
    public final ColorStateList m1552for(@NonNull Context context, @ColorInt int i) {
        int m1750new = mq0.m1750new(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{mq0.f3088if, mq0.f3080catch, mq0.f3092try, mq0.f3085final}, new int[]{mq0.m1747do(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(m1750new, i), ColorUtils.compositeColors(m1750new, i), i});
    }

    /* renamed from: try  reason: not valid java name */
    public final Drawable m1553try(@NonNull Context context, long j) {
        synchronized (this.f2653new) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f2654try.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                longSparseArray.delete(j);
            }
            return null;
        }
    }
}
