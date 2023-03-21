package com.apk;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* compiled from: MemorySizeCalculator.java */
/* loaded from: classes8.dex */
public final class im {

    /* renamed from: do  reason: not valid java name */
    public final int f2151do;

    /* renamed from: for  reason: not valid java name */
    public final Context f2152for;

    /* renamed from: if  reason: not valid java name */
    public final int f2153if;

    /* renamed from: new  reason: not valid java name */
    public final int f2154new;

    /* compiled from: MemorySizeCalculator.java */
    /* renamed from: com.apk.im$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo {

        /* renamed from: this  reason: not valid java name */
        public static final int f2155this;

        /* renamed from: do  reason: not valid java name */
        public final Context f2157do;

        /* renamed from: for  reason: not valid java name */
        public Cfor f2159for;

        /* renamed from: if  reason: not valid java name */
        public ActivityManager f2161if;

        /* renamed from: try  reason: not valid java name */
        public float f2163try;

        /* renamed from: new  reason: not valid java name */
        public float f2162new = 2.0f;

        /* renamed from: case  reason: not valid java name */
        public float f2156case = 0.4f;

        /* renamed from: else  reason: not valid java name */
        public float f2158else = 0.33f;

        /* renamed from: goto  reason: not valid java name */
        public int f2160goto = 4194304;

        static {
            f2155this = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public Cdo(Context context) {
            this.f2163try = f2155this;
            this.f2157do = context;
            this.f2161if = (ActivityManager) context.getSystemService("activity");
            this.f2159for = new Cif(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !this.f2161if.isLowRamDevice()) {
                return;
            }
            this.f2163try = 0.0f;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* renamed from: com.apk.im$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {
    }

    /* compiled from: MemorySizeCalculator.java */
    /* renamed from: com.apk.im$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements Cfor {

        /* renamed from: do  reason: not valid java name */
        public final DisplayMetrics f2164do;

        public Cif(DisplayMetrics displayMetrics) {
            this.f2164do = displayMetrics;
        }
    }

    public im(Cdo cdo) {
        int i;
        this.f2152for = cdo.f2157do;
        if (cdo.f2161if.isLowRamDevice()) {
            i = cdo.f2160goto / 2;
        } else {
            i = cdo.f2160goto;
        }
        this.f2154new = i;
        ActivityManager activityManager = cdo.f2161if;
        float f = cdo.f2156case;
        int round = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (activityManager.isLowRamDevice() ? cdo.f2158else : f));
        DisplayMetrics displayMetrics = ((Cif) cdo.f2159for).f2164do;
        float f2 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int round2 = Math.round(cdo.f2163try * f2);
        int round3 = Math.round(f2 * cdo.f2162new);
        int i2 = round - this.f2154new;
        if (round3 + round2 <= i2) {
            this.f2153if = round3;
            this.f2151do = round2;
        } else {
            float f3 = i2;
            float f4 = cdo.f2163try;
            float f5 = cdo.f2162new;
            float f6 = f3 / (f4 + f5);
            this.f2153if = Math.round(f5 * f6);
            this.f2151do = Math.round(f6 * cdo.f2163try);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            m1245do(this.f2153if);
            m1245do(this.f2151do);
            m1245do(this.f2154new);
            m1245do(round);
            cdo.f2161if.getMemoryClass();
            cdo.f2161if.isLowRamDevice();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final String m1245do(int i) {
        return Formatter.formatFileSize(this.f2152for, i);
    }
}
