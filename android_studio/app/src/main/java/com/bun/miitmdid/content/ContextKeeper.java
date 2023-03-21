package com.bun.miitmdid.content;

import android.content.Context;
import com.netease.nis.sdkwrapper.Utils;

/* loaded from: classes8.dex */
public class ContextKeeper {
    public static Context mContext;

    public static Context ReflectAppContext() {
        Object[] objArr = new Object[3];
        objArr[1] = 2;
        objArr[2] = 1594371206278L;
        return (Context) Utils.rL(objArr);
    }

    public static Context getAppContext() {
        Object[] objArr = new Object[3];
        objArr[1] = 3;
        objArr[2] = 1594371206279L;
        return (Context) Utils.rL(objArr);
    }

    public static Context getApplicationContext() {
        Object[] objArr = new Object[3];
        objArr[1] = 4;
        objArr[2] = 1594371206280L;
        return (Context) Utils.rL(objArr);
    }

    public static void init(Context context) {
        Object[] objArr = new Object[4];
        objArr[1] = context;
        objArr[2] = 5;
        objArr[3] = 1594371206281L;
        Utils.rL(objArr);
    }
}
