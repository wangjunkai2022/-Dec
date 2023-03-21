package com.apk;
/* compiled from: NodeTraversor.java */
/* loaded from: classes7.dex */
public class jp0 {
    /* renamed from: do  reason: not valid java name */
    public static void m1391do(kp0 kp0Var, no0 no0Var) {
        sb0.m2418instanceof(kp0Var);
        sb0.m2418instanceof(no0Var);
        no0 no0Var2 = no0Var;
        int i = 0;
        while (no0Var2 != null) {
            no0 no0Var3 = no0Var2.f3281do;
            kp0Var.mo502do(no0Var2, i);
            if (no0Var3 != null) {
                if (!(no0Var2.f3281do != null)) {
                    no0Var2 = no0Var3.m1901goto(no0Var2.f3282if);
                }
            }
            if (no0Var2.mo1387this() > 0) {
                no0Var2 = no0Var2.m1901goto(0);
                i++;
            } else {
                while (no0Var2.m1904public() == null && i > 0) {
                    kp0Var.mo503if(no0Var2, i);
                    no0Var2 = no0Var2.f3281do;
                    i--;
                }
                kp0Var.mo503if(no0Var2, i);
                if (no0Var2 == no0Var) {
                    return;
                }
                no0Var2 = no0Var2.m1904public();
            }
        }
    }
}
