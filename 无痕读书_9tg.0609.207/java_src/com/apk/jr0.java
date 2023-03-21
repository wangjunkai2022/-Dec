package com.apk;

import android.graphics.drawable.Drawable;
import java.lang.reflect.Method;
/* compiled from: SkinCompatVersionUtils.java */
/* loaded from: classes7.dex */
public final class jr0 {

    /* renamed from: case  reason: not valid java name */
    public static Method f2419case;

    /* renamed from: do  reason: not valid java name */
    public static Class<?> f2420do;

    /* renamed from: else  reason: not valid java name */
    public static Class<?> f2421else;

    /* renamed from: for  reason: not valid java name */
    public static Method f2422for;

    /* renamed from: goto  reason: not valid java name */
    public static Method f2423goto;

    /* renamed from: if  reason: not valid java name */
    public static Method f2424if;

    /* renamed from: new  reason: not valid java name */
    public static Class<?> f2425new;

    /* renamed from: try  reason: not valid java name */
    public static Method f2426try;

    static {
        try {
            f2425new = Class.forName("android.support.v4.graphics.drawable.WrappedDrawable");
        } catch (ClassNotFoundException unused) {
        }
        try {
            f2420do = Class.forName("android.support.v4.graphics.drawable.DrawableWrapper");
        } catch (ClassNotFoundException unused2) {
        }
        try {
            f2421else = Class.forName("android.support.v7.graphics.drawable.DrawableWrapper");
        } catch (ClassNotFoundException unused3) {
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static Drawable m1395do(Drawable drawable) {
        Class<?> cls = f2420do;
        if (cls != null) {
            if (f2424if == null) {
                try {
                    Method declaredMethod = cls.getDeclaredMethod("getWrappedDrawable", new Class[0]);
                    f2424if = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (Exception unused) {
                }
            }
            Method method = f2424if;
            if (method != null) {
                try {
                    return (Drawable) method.invoke(drawable, new Object[0]);
                } catch (Exception unused2) {
                }
            }
        }
        return drawable;
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m1396for(Drawable drawable) {
        Class<?> cls = f2420do;
        return cls != null && cls.isAssignableFrom(drawable.getClass());
    }

    /* renamed from: if  reason: not valid java name */
    public static Drawable m1397if(Drawable drawable) {
        Class<?> cls = f2425new;
        if (cls != null) {
            if (f2426try == null) {
                try {
                    Method declaredMethod = cls.getDeclaredMethod("getWrappedDrawable", new Class[0]);
                    f2426try = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (Exception unused) {
                }
            }
            Method method = f2426try;
            if (method != null) {
                try {
                    return (Drawable) method.invoke(drawable, new Object[0]);
                } catch (Exception unused2) {
                }
            }
        }
        return drawable;
    }

    /* renamed from: new  reason: not valid java name */
    public static boolean m1398new(Drawable drawable) {
        Class<?> cls = f2425new;
        return cls != null && cls.isAssignableFrom(drawable.getClass());
    }
}
