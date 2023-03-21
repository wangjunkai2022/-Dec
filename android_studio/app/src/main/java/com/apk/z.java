package com.apk;

/* compiled from: TrAdSdkImageLoader.java */
/* loaded from: classes8.dex */
public class z implements u60 {

    /* renamed from: do  reason: not valid java name */
    public static z f6085do;

    /* renamed from: do  reason: not valid java name */
    public static z m3123do() {
        if (f6085do == null) {
            synchronized (z.class) {
                if (f6085do == null) {
                    f6085do = new z();
                }
            }
        }
        return f6085do;
    }

    /* renamed from: for  reason: not valid java name */
    public String m3124for() {
        return tt.m2620do("SP_AD_HOST_GDT_KEY", "");
    }

    /* renamed from: if  reason: not valid java name */
    public String m3125if() {
        return tt.m2620do("SP_AD_HOST_CSJ_KEY", "");
    }
}
