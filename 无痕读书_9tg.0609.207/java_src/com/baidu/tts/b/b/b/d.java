package com.baidu.tts.b.b.b;

import java.lang.reflect.Method;
/* compiled from: PlayCache2Tts.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11161a;
    public Method b;
    public Method c;
    public Object d;

    public d(long j) {
        try {
            Object newInstance = Class.forName("com.baidu.speech.PlayCache").getConstructor(Long.TYPE).newInstance(Long.valueOf(j));
            this.d = newInstance;
            this.b = newInstance.getClass().getDeclaredMethod("write", new byte[0].getClass(), Integer.TYPE, Integer.TYPE);
            this.c = this.d.getClass().getDeclaredMethod("close", new Class[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean b() {
        return f11161a;
    }

    public void a(byte[] bArr, int i, int i2) {
        if (this.b == null && this.d == null) {
            return;
        }
        try {
            this.b.invoke(this.d, bArr, Integer.valueOf(i), Integer.valueOf(i2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a() {
        if (this.c == null && this.d == null) {
            return;
        }
        try {
            this.c.invoke(this.d, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void a(boolean z) {
        f11161a = z;
    }

    public static void a(int i) {
        try {
            Class<?> cls = Class.forName("com.baidu.speech.spil.sdk.aec.AecManager");
            cls.getMethod("resetAEC", Integer.TYPE).invoke(cls.newInstance(), Integer.valueOf(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
