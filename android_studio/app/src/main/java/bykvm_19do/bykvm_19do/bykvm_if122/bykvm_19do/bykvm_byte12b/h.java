package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: IntervalFreqctlCache.java */
/* loaded from: classes8.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, g> f10855a;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.c<g> b;

    /* compiled from: IntervalFreqctlCache.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static h f10856a = new h();
    }

    public static h a() {
        return b.f10856a;
    }

    public g b(String str) {
        if (this.b != null) {
            Map<String, g> map = this.f10855a;
            g gVar = map != null ? map.get(str) : null;
            if (gVar != null) {
                return gVar;
            }
            g b2 = this.b.b(str);
            if (b2 != null) {
                Map<String, g> map2 = this.f10855a;
                if (map2 != null) {
                    map2.put(b2.g(), b2);
                }
                return b2;
            }
        }
        return null;
    }

    public h() {
        this.b = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
        this.f10855a = new ConcurrentHashMap();
    }

    public void a(String str) {
        if (this.b != null) {
            Map<String, g> map = this.f10855a;
            if (map != null) {
                map.remove(str);
            }
            this.b.a(str);
        }
    }

    public void a(String str, String str2) {
        if (this.b != null) {
            Map<String, g> map = this.f10855a;
            if (map != null) {
                map.remove(str + "_" + str2);
            }
            this.b.a(str, str2);
        }
    }

    public g b(String str, String str2) {
        g gVar;
        if (this.b != null) {
            Map<String, g> map = this.f10855a;
            if (map != null) {
                gVar = map.get(str + "_" + str2);
            } else {
                gVar = null;
            }
            if (gVar != null) {
                return gVar;
            }
            g b2 = this.b.b(str, str2);
            if (b2 != null) {
                Map<String, g> map2 = this.f10855a;
                if (map2 != null) {
                    map2.put(b2.g(), b2);
                }
                return b2;
            }
        }
        return null;
    }

    public void a(g gVar) {
        g b2;
        e eVar;
        if (gVar.h()) {
            b2 = b(gVar.d(), gVar.c());
        } else {
            b2 = b(gVar.d());
        }
        if (b2 == null) {
            if (this.b != null) {
                Map<String, g> map = this.f10855a;
                if (map != null) {
                    map.put(gVar.g(), gVar);
                }
                this.b.a((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.c<g>) gVar);
                return;
            }
            return;
        }
        HashMap hashMap = new HashMap();
        for (e eVar2 : b2.i()) {
            hashMap.put(eVar2.d(), eVar2);
        }
        for (e eVar3 : gVar.i()) {
            if (hashMap.containsKey(eVar3.d()) && (eVar = (e) hashMap.get(eVar3.d())) != null) {
                eVar3.a(eVar);
            }
        }
        Map<String, g> map2 = this.f10855a;
        if (map2 != null) {
            map2.put(gVar.g(), gVar);
        }
        b(gVar);
    }

    public void b(g gVar) {
        if (this.b != null) {
            Map<String, g> map = this.f10855a;
            if (map != null) {
                map.put(gVar.g(), gVar);
            }
            this.b.b((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.c<g>) gVar);
        }
    }

    public void a(g gVar, String str, int i) {
        if (this.b != null) {
            gVar.a(str, i);
            Map<String, g> map = this.f10855a;
            if (map != null) {
                map.put(gVar.g(), gVar);
            }
            this.b.b((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.c<g>) gVar);
        }
    }

    public void a(g gVar, String str, long j) {
        if (this.b != null) {
            gVar.a(str, j);
            Map<String, g> map = this.f10855a;
            if (map != null) {
                map.put(gVar.g(), gVar);
            }
            this.b.b((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.c<g>) gVar);
        }
    }
}
