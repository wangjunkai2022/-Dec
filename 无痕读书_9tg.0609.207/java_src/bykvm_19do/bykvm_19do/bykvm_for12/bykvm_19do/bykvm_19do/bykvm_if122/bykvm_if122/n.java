package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import androidx.appcompat.widget.ActivityChooserView;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.x;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Dispatcher.java */
/* loaded from: classes8.dex */
public final class n {
    public Runnable c;
    public ExecutorService d;

    /* renamed from: a  reason: collision with root package name */
    public int f10781a = 64;
    public int b = 5;
    public final Deque<x.a> e = new ArrayDeque();
    public final Deque<x.a> f = new ArrayDeque();
    public final Deque<x> g = new ArrayDeque();

    private void c() {
        if (this.f.size() < this.f10781a && !this.e.isEmpty()) {
            Iterator<x.a> it = this.e.iterator();
            while (it.hasNext()) {
                x.a next = it.next();
                if (c(next) < this.b) {
                    it.remove();
                    this.f.add(next);
                    a().execute(next);
                }
                if (this.f.size() >= this.f10781a) {
                    return;
                }
            }
        }
    }

    public synchronized ExecutorService a() {
        if (this.d == null) {
            this.d = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 20L, TimeUnit.SECONDS, new SynchronousQueue(), bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a("OkHttp Dispatcher", false));
        }
        return this.d;
    }

    public void b(x.a aVar) {
        a(this.f, aVar, true);
    }

    public void b(x xVar) {
        a(this.g, xVar, false);
    }

    public synchronized int b() {
        return this.f.size() + this.g.size();
    }

    public synchronized void a(int i) {
        if (i >= 1) {
            this.f10781a = i;
            c();
        } else {
            throw new IllegalArgumentException("max < 1: " + i);
        }
    }

    public synchronized void a(x.a aVar) {
        if (this.f.size() < this.f10781a && c(aVar) < this.b) {
            this.f.add(aVar);
            a().execute(aVar);
        } else {
            this.e.add(aVar);
        }
    }

    private int c(x.a aVar) {
        int i = 0;
        for (x.a aVar2 : this.f) {
            if (aVar2.c().equals(aVar.c())) {
                i++;
            }
        }
        return i;
    }

    public synchronized void a(x xVar) {
        this.g.add(xVar);
    }

    private <T> void a(Deque<T> deque, T t, boolean z) {
        int b;
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                if (z) {
                    c();
                }
                b = b();
                runnable = this.c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (b != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }
}
