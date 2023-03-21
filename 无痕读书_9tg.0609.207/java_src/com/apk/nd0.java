package com.apk;

import java.util.Arrays;
/* compiled from: Intrinsics.java */
/* loaded from: classes7.dex */
public class nd0 {
    /* renamed from: case  reason: not valid java name */
    public static void m1869case() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m1870do(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    /* renamed from: else  reason: not valid java name */
    public static <T extends Throwable> T m1871else(T t) {
        m1873goto(t, nd0.class.getName());
        return t;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m1872for(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(Cgoto.m989case(str, " must not be null"));
        m1871else(nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: goto  reason: not valid java name */
    public static <T extends Throwable> T m1873goto(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1874if(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        m1871else(nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: new  reason: not valid java name */
    public static void m1875new(Object obj, String str) {
        if (obj != null) {
            return;
        }
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        StringBuilder m1004import = Cgoto.m1004import("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
        m1004import.append(str);
        NullPointerException nullPointerException = new NullPointerException(m1004import.toString());
        m1871else(nullPointerException);
        throw nullPointerException;
    }

    /* renamed from: this  reason: not valid java name */
    public static void m1876this(String str) {
        mc0 mc0Var = new mc0(Cgoto.m996else("lateinit property ", str, " has not been initialized"));
        m1871else(mc0Var);
        throw mc0Var;
    }

    /* renamed from: try  reason: not valid java name */
    public static int m1877try(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }
}
