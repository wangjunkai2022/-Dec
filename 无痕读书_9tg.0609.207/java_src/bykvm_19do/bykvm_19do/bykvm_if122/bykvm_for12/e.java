package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.y;
/* compiled from: AdEventNetUtil.java */
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static int f10955a = -1;
    public static long b;

    public static int a(Context context) {
        if (f10955a == -1 || System.currentTimeMillis() - b > 60000) {
            f10955a = y.b(context);
            b = System.currentTimeMillis();
            return f10955a;
        }
        return f10955a;
    }

    public static int b(Context context) {
        return y.a(a(context));
    }

    public static String c(Context context) {
        return y.b(a(context));
    }
}
