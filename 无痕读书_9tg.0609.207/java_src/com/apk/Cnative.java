package com.apk;
/* compiled from: AdChapterUtils.java */
/* renamed from: com.apk.native  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cnative implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Cimport f3204do;

    public Cnative(Cimport cimport) {
        this.f3204do = cimport;
    }

    @Override // java.lang.Runnable
    public void run() {
        String m2620do = tt.m2620do("SP_READ_VIDEO_AD_DATE_TODAY_KEY", "");
        String m1498if = kg.m1498if();
        if (!m2620do.equals(m1498if)) {
            this.f3204do.f2170const = 1;
            tt.f4763do.putInt("SP_READ_VIDEO_AD_COUNT_TODAY_KEY", 1);
            tt.f4763do.putString("SP_READ_VIDEO_AD_DATE_TODAY_KEY", m1498if);
            return;
        }
        this.f3204do.f2170const = ze.m3174instanceof("SP_READ_VIDEO_AD_COUNT_TODAY_KEY", 0);
        Cimport cimport = this.f3204do;
        int i = cimport.f2170const + 1;
        cimport.f2170const = i;
        tt.f4763do.putInt("SP_READ_VIDEO_AD_COUNT_TODAY_KEY", i);
    }
}
