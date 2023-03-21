package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes8.dex */
public class MultiProcessFlag {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11499a;
    public static boolean b;

    public static boolean isMultiProcess() {
        return f11499a;
    }

    public static void setMultiProcess(boolean z) {
        if (b) {
            GDTLogger.w("MultiProcessFlag已经设置过，再次设置无效");
            return;
        }
        b = true;
        f11499a = z;
    }
}
