package com.bun.miitmdid.utils;

import android.content.Context;
import com.netease.nis.sdkwrapper.Utils;
/* loaded from: classes8.dex */
public class LoadJsonUtil {
    public static String LoadJsonFromAsset(Context context, String str) {
        Object[] objArr = new Object[5];
        objArr[1] = context;
        objArr[2] = str;
        objArr[3] = 134;
        objArr[4] = 1594371206410L;
        return (String) Utils.rL(objArr);
    }
}
