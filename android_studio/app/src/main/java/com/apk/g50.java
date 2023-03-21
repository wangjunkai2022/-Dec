package com.apk;

import android.content.SharedPreferences;
import com.tencent.mmkv.MMKV;

/* compiled from: TrSpManager.java */
/* loaded from: classes7.dex */
public class g50 {

    /* renamed from: do  reason: not valid java name */
    public static MMKV f1517do;

    static {
        try {
            f1517do = MMKV.defaultMMKV();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static int m943do(String str, int i) {
        try {
            MMKV mmkv = f1517do;
            if (mmkv != null) {
                return mmkv.decodeInt(str, i);
            }
            SharedPreferences sharedPreferences = v70.m2781if().f5027do;
            return sharedPreferences != null ? sharedPreferences.getInt(str, i) : i;
        } catch (Exception e) {
            e.printStackTrace();
            return i;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m944for(String str, boolean z) {
        try {
            MMKV mmkv = f1517do;
            if (mmkv != null) {
                return mmkv.decodeBool(str, z);
            }
            SharedPreferences sharedPreferences = v70.m2781if().f5027do;
            return sharedPreferences != null ? sharedPreferences.getBoolean(str, z) : z;
        } catch (Exception e) {
            e.printStackTrace();
            return z;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static long m945if(String str, long j) {
        try {
            MMKV mmkv = f1517do;
            if (mmkv != null) {
                return mmkv.getLong(str, j);
            }
            SharedPreferences sharedPreferences = v70.m2781if().f5027do;
            return sharedPreferences != null ? sharedPreferences.getLong(str, j) : j;
        } catch (Exception e) {
            e.printStackTrace();
            return j;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m946new(String str, int i) {
        try {
            MMKV mmkv = f1517do;
            if (mmkv != null) {
                mmkv.putInt(str, i);
                return;
            }
            v70 m2781if = v70.m2781if();
            SharedPreferences.Editor editor = m2781if.f5028if;
            if (editor != null) {
                editor.putInt(str, i);
            }
            m2781if.m2782do();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static void m947try(String str, boolean z) {
        try {
            MMKV mmkv = f1517do;
            if (mmkv != null) {
                mmkv.putBoolean(str, z);
                return;
            }
            v70 m2781if = v70.m2781if();
            SharedPreferences.Editor editor = m2781if.f5028if;
            if (editor != null) {
                editor.putBoolean(str, z);
            }
            m2781if.m2782do();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
