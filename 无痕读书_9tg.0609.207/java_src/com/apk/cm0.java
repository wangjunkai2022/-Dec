package com.apk;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: SubscriberMethod.java */
/* loaded from: classes7.dex */
public class cm0 {

    /* renamed from: case  reason: not valid java name */
    public String f669case;

    /* renamed from: do  reason: not valid java name */
    public final Method f670do;

    /* renamed from: for  reason: not valid java name */
    public final Class<?> f671for;

    /* renamed from: if  reason: not valid java name */
    public final ThreadMode f672if;

    /* renamed from: new  reason: not valid java name */
    public final int f673new;

    /* renamed from: try  reason: not valid java name */
    public final boolean f674try;

    public cm0(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f670do = method;
        this.f672if = threadMode;
        this.f671for = cls;
        this.f673new = i;
        this.f674try = z;
    }

    /* renamed from: do  reason: not valid java name */
    public final synchronized void m365do() {
        if (this.f669case == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f670do.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f670do.getName());
            sb.append('(');
            sb.append(this.f671for.getName());
            this.f669case = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof cm0) {
            m365do();
            cm0 cm0Var = (cm0) obj;
            cm0Var.m365do();
            return this.f669case.equals(cm0Var.f669case);
        }
        return false;
    }

    public int hashCode() {
        return this.f670do.hashCode();
    }
}
