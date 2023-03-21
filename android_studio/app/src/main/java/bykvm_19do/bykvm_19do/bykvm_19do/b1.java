package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.os.Build;

/* loaded from: classes8.dex */
public final class b1 {
    public static a1 a(Context context) {
        if (i.e()) {
            return new g1(new m1());
        }
        if (m1.a()) {
            return new m1();
        }
        if (e1.a()) {
            if (s0.b()) {
                return new f1(context);
            }
            return new e1(context);
        } else if (!i.a(context) && !i.c()) {
            if (i.g()) {
                return new g1();
            }
            if (i.f()) {
                return new x0();
            }
            if (Build.VERSION.SDK_INT > 28) {
                if (i.h()) {
                    return new i1();
                }
                if (i.j()) {
                    return new y0();
                }
                if (i.i()) {
                    return new w0();
                }
                if (i.k()) {
                    return new n0();
                }
                return new r0();
            } else if (i.d() || !v0.d(context)) {
                return null;
            } else {
                return new v0();
            }
        } else {
            return new v0();
        }
    }
}
