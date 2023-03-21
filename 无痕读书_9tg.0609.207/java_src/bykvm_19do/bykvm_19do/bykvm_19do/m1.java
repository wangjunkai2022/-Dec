package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import java.lang.reflect.Method;
/* loaded from: classes8.dex */
public final class m1 implements a1 {

    /* renamed from: a  reason: collision with root package name */
    public static Object f10636a;
    public static Class<?> b;
    public static Method c;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            b = cls;
            f10636a = cls.newInstance();
            c = b.getMethod("getOAID", Context.class);
        } catch (Exception unused) {
        }
    }

    public static boolean a() {
        return (b == null || f10636a == null || c == null) ? false : true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        try {
            a1.a aVar = new a1.a();
            aVar.f10613a = a(context, c);
            return aVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        return a();
    }

    public static String a(Context context, Method method) {
        Object obj = f10636a;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
