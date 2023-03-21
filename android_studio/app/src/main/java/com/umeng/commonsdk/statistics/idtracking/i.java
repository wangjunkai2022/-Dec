package com.umeng.commonsdk.statistics.idtracking;

import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* compiled from: SerialTracker.java */
/* loaded from: classes7.dex */
public class i extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12312a = "serial";

    public i() {
        super(f12312a);
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getSerial();
    }
}
