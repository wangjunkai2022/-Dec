package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: MacTracker.java */
/* loaded from: classes7.dex */
public class g extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12310a = "mac";
    public Context b;

    public g(Context context) {
        super(f12310a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            return DeviceConfig.getMac(this.b);
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                e.printStackTrace();
            }
            UMCrashManager.reportCrash(this.b, e);
            return null;
        }
    }
}
