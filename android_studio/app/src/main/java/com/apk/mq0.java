package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;

/* compiled from: SkinCompatThemeUtils.java */
/* loaded from: classes7.dex */
public class mq0 {

    /* renamed from: do  reason: not valid java name */
    public static final ThreadLocal<TypedValue> f3083do = new ThreadLocal<>();

    /* renamed from: if  reason: not valid java name */
    public static final int[] f3088if = {-16842910};

    /* renamed from: for  reason: not valid java name */
    public static final int[] f3086for = {16842910};

    /* renamed from: new  reason: not valid java name */
    public static final int[] f3089new = {16842909};

    /* renamed from: try  reason: not valid java name */
    public static final int[] f3092try = {16842908};

    /* renamed from: case  reason: not valid java name */
    public static final int[] f3079case = {16843518};

    /* renamed from: else  reason: not valid java name */
    public static final int[] f3084else = {16843547};

    /* renamed from: goto  reason: not valid java name */
    public static final int[] f3087goto = {16843623};

    /* renamed from: this  reason: not valid java name */
    public static final int[] f3091this = {16843624};

    /* renamed from: break  reason: not valid java name */
    public static final int[] f3078break = {16843625};

    /* renamed from: catch  reason: not valid java name */
    public static final int[] f3080catch = {16842919};

    /* renamed from: class  reason: not valid java name */
    public static final int[] f3081class = {16842912};

    /* renamed from: const  reason: not valid java name */
    public static final int[] f3082const = {16842913};

    /* renamed from: final  reason: not valid java name */
    public static final int[] f3085final = new int[0];

    /* renamed from: super  reason: not valid java name */
    public static final int[] f3090super = new int[1];

    /* renamed from: case  reason: not valid java name */
    public static int m1746case(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16842836});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1747do(Context context, int i) {
        ColorStateList m1751try = m1751try(context, i);
        if (m1751try != null && m1751try.isStateful()) {
            return m1751try.getColorForState(f3088if, m1751try.getDefaultColor());
        }
        TypedValue typedValue = f3083do.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            f3083do.set(typedValue);
        }
        context.getTheme().resolveAttribute(16842803, typedValue, true);
        float f = typedValue.getFloat();
        int m1750new = m1750new(context, i);
        int round = Math.round(Color.alpha(m1750new) * f);
        if (round < 0 || round > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (m1750new & 16777215) | (round << 24);
    }

    /* renamed from: for  reason: not valid java name */
    public static int m1748for(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16842806});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: if  reason: not valid java name */
    public static int m1749if(Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: new  reason: not valid java name */
    public static int m1750new(Context context, int i) {
        int[] iArr = f3090super;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            if (resourceId != 0) {
                return lq0.m1660do(context, resourceId);
            }
            return 0;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static ColorStateList m1751try(Context context, int i) {
        int[] iArr = f3090super;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            if (resourceId != 0) {
                return lq0.m1662if(context, resourceId);
            }
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
