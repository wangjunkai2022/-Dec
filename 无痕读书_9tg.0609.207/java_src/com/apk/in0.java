package com.apk;
/* compiled from: SpecialEntity.java */
/* loaded from: classes7.dex */
public class in0 {

    /* renamed from: do  reason: not valid java name */
    public final String f2203do;

    /* renamed from: for  reason: not valid java name */
    public final String f2204for;

    /* renamed from: if  reason: not valid java name */
    public final int f2205if;

    /* renamed from: new  reason: not valid java name */
    public boolean f2206new;

    /* renamed from: try  reason: not valid java name */
    public final String f2207try;

    public in0(String str, int i, String str2, boolean z) {
        this.f2203do = str;
        this.f2205if = i;
        String m996else = Cgoto.m996else("&", str, ";");
        if (str2 != null) {
            this.f2204for = str2;
        } else {
            this.f2204for = m996else;
        }
        if (z) {
            this.f2207try = String.valueOf((char) this.f2205if);
        } else {
            this.f2207try = m996else;
        }
        this.f2206new = z;
    }
}
