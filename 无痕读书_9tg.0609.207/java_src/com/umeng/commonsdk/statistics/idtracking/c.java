package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: IDFATracker.java */
/* loaded from: classes7.dex */
public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12305a = "idfa";
    public Context b;

    public c(Context context) {
        super(f12305a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getIdfa(this.b);
    }
}
