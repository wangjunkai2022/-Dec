package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: IDMD5Tracker.java */
/* loaded from: classes7.dex */
public class d extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12306a = "idmd5";
    public Context b;

    public d(Context context) {
        super("idmd5");
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getDeviceIdUmengMD5(this.b);
    }
}
