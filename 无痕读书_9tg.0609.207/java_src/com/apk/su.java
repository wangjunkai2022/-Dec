package com.apk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: SpecialBarFontUtils.java */
/* loaded from: classes8.dex */
public class su {

    /* renamed from: do  reason: not valid java name */
    public static Method f4594do;

    /* renamed from: for  reason: not valid java name */
    public static Field f4595for;

    /* renamed from: if  reason: not valid java name */
    public static Method f4596if;

    /* renamed from: new  reason: not valid java name */
    public static int f4597new;

    static {
        try {
            f4594do = Activity.class.getMethod("setStatusBarDarkIcon", Integer.TYPE);
        } catch (NoSuchMethodException unused) {
        }
        try {
            f4596if = Activity.class.getMethod("setStatusBarDarkIcon", Boolean.TYPE);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            f4595for = WindowManager.LayoutParams.class.getField("statusBarColor");
        } catch (NoSuchFieldException unused3) {
        }
        try {
            f4597new = View.class.getField("SYSTEM_UI_FLAG_LIGHT_STATUS_BAR").getInt(null);
        } catch (IllegalAccessException | NoSuchFieldException unused4) {
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: do  reason: not valid java name */
    public static void m2552do(Window window, String str, boolean z) {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField(str).getInt(cls2);
                Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2553for(Activity activity, boolean z, boolean z2) {
        Method method = f4596if;
        if (method != null) {
            try {
                method.invoke(activity, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
            }
        } else if (z2) {
            Window window = activity.getWindow();
            if (Build.VERSION.SDK_INT < 23) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                try {
                    Field declaredField = attributes.getClass().getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                    declaredField.setAccessible(true);
                    int i = declaredField.getInt(attributes);
                    Field declaredField2 = attributes.getClass().getDeclaredField("meizuFlags");
                    declaredField2.setAccessible(true);
                    int i2 = declaredField2.getInt(attributes);
                    int i3 = z ? i | i2 : (~i) & i2;
                    if (i2 != i3) {
                        declaredField2.setInt(attributes, i3);
                        return;
                    }
                    return;
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                    return;
                } catch (IllegalArgumentException e4) {
                    e4.printStackTrace();
                    return;
                } catch (NoSuchFieldException e5) {
                    e5.printStackTrace();
                    return;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return;
                }
            }
            m2555new(window.getDecorView(), z);
            m2554if(window, 0);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m2554if(Window window, int i) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        Field field = f4595for;
        if (field != null) {
            try {
                if (field.getInt(attributes) != i) {
                    f4595for.set(attributes, Integer.valueOf(i));
                    window.setAttributes(attributes);
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m2555new(View view, boolean z) {
        int i;
        int systemUiVisibility = view.getSystemUiVisibility();
        if (z) {
            i = f4597new | systemUiVisibility;
        } else {
            i = (~f4597new) & systemUiVisibility;
        }
        if (i != systemUiVisibility) {
            view.setSystemUiVisibility(i);
        }
    }
}
