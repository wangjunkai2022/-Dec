package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.c0;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: RouteDatabase.java */
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Set<c0> f10726a = new LinkedHashSet();

    public synchronized void a(c0 c0Var) {
        this.f10726a.remove(c0Var);
    }

    public synchronized void b(c0 c0Var) {
        this.f10726a.add(c0Var);
    }

    public synchronized boolean c(c0 c0Var) {
        return this.f10726a.contains(c0Var);
    }
}
