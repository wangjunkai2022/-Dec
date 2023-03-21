package com.apk;

import java.util.ArrayList;
import java.util.List;
/* compiled from: PendingPost.java */
/* loaded from: classes7.dex */
public final class yl0 {

    /* renamed from: new  reason: not valid java name */
    public static final List<yl0> f5999new = new ArrayList();

    /* renamed from: do  reason: not valid java name */
    public Object f6000do;

    /* renamed from: for  reason: not valid java name */
    public yl0 f6001for;

    /* renamed from: if  reason: not valid java name */
    public em0 f6002if;

    public yl0(Object obj, em0 em0Var) {
        this.f6000do = obj;
        this.f6002if = em0Var;
    }

    /* renamed from: do  reason: not valid java name */
    public static yl0 m3084do(em0 em0Var, Object obj) {
        synchronized (f5999new) {
            int size = f5999new.size();
            if (size > 0) {
                yl0 remove = f5999new.remove(size - 1);
                remove.f6000do = obj;
                remove.f6002if = em0Var;
                remove.f6001for = null;
                return remove;
            }
            return new yl0(obj, em0Var);
        }
    }
}
