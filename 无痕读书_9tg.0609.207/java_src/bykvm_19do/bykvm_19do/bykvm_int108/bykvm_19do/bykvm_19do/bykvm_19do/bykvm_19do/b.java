package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* compiled from: CacheManager.java */
/* loaded from: classes8.dex */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public final d f11016a;
    public final c b;
    public final Queue<String> c;

    public b() {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.c = concurrentLinkedQueue;
        this.f11016a = new f(concurrentLinkedQueue);
        this.b = new c();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.d
    public synchronized void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar, int i) {
        d dVar;
        if (i != 5) {
            if (j.l().b().a(j.l().d()) && (dVar = this.f11016a) != null && aVar != null) {
                dVar.a(aVar, i);
            }
        }
        c cVar = this.b;
        if (cVar != null && aVar != null) {
            cVar.a(aVar, i);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.d
    public synchronized void a(int i, List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list) {
        ArrayList arrayList = new ArrayList(this.c.size());
        arrayList.addAll(this.c);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                if (TextUtils.equals(str, aVar.i())) {
                    this.c.remove(str);
                }
            }
        }
        d dVar = this.f11016a;
        if (dVar != null) {
            dVar.a(i, list);
        }
        c cVar = this.b;
        if (cVar != null) {
            cVar.a(i, list);
        }
    }

    /* JADX WARN: Type inference failed for: r10v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object] */
    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.d
    public synchronized List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> a(int i, int i2) {
        List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> b;
        boolean z;
        List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> a2 = this.f11016a.a(i, i2);
        if (a2 != null && a2.size() != 0) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("memory get " + a2.size());
            if ((i == 1 || i == 2) && (b = this.b.b(a2.get(0), a2.size())) != null && b.size() != 0) {
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("db get " + b.size());
                HashMap hashMap = new HashMap();
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : b) {
                    hashMap.put(aVar.i(), aVar);
                }
                ArrayList arrayList = new ArrayList(this.c);
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar2 : b) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (TextUtils.equals(aVar2.i(), (String) it.next())) {
                                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a(" duplicate delete ");
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        hashMap.remove(aVar2.i());
                    }
                }
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar3 : a2) {
                    hashMap.put(aVar3.i(), aVar3);
                }
                a2.clear();
                for (String str : hashMap.keySet()) {
                    a2.add(hashMap.get(str));
                }
            }
        } else {
            a2 = this.b.a(i, i2);
            if (a2 != null && a2.size() != 0) {
                HashMap hashMap2 = new HashMap();
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar4 : a2) {
                    hashMap2.put(aVar4.i(), aVar4);
                }
                ArrayList arrayList2 = new ArrayList(this.c);
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("allSendingQueue:" + arrayList2.size());
                if (arrayList2.size() != 0) {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        String str2 = (String) it2.next();
                        if (hashMap2.get(str2) != null) {
                            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("db duplicate delete");
                            hashMap2.remove(str2);
                        }
                    }
                }
                a2.clear();
                for (String str3 : hashMap2.keySet()) {
                    a2.add(hashMap2.get(str3));
                }
            }
        }
        if (a2 != null && !a2.isEmpty()) {
            for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar5 : a2) {
                this.c.offer(aVar5.i());
            }
            return a2;
        }
        return new ArrayList();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.d
    public synchronized boolean a(int i, boolean z) {
        if (this.f11016a.a(i, z)) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.I(), 1);
            return true;
        } else if ((i == 1 || i == 2) && this.b.a(i, z)) {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.u(), 1);
            return true;
        } else {
            return false;
        }
    }
}
