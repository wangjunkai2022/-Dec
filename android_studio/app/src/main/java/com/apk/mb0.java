package com.apk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: TrAnchePreference.java */
/* loaded from: classes7.dex */
public class mb0 implements nb0 {

    /* renamed from: do  reason: not valid java name */
    public SharedPreferences f3000do;

    /* renamed from: if  reason: not valid java name */
    public SharedPreferences.Editor f3001if;

    @SuppressLint({"CommitPrefEdits"})
    public mb0(Context context, String str) {
        this.f3000do = null;
        this.f3001if = null;
        if (context != null) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                this.f3000do = sharedPreferences;
                this.f3001if = sharedPreferences.edit();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m1689do() {
        SharedPreferences.Editor editor = this.f3001if;
        if (editor != null) {
            editor.apply();
        }
    }
}
