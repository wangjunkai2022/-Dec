package com.chad.library.adapter.base.util;

import com.apk.Cgoto;
/* loaded from: classes8.dex */
public class TouchEventUtil {
    public static String getTouchAction(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? Cgoto.m1003implements("Unknow:id=", i) : "ACTION_OUTSIDE" : "ACTION_CANCEL" : "ACTION_MOVE" : "ACTION_UP" : "ACTION_DOWN";
    }
}
