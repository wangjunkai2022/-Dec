package com.apk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrAnchePreference.java */
/* loaded from: classes7.dex */
public class v70 {

    /* renamed from: for  reason: not valid java name */
    public static v70 f5026for;

    /* renamed from: do  reason: not valid java name */
    public SharedPreferences f5027do;

    /* renamed from: if  reason: not valid java name */
    public SharedPreferences.Editor f5028if;

    @SuppressLint({"CommitPrefEdits"})
    public v70(Context context, String str) {
        this.f5027do = null;
        this.f5028if = null;
        if (context != null) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                this.f5027do = sharedPreferences;
                this.f5028if = sharedPreferences.edit();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static v70 m2781if() {
        if (f5026for == null) {
            synchronized (v70.class) {
                if (f5026for == null) {
                    f5026for = new v70(TrAdSdk.getApp(), "TR_AD_SP");
                }
            }
        }
        return f5026for;
    }

    /* renamed from: do  reason: not valid java name */
    public void m2782do() {
        SharedPreferences.Editor editor = this.f5028if;
        if (editor != null) {
            editor.apply();
        }
    }
}
