package com.umeng.analytics.pro;

import android.content.Context;
import com.apk.qp0;
import com.umeng.commonsdk.debug.UMLog;
import java.lang.reflect.Method;

/* compiled from: XiaomiDeviceIdSupplier.java */
/* loaded from: classes7.dex */
public class ai implements z {
    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        try {
            if (!((qp0.f3915if == null || qp0.f3913do == null) ? false : true)) {
                UMLog.mutlInfo(2, "当前设备不支持获取OAID");
                return null;
            }
            Method method = qp0.f3914for;
            Object obj = qp0.f3913do;
            if (obj == null || method == null) {
                return null;
            }
            try {
                Object invoke = method.invoke(obj, context);
                if (invoke != null) {
                    return (String) invoke;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
            return null;
        }
    }
}
