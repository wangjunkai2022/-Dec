package com.apk;

import android.text.TextUtils;
/* compiled from: ColorState.java */
/* loaded from: classes7.dex */
public final class jq0 {

    /* renamed from: break  reason: not valid java name */
    public String f2405break;

    /* renamed from: case  reason: not valid java name */
    public String f2406case;

    /* renamed from: catch  reason: not valid java name */
    public String f2407catch;

    /* renamed from: class  reason: not valid java name */
    public String f2408class;

    /* renamed from: const  reason: not valid java name */
    public String f2409const;

    /* renamed from: do  reason: not valid java name */
    public boolean f2410do;

    /* renamed from: else  reason: not valid java name */
    public String f2411else;

    /* renamed from: final  reason: not valid java name */
    public String f2412final;

    /* renamed from: for  reason: not valid java name */
    public String f2413for;

    /* renamed from: goto  reason: not valid java name */
    public String f2414goto;

    /* renamed from: if  reason: not valid java name */
    public String f2415if;

    /* renamed from: new  reason: not valid java name */
    public String f2416new;

    /* renamed from: this  reason: not valid java name */
    public String f2417this;

    /* renamed from: try  reason: not valid java name */
    public String f2418try;

    public jq0(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.f2413for = str;
        this.f2416new = str2;
        this.f2418try = str3;
        this.f2406case = str4;
        this.f2411else = str5;
        this.f2414goto = str6;
        this.f2417this = str7;
        this.f2405break = str8;
        this.f2407catch = str9;
        this.f2408class = str10;
        this.f2409const = str11;
        this.f2412final = str12;
        boolean z = TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7) && TextUtils.isEmpty(str8) && TextUtils.isEmpty(str9) && TextUtils.isEmpty(str10) && TextUtils.isEmpty(str11);
        this.f2410do = z;
        if (z && !str12.startsWith("#")) {
            throw new br0("Default color cannot be a reference, when only default color is available!");
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m1393do(String str, String str2) {
        return !TextUtils.isEmpty(str2) && (!str2.startsWith("#") || str2.length() == 7 || str2.length() == 9);
    }

    /* renamed from: if  reason: not valid java name */
    public final String m1394if(String str) {
        if (str.startsWith("#")) {
            return str;
        }
        jq0 jq0Var = nq0.f3289this.f3291do.get(str);
        if (jq0Var == null || !jq0Var.f2410do) {
            return null;
        }
        return jq0Var.f2412final;
    }

    public jq0(String str, String str2) {
        this.f2415if = str;
        this.f2412final = str2;
        this.f2410do = true;
        if (!str2.startsWith("#")) {
            throw new br0("Default color cannot be a reference, when only default color is available!");
        }
    }
}
