package com.apk;

import java.lang.reflect.InvocationTargetException;
/* compiled from: ManifestParser.java */
@Deprecated
/* loaded from: classes8.dex */
public final class pq {
    /* renamed from: do  reason: not valid java name */
    public static nq m2071do(String str) {
        Class cls;
        Class cls2;
        Class cls3;
        Class cls4;
        try {
            try {
                Object newInstance = Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (newInstance instanceof nq) {
                    return (nq) newInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + newInstance);
            } catch (IllegalAccessException e) {
                m2072if(cls4, e);
                throw null;
            } catch (InstantiationException e2) {
                m2072if(cls3, e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                m2072if(cls2, e3);
                throw null;
            } catch (InvocationTargetException e4) {
                m2072if(cls, e4);
                throw null;
            }
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m2072if(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }
}
