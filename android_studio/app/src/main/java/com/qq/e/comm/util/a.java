package com.qq.e.comm.util;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, Boolean> f11544a = new HashMap();

    public static boolean a(Class cls, String str, Class... clsArr) {
        String sb;
        if (cls == null) {
            sb = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append("#");
            sb2.append(str);
            for (Class cls2 : clsArr) {
                sb2.append("_");
                sb2.append(cls2.getName());
            }
            sb = sb2.toString();
        }
        Boolean bool = f11544a.get(sb);
        if (bool == null) {
            try {
                cls.getDeclaredMethod(str, clsArr);
                f11544a.put(sb, Boolean.TRUE);
                return true;
            } catch (NoSuchMethodException unused) {
                f11544a.put(sb, Boolean.FALSE);
                return false;
            }
        }
        return Boolean.TRUE.equals(bool);
    }

    public static boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return a(obj.getClass(), "onRenderFail", new Class[0]);
    }

    public static boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        return a(obj.getClass(), "onRenderSuccess", new Class[0]);
    }
}
