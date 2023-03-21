package org.litepal.crud;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.litepal.exceptions.LitePalSupportException;
/* loaded from: classes7.dex */
public class DynamicExecutor {
    public static Object getField(Object obj, String str, Class<?> cls) throws IllegalArgumentException, IllegalAccessException {
        if (cls != LitePalSupport.class && cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            } catch (NoSuchFieldException unused) {
                return getField(obj, str, cls.getSuperclass());
            }
        }
        throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(cls.getSimpleName(), str));
    }

    public static Object send(Object obj, String str, Object[] objArr, Class<?> cls, Class<?>[] clsArr) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        if (objArr == null) {
            try {
                objArr = new Object[0];
            } catch (NoSuchMethodException e) {
                throw new LitePalSupportException(LitePalSupportException.noSuchMethodException(cls.getSimpleName(), str), e);
            }
        }
        if (clsArr == null) {
            clsArr = new Class[0];
        }
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, objArr);
    }

    public static void set(Object obj, String str, Object obj2, Class<?> cls) throws SecurityException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    public static void setField(Object obj, String str, Object obj2, Class<?> cls) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        if (cls != LitePalSupport.class && cls != Object.class) {
            try {
                set(obj, str, obj2, cls);
                return;
            } catch (NoSuchFieldException unused) {
                setField(obj, str, obj2, cls.getSuperclass());
                return;
            }
        }
        throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(cls.getSimpleName(), str));
    }
}
