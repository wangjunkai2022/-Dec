package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* compiled from: EventMemoryCacheManager.java */
/* loaded from: classes8.dex */
public abstract class d<T extends bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> {

    /* renamed from: a  reason: collision with root package name */
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a f11023a;
    public Queue<T> b = new ConcurrentLinkedQueue();

    public d(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a aVar, Queue<String> queue) {
        this.f11023a = aVar;
    }

    public void a(T t) {
        Queue<T> queue = this.b;
        if (queue == null || t == null) {
            return;
        }
        queue.offer(t);
    }

    public synchronized List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> b(int i, int i2) {
        if (a(i, i2)) {
            ArrayList arrayList = new ArrayList(this.f11023a.b());
            do {
                T poll = this.b.poll();
                if (poll == null) {
                    break;
                }
                arrayList.add(poll);
            } while (arrayList.size() != this.f11023a.a());
            return arrayList;
        }
        return null;
    }

    public synchronized void a(int i, List<T> list) {
        if (i != -1 && i != 200 && i != 509) {
            this.b.addAll(list);
        }
    }

    public synchronized boolean a(int i, int i2) {
        if (i != 2 && i != 1) {
            return this.b.size() >= this.f11023a.b();
        }
        return this.b.size() >= this.f11023a.b();
    }
}
