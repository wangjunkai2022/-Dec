package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_new1;

import java.util.UUID;

/* compiled from: TTRunnable.java */
/* loaded from: classes8.dex */
public abstract class g implements Runnable, Comparable<g> {

    /* renamed from: a  reason: collision with root package name */
    public int f11038a;

    public g(String str) {
        this.f11038a = 0;
        this.f11038a = 5;
        UUID.randomUUID().toString();
        String.valueOf(System.nanoTime());
    }

    public int a() {
        return this.f11038a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(g gVar) {
        if (a() < gVar.a()) {
            return 1;
        }
        return a() >= gVar.a() ? -1 : 0;
    }
}
