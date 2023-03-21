package com.bytedance.pangle.fragment;

import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import java.lang.reflect.Field;
/* loaded from: classes8.dex */
public final class a {
    public static void a(Class cls) {
        try {
            if (Fragment.class.getName().contains("support")) {
                ((SimpleArrayMap) a(Fragment.class, "sClassMap").get(null)).put(cls.getName(), cls);
                return;
            }
            Field a2 = a(Fragment.class, "sClassMap");
            if (a2 != null) {
                ((SimpleArrayMap) a2.get(null)).put(cls.getName(), cls);
                return;
            }
            Class a3 = a("androidx.fragment.app.FragmentFactory");
            if (a3 == null) {
                return;
            }
            Field a4 = a(a3, "sClassMap");
            if (a4 != null) {
                ((SimpleArrayMap) a4.get(null)).put(cls.getName(), cls);
                return;
            }
            Field a5 = a(a3, "sClassCacheMap");
            if (a5 != null) {
                SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
                simpleArrayMap.put(cls.getName(), cls);
                ((SimpleArrayMap) a5.get(null)).put(cls.getClassLoader(), simpleArrayMap);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Field a(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    public static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
