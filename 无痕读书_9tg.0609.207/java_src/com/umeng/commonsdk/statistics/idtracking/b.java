package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: AndroidIdTracker.java */
/* loaded from: classes7.dex */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12304a = "android_id";
    public Context b;

    public b(Context context) {
        super(f12304a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getAndroidId(this.b);
    }
}
