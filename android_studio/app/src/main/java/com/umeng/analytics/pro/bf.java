package com.umeng.analytics.pro;

import com.apk.Cgoto;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FieldMetaData.java */
/* loaded from: classes7.dex */
public class bf implements Serializable {
    public static Map<Class<? extends at>, Map<? extends ba, bf>> d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public final String f12158a;
    public final byte b;
    public final bg c;

    public bf(String str, byte b, bg bgVar) {
        this.f12158a = str;
        this.b = b;
        this.c = bgVar;
    }

    public static void a(Class<? extends at> cls, Map<? extends ba, bf> map) {
        d.put(cls, map);
    }

    public static Map<? extends ba, bf> a(Class<? extends at> cls) {
        if (!d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e) {
                StringBuilder m1016super = Cgoto.m1016super("IllegalAccessException for TBase class: ");
                m1016super.append(cls.getName());
                m1016super.append(", message: ");
                m1016super.append(e.getMessage());
                throw new RuntimeException(m1016super.toString());
            } catch (InstantiationException e2) {
                StringBuilder m1016super2 = Cgoto.m1016super("InstantiationException for TBase class: ");
                m1016super2.append(cls.getName());
                m1016super2.append(", message: ");
                m1016super2.append(e2.getMessage());
                throw new RuntimeException(m1016super2.toString());
            }
        }
        return d.get(cls);
    }
}
