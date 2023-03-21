package com.apk;
/* compiled from: Reflection.java */
/* loaded from: classes7.dex */
public class rd0 {

    /* renamed from: do  reason: not valid java name */
    public static final sd0 f4033do;

    static {
        sd0 sd0Var = null;
        try {
            sd0Var = (sd0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (sd0Var == null) {
            sd0Var = new sd0();
        }
        f4033do = sd0Var;
    }
}
