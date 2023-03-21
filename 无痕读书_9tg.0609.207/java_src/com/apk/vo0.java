package com.apk;
/* compiled from: ParseSettings.java */
/* loaded from: classes7.dex */
public class vo0 {

    /* renamed from: for  reason: not valid java name */
    public static final vo0 f5183for = new vo0(false, false);

    /* renamed from: new  reason: not valid java name */
    public static final vo0 f5184new = new vo0(true, true);

    /* renamed from: do  reason: not valid java name */
    public final boolean f5185do;

    /* renamed from: if  reason: not valid java name */
    public final boolean f5186if;

    public vo0(boolean z, boolean z2) {
        this.f5185do = z;
        this.f5186if = z2;
    }

    /* renamed from: do  reason: not valid java name */
    public static String m2828do(String str) {
        return sb0.m2437volatile(str.trim());
    }

    /* renamed from: if  reason: not valid java name */
    public do0 m2829if(do0 do0Var) {
        if (do0Var != null && !this.f5186if) {
            for (int i = 0; i < do0Var.f948do; i++) {
                String[] strArr = do0Var.f950if;
                strArr[i] = sb0.m2437volatile(strArr[i]);
            }
        }
        return do0Var;
    }
}
