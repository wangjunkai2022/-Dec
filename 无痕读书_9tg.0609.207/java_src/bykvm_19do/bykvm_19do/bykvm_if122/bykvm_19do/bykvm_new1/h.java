package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import com.bytedance.msdk.adapter.util.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: TTRequestLoadingStatus.java */
/* loaded from: classes8.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Integer, Boolean> f10941a = new HashMap();
    public final Map<Integer, AtomicInteger> b = new HashMap();
    public final AtomicInteger c = new AtomicInteger();
    public final AtomicBoolean d = new AtomicBoolean(false);
    public final AtomicInteger e = new AtomicInteger();
    public final List<Integer> f = new ArrayList();
    public final AtomicInteger g = new AtomicInteger();
    public final List<String> h = new CopyOnWriteArrayList();
    public final AtomicBoolean i = new AtomicBoolean(false);

    public void a(boolean z) {
        this.d.set(z);
    }

    public int b() {
        return this.g.get();
    }

    public boolean c(int i) {
        Map<Integer, Boolean> map = this.f10941a;
        return (map == null || map.get(Integer.valueOf(i)) == null || !this.f10941a.get(Integer.valueOf(i)).booleanValue()) ? false : true;
    }

    public int d() {
        int i;
        synchronized (this) {
            i = this.e.get();
        }
        return i;
    }

    public void e(int i) {
        this.e.set(i);
    }

    public void f(int i) {
        this.g.set(i);
    }

    public boolean g() {
        return this.d.get();
    }

    public void h() {
        this.e.set(0);
        this.c.set(0);
        this.f10941a.clear();
        this.b.clear();
        this.d.set(false);
        this.h.clear();
        this.f.clear();
        this.i.set(false);
    }

    public void a() {
        synchronized (this) {
            if (this.g.get() != 0) {
                this.g.decrementAndGet();
            }
        }
    }

    public int b(int i) {
        AtomicInteger atomicInteger = this.b.get(Integer.valueOf(i));
        if (atomicInteger != null) {
            return atomicInteger.get();
        }
        return -1;
    }

    public int c() {
        int i;
        synchronized (this) {
            i = this.c.get();
        }
        return i;
    }

    public boolean e() {
        return this.i.get();
    }

    public boolean f() {
        return c() == 0 && d() == 0;
    }

    public void b(boolean z) {
        this.i.set(z);
    }

    public void d(int i) {
        this.f.add(Integer.valueOf(i));
    }

    public void b(List<Integer> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        synchronized (this) {
            AtomicInteger atomicInteger = new AtomicInteger();
            for (Integer num : list) {
                Boolean bool = this.f10941a.get(num);
                if (bool == null || !bool.booleanValue()) {
                    atomicInteger.incrementAndGet();
                }
            }
            this.c.set(atomicInteger.get());
        }
    }

    public void a(String str) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                this.h.add(str);
            }
            if (this.e.get() != 0) {
                this.e.decrementAndGet();
            } else {
                Logger.e("TTMediationSDK", "decrementTotalWaterFall--waterfall数量减少一个 ---不用再减了不然就变成-1了");
            }
        }
    }

    public void a(int i, int i2) {
        this.b.put(Integer.valueOf(i), new AtomicInteger(i2));
    }

    public void a(int i) {
        AtomicInteger atomicInteger = this.b.get(Integer.valueOf(i));
        if (atomicInteger == null || atomicInteger.get() == 0) {
            return;
        }
        atomicInteger.decrementAndGet();
    }

    public void a(List<Integer> list) {
        if (list != null) {
            this.c.set(list.size());
            for (Integer num : list) {
                this.f10941a.put(num, Boolean.FALSE);
            }
        }
    }

    public void a(int i, boolean z) {
        synchronized (this) {
            Boolean bool = this.f10941a.get(Integer.valueOf(i));
            if (bool != null && !bool.booleanValue()) {
                this.f10941a.put(Integer.valueOf(i), Boolean.valueOf(z));
                this.c.decrementAndGet();
            }
        }
    }

    public void a(List<i> list, List<i> list2, List<i> list3) {
        if (list == null || list.size() == 0) {
            return;
        }
        synchronized (this) {
            int size = list.size();
            if (list2 != null) {
                size += list2.size();
            }
            if (list3 != null) {
                size += list3.size();
            }
            for (i iVar : list) {
                Iterator<String> it = this.h.iterator();
                while (true) {
                    if (it.hasNext()) {
                        String next = it.next();
                        if (!TextUtils.isEmpty(next) && iVar != null && next.equals(iVar.d())) {
                            size--;
                            break;
                        }
                    }
                }
            }
            if (!f0.a(list2)) {
                for (i iVar2 : list2) {
                    Iterator<String> it2 = this.h.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            String next2 = it2.next();
                            if (!TextUtils.isEmpty(next2) && iVar2 != null && next2.equals(iVar2.d())) {
                                size--;
                                break;
                            }
                        }
                    }
                }
            }
            if (!f0.a(list3)) {
                for (i iVar3 : list3) {
                    Iterator<String> it3 = this.h.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            String next3 = it3.next();
                            if (!TextUtils.isEmpty(next3) && iVar3 != null && next3.equals(iVar3.d())) {
                                size--;
                                break;
                            }
                        }
                    }
                }
            }
            if (size < 0) {
                size = 0;
            }
            this.e.set(size);
        }
    }
}
