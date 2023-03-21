package com.apk;

import android.content.Context;
import android.content.SharedPreferences;
/* compiled from: SkinPreference.java */
/* loaded from: classes7.dex */
public class kr0 {

    /* renamed from: new  reason: not valid java name */
    public static kr0 f2656new;

    /* renamed from: do  reason: not valid java name */
    public final Context f2657do;

    /* renamed from: for  reason: not valid java name */
    public final SharedPreferences.Editor f2658for;

    /* renamed from: if  reason: not valid java name */
    public final SharedPreferences f2659if;

    public kr0(Context context) {
        this.f2657do = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("meta-data", 0);
        this.f2659if = sharedPreferences;
        this.f2658for = sharedPreferences.edit();
    }
}
