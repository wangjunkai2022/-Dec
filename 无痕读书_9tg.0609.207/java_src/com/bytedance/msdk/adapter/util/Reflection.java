package com.bytedance.msdk.adapter.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class Reflection {
    public static boolean classFound(@NonNull String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Nullable
    public static Method getDeclaredMethodWithTraversal(@Nullable Class<?> cls, @NonNull String str, @NonNull Class<?>... clsArr) throws NoSuchMethodException {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static Field getPrivateField(@NonNull Class cls, @NonNull String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    @NonNull
    public static <T> T instantiateClassWithConstructor(@NonNull String str, @NonNull Class<? extends T> cls, @NonNull Class[] clsArr, @NonNull Object[] objArr) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }

    @NonNull
    public static <T> T instantiateClassWithEmptyConstructor(@NonNull String str, @NonNull Class<? extends T> cls) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, NullPointerException {
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }

    /* loaded from: classes8.dex */
    public static class MethodBuilder {

        /* renamed from: case  reason: not valid java name */
        public boolean f8751case;
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public final Object f8752do;

        /* renamed from: else  reason: not valid java name */
        public boolean f8753else;
        @Nullable

        /* renamed from: for  reason: not valid java name */
        public Class<?> f8754for;
        @NonNull

        /* renamed from: if  reason: not valid java name */
        public final String f8755if;
        @NonNull

        /* renamed from: new  reason: not valid java name */
        public List<Class<?>> f8756new = new ArrayList();
        @NonNull

        /* renamed from: try  reason: not valid java name */
        public List<Object> f8757try = new ArrayList();

        public MethodBuilder(@Nullable Object obj, @NonNull String str) {
            this.f8752do = obj;
            this.f8755if = str;
            this.f8754for = obj != null ? obj.getClass() : null;
        }

        @NonNull
        public <T> MethodBuilder addParam(@NonNull Class<T> cls, @Nullable T t) {
            this.f8756new.add(cls);
            this.f8757try.add(t);
            return this;
        }

        @Nullable
        public Object execute() throws Exception {
            List<Class<?>> list = this.f8756new;
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f8754for, this.f8755if, (Class[]) list.toArray(new Class[this.f8756new.size()]));
            if (this.f8751case) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.f8757try.toArray();
            if (this.f8753else) {
                return declaredMethodWithTraversal.invoke(null, array);
            }
            return declaredMethodWithTraversal.invoke(this.f8752do, array);
        }

        @NonNull
        public MethodBuilder setAccessible() {
            this.f8751case = true;
            return this;
        }

        @NonNull
        public MethodBuilder setStatic(@NonNull Class<?> cls) {
            this.f8753else = true;
            this.f8754for = cls;
            return this;
        }

        @NonNull
        public MethodBuilder addParam(@NonNull String str, @Nullable Object obj) throws ClassNotFoundException {
            this.f8756new.add(Class.forName(str));
            this.f8757try.add(obj);
            return this;
        }

        @NonNull
        public MethodBuilder setStatic(@NonNull String str) throws ClassNotFoundException {
            this.f8753else = true;
            this.f8754for = Class.forName(str);
            return this;
        }
    }
}
