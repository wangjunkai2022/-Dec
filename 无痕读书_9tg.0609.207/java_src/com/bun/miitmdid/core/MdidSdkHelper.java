package com.bun.miitmdid.core;

import android.content.Context;
import androidx.annotation.Keep;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class MdidSdkHelper {
    public static String TAG = "MdidSdkHelper";
    @Keep
    public static boolean _OuterIsOk = true;
    @Keep
    public String sdk_date = "20200702";

    @Keep
    public static int InitSdk(Context context, boolean z, IIdentifierListener iIdentifierListener) {
        Object[] objArr = new Object[6];
        objArr[1] = context;
        objArr[2] = Boolean.valueOf(z);
        objArr[3] = iIdentifierListener;
        objArr[4] = 28;
        objArr[5] = 1594371206304L;
        return ((Integer) Utils.rL(objArr)).intValue();
    }

    public static void logd(boolean z, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = Boolean.valueOf(z);
        objArr[2] = str;
        objArr[3] = 29;
        objArr[4] = 1594371206305L;
        Utils.rL(objArr);
    }

    public static void loge(boolean z, Exception exc) {
        Object[] objArr = new Object[5];
        objArr[1] = Boolean.valueOf(z);
        objArr[2] = exc;
        objArr[3] = 30;
        objArr[4] = 1594371206306L;
        Utils.rL(objArr);
    }
}
