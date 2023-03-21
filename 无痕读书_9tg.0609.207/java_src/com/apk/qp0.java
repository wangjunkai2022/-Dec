package com.apk;

import android.content.Context;
import java.lang.reflect.Method;
/* compiled from: IdentifierManager.java */
/* loaded from: classes7.dex */
public class qp0 {

    /* renamed from: do  reason: not valid java name */
    public static Object f3913do;

    /* renamed from: for  reason: not valid java name */
    public static Method f3914for;

    /* renamed from: if  reason: not valid java name */
    public static Class<?> f3915if;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f3915if = cls;
            f3913do = cls.newInstance();
            f3915if.getMethod("getUDID", Context.class);
            f3914for = f3915if.getMethod("getOAID", Context.class);
            f3915if.getMethod("getVAID", Context.class);
            f3915if.getMethod("getAAID", Context.class);
        } catch (Exception unused) {
        }
    }
}
