package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: EventMonitorUtils.java */
/* loaded from: classes8.dex */
public class b {
    public static void a(AtomicLong atomicLong, int i) {
        if (j.l().b() == null || !j.l().b().g() || atomicLong == null) {
            return;
        }
        atomicLong.getAndAdd(i);
    }

    public static void a(int i, List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, int i2, long j) {
        if (j.l().b().g()) {
            long currentTimeMillis = System.currentTimeMillis() - j;
            c.a("uploadCost:" + currentTimeMillis);
            if (i == 200) {
                d.h.Z().getAndAdd(currentTimeMillis);
                d.h.a0().incrementAndGet();
                d.h.c0().getAndAdd(list.size());
                d.h.d0().getAndAdd(list.size());
                return;
            }
            c.b("-------AdThread code is " + i + " error  ------------");
            if (i == -1) {
                d.h.H().getAndAdd(list.size());
            } else {
                d.h.y().getAndAdd(list.size());
            }
            d.h.z().getAndAdd(currentTimeMillis);
            d.h.A().incrementAndGet();
        }
    }

    public static void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, int i) {
        try {
            if (j.l().b().g()) {
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                    if (aVar != null && aVar.h() != 0) {
                        long currentTimeMillis = System.currentTimeMillis() - aVar.h();
                        d.h.R().incrementAndGet();
                        d.h.Q().getAndAdd(currentTimeMillis);
                        aVar.a(System.currentTimeMillis());
                    }
                    if (aVar != null) {
                        a.a(aVar);
                    }
                }
                d.h.g0().getAndAdd(list.size());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list, String str) {
        try {
            if (!j.l().b().g() || list == null) {
                return;
            }
            for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                if (aVar != null) {
                    a.a(aVar, str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
