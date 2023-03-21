package com.umeng.analytics.pro;

import android.content.Context;
import com.apk.sb0;
import com.apk.tp0;
import com.umeng.commonsdk.debug.UMLog;
/* compiled from: VivoDeviceIdSupplier.java */
/* loaded from: classes7.dex */
public class ah implements z {
    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        try {
            if (tp0.m2610do(context) != null) {
                if (!tp0.f4748if) {
                    UMLog.mutlInfo(2, "当前设备不支持获取OAID");
                    return null;
                }
                return sb0.m2432this(context);
            }
            throw null;
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
            return null;
        }
    }
}
