package com.bun.miitmdid.content;

import androidx.annotation.Keep;
import com.bun.miitmdid.content.ProviderList;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class SystemParamters {
    public static volatile SystemParamters g_insans;
    public String mf;
    @Keep
    public String sdk_version = "10022";
    @Keep
    public String sdk_vname = "1.0.22";

    public static ProviderList.DEVICE_PROVIDER checkDeviceSystem() {
        Object[] objArr = new Object[3];
        objArr[1] = 13;
        objArr[2] = 1594371206289L;
        return (ProviderList.DEVICE_PROVIDER) Utils.rL(objArr);
    }

    public static SystemParamters getIns() {
        Object[] objArr = new Object[3];
        objArr[1] = 14;
        objArr[2] = 1594371206290L;
        return (SystemParamters) Utils.rL(objArr);
    }

    public static String getSysProperty(String str, String str2) {
        Object[] objArr = new Object[5];
        objArr[1] = str;
        objArr[2] = str2;
        objArr[3] = 15;
        objArr[4] = 1594371206291L;
        return (String) Utils.rL(objArr);
    }

    public static boolean isFreeMeOS() {
        Object[] objArr = new Object[3];
        objArr[1] = 16;
        objArr[2] = 1594371206292L;
        return ((Boolean) Utils.rL(objArr)).booleanValue();
    }

    public static boolean isSsuiOS() {
        Object[] objArr = new Object[3];
        objArr[1] = 17;
        objArr[2] = 1594371206293L;
        return ((Boolean) Utils.rL(objArr)).booleanValue();
    }

    public String getMf() {
        return (String) Utils.rL(new Object[]{this, 18, 1594371206294L});
    }

    public String getSdkVersion() {
        return (String) Utils.rL(new Object[]{this, 19, 1594371206295L});
    }

    public String getSdkVname() {
        return (String) Utils.rL(new Object[]{this, 20, 1594371206296L});
    }
}
