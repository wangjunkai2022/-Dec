package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import java.util.LinkedList;
import java.util.Queue;

/* compiled from: CircuitBreakerController.java */
/* loaded from: classes8.dex */
public class a {
    public static volatile a d;

    /* renamed from: a  reason: collision with root package name */
    public long f10917a;
    public long b;
    public final Queue<Long> c = new LinkedList();

    public static a b() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a();
                }
            }
        }
        return d;
    }

    public void a(long j, long j2) {
        synchronized (a.class) {
            if (this.f10917a != j || this.b != j2) {
                this.f10917a = j;
                this.b = j2;
                this.c.clear();
            }
        }
    }

    public boolean a() {
        synchronized (a.class) {
            if (this.f10917a > 0 && this.b > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.c.size() >= this.f10917a) {
                    while (this.c.size() > this.f10917a) {
                        this.c.poll();
                    }
                    if (Math.abs(currentTimeMillis - this.c.peek().longValue()) <= this.b) {
                        return true;
                    }
                    this.c.poll();
                    this.c.offer(Long.valueOf(currentTimeMillis));
                } else {
                    this.c.offer(Long.valueOf(currentTimeMillis));
                }
                return false;
            }
            return false;
        }
    }
}
