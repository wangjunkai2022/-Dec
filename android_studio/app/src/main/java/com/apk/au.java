package com.apk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import com.codelibrary.R$id;

/* compiled from: BarConfig.java */
/* loaded from: classes8.dex */
public class au {

    /* renamed from: case  reason: not valid java name */
    public final boolean f171case;

    /* renamed from: do  reason: not valid java name */
    public final int f172do;

    /* renamed from: else  reason: not valid java name */
    public final float f173else;

    /* renamed from: for  reason: not valid java name */
    public final boolean f174for;

    /* renamed from: if  reason: not valid java name */
    public final int f175if;

    /* renamed from: new  reason: not valid java name */
    public final int f176new;

    /* renamed from: try  reason: not valid java name */
    public final int f177try;

    public au(Activity activity) {
        int i;
        this.f171case = activity.getResources().getConfiguration().orientation == 1;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        float f = displayMetrics.density;
        this.f173else = Math.min(displayMetrics.widthPixels / f, displayMetrics.heightPixels / f);
        this.f172do = m111do(activity, "status_bar_height");
        View findViewById = activity.getWindow().findViewById(R$id.action_bar_container);
        int measuredHeight = findViewById != null ? findViewById.getMeasuredHeight() : 0;
        if (measuredHeight == 0) {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(16843499, typedValue, true);
            measuredHeight = TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
        }
        this.f175if = measuredHeight;
        if (m113if(activity)) {
            i = m111do(activity, this.f171case ? "navigation_bar_height" : "navigation_bar_height_landscape");
        } else {
            i = 0;
        }
        this.f176new = i;
        this.f177try = m113if(activity) ? m111do(activity, "navigation_bar_width") : 0;
        this.f174for = this.f176new > 0;
    }

    /* renamed from: do  reason: not valid java name */
    public final int m111do(Context context, String str) {
        try {
            int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
            if (identifier > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                int dimensionPixelSize2 = Resources.getSystem().getDimensionPixelSize(identifier);
                if (dimensionPixelSize2 >= dimensionPixelSize) {
                    return dimensionPixelSize2;
                }
                float f = (dimensionPixelSize * Resources.getSystem().getDisplayMetrics().density) / context.getResources().getDisplayMetrics().density;
                return (int) (f >= 0.0f ? f + 0.5f : f - 0.5f);
            }
            return 0;
        } catch (Resources.NotFoundException unused) {
            return 0;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m112for() {
        return this.f173else >= 600.0f || this.f171case;
    }

    @TargetApi(14)
    /* renamed from: if  reason: not valid java name */
    public final boolean m113if(Activity activity) {
        if (Settings.Global.getInt(activity.getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
            return false;
        }
        if (mu.i()) {
            if (!mu.j()) {
                if (Settings.Global.getInt(activity.getContentResolver(), "navigationbar_is_min", 0) != 0) {
                    return false;
                }
            } else if (Settings.System.getInt(activity.getContentResolver(), "navigationbar_is_min", 0) != 0) {
                return false;
            }
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        if (eg.m603interface(activity) || iu.m1271case(activity)) {
            i -= this.f172do;
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i2 - displayMetrics2.widthPixels > 0 || i - displayMetrics2.heightPixels > 0;
    }
}
