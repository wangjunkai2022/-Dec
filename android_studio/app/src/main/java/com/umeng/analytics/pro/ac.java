package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.commonsdk.utils.UMUtils;

/* compiled from: DeviceIdSupplier.java */
/* loaded from: classes7.dex */
public class ac {
    public static z a(Context context) {
        String str = Build.BRAND;
        aj.a("Device", "Brand", str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.equalsIgnoreCase("huawei") && !str.equalsIgnoreCase("honor") && !str.equalsIgnoreCase("华为")) {
            if (!str.equalsIgnoreCase("xiaomi") && !str.equalsIgnoreCase("redmi") && !str.equalsIgnoreCase("meitu") && !str.equalsIgnoreCase("小米")) {
                if (str.equalsIgnoreCase("vivo")) {
                    return new ah();
                }
                if (!str.equalsIgnoreCase("oppo") && !str.equalsIgnoreCase("oneplus")) {
                    if (!str.equalsIgnoreCase("lenovo") && !str.equalsIgnoreCase("zuk")) {
                        if (Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG")) {
                            return new ag();
                        }
                        if (UMUtils.isAppInstalled(context, ab.b)) {
                            return new ab();
                        }
                        return null;
                    }
                    return new ae();
                }
                return new af();
            }
            return new ai();
        }
        return new ad();
    }
}
