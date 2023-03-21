package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* compiled from: ImeiTracker.java */
/* loaded from: classes7.dex */
public class f extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12309a = "imei";
    public Context b;

    public f(Context context) {
        super(f12309a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getImeiNew(this.b);
    }
}
