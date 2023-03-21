package com.apk;

/* compiled from: AdInsertHelper.java */
/* renamed from: com.apk.throws  reason: invalid class name */
/* loaded from: classes8.dex */
public final class Cthrows implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        tt.f4763do.putString("SP_READ_END_AD_SHOW_LAST_TIME_KEY", String.valueOf(System.currentTimeMillis()));
        String m2620do = tt.m2620do("SP_READ_END_VIDEO_AD_DATE_TODAY_KEY", "");
        String m1498if = kg.m1498if();
        if (!m2620do.equals(m1498if)) {
            tt.f4763do.putInt("SP_READ_END_VIDEO_AD_COUNT_TODAY_KEY", 1);
            tt.f4763do.putString("SP_READ_END_VIDEO_AD_DATE_TODAY_KEY", m1498if);
            return;
        }
        tt.f4763do.putInt("SP_READ_END_VIDEO_AD_COUNT_TODAY_KEY", ze.m3174instanceof("SP_READ_END_VIDEO_AD_COUNT_TODAY_KEY", 0) + 1);
    }
}
