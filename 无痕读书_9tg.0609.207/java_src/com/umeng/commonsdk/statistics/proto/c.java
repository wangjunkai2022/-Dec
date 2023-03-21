package com.umeng.commonsdk.statistics.proto;

import com.apk.Cgoto;
import com.umeng.analytics.pro.at;
import com.umeng.analytics.pro.az;
import com.umeng.analytics.pro.ba;
import com.umeng.analytics.pro.bf;
import com.umeng.analytics.pro.bg;
import com.umeng.analytics.pro.bh;
import com.umeng.analytics.pro.bi;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.bn;
import com.umeng.analytics.pro.bo;
import com.umeng.analytics.pro.bp;
import com.umeng.analytics.pro.bs;
import com.umeng.analytics.pro.bt;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.bx;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.bz;
import com.umeng.analytics.pro.ca;
import com.umeng.analytics.pro.cb;
import com.umeng.analytics.pro.cc;
import com.umeng.analytics.pro.cd;
import com.umeng.analytics.pro.ce;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: IdTracking.java */
/* loaded from: classes7.dex */
public class c implements at<c, e>, Serializable, Cloneable {
    public static final Map<e, bf> d;
    public static final long e = -5764118265293965743L;
    public static final bx f = new bx("IdTracking");
    public static final bn g = new bn("snapshots", bz.k, 1);
    public static final bn h = new bn("journals", bz.m, 2);
    public static final bn i = new bn("checksum", (byte) 11, 3);
    public static final Map<Class<? extends ca>, cb> j;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.b> f12326a;
    public List<com.umeng.commonsdk.statistics.proto.a> b;
    public String c;
    public e[] k;

    /* compiled from: IdTracking.java */
    /* loaded from: classes7.dex */
    public static class a extends cc<c> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, c cVar) throws az {
            bsVar.j();
            while (true) {
                bn l = bsVar.l();
                byte b = l.b;
                if (b == 0) {
                    bsVar.k();
                    cVar.n();
                    return;
                }
                short s = l.c;
                int i = 0;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            bv.a(bsVar, b);
                        } else if (b == 11) {
                            cVar.c = bsVar.z();
                            cVar.c(true);
                        } else {
                            bv.a(bsVar, b);
                        }
                    } else if (b == 15) {
                        bo p = bsVar.p();
                        cVar.b = new ArrayList(p.b);
                        while (i < p.b) {
                            com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                            aVar.read(bsVar);
                            cVar.b.add(aVar);
                            i++;
                        }
                        bsVar.q();
                        cVar.b(true);
                    } else {
                        bv.a(bsVar, b);
                    }
                } else if (b == 13) {
                    bp n = bsVar.n();
                    cVar.f12326a = new HashMap(n.c * 2);
                    while (i < n.c) {
                        String z = bsVar.z();
                        com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                        bVar.read(bsVar);
                        cVar.f12326a.put(z, bVar);
                        i++;
                    }
                    bsVar.o();
                    cVar.a(true);
                } else {
                    bv.a(bsVar, b);
                }
                bsVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, c cVar) throws az {
            cVar.n();
            bsVar.a(c.f);
            if (cVar.f12326a != null) {
                bsVar.a(c.g);
                bsVar.a(new bp((byte) 11, (byte) 12, cVar.f12326a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f12326a.entrySet()) {
                    bsVar.a(entry.getKey());
                    entry.getValue().write(bsVar);
                }
                bsVar.e();
                bsVar.c();
            }
            if (cVar.b != null && cVar.j()) {
                bsVar.a(c.h);
                bsVar.a(new bo((byte) 12, cVar.b.size()));
                for (com.umeng.commonsdk.statistics.proto.a aVar : cVar.b) {
                    aVar.write(bsVar);
                }
                bsVar.f();
                bsVar.c();
            }
            if (cVar.c != null && cVar.m()) {
                bsVar.a(c.i);
                bsVar.a(cVar.c);
                bsVar.c();
            }
            bsVar.d();
            bsVar.b();
        }
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes7.dex */
    public static class b implements cb {
        public b() {
        }

        @Override // com.umeng.analytics.pro.cb
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0197c extends cd<c> {
        public C0197c() {
        }

        @Override // com.umeng.analytics.pro.ca
        public void a(bs bsVar, c cVar) throws az {
            by byVar = (by) bsVar;
            byVar.a(cVar.f12326a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f12326a.entrySet()) {
                byVar.a(entry.getKey());
                entry.getValue().write(byVar);
            }
            BitSet bitSet = new BitSet();
            if (cVar.j()) {
                bitSet.set(0);
            }
            if (cVar.m()) {
                bitSet.set(1);
            }
            byVar.a(bitSet, 2);
            if (cVar.j()) {
                byVar.a(cVar.b.size());
                for (com.umeng.commonsdk.statistics.proto.a aVar : cVar.b) {
                    aVar.write(byVar);
                }
            }
            if (cVar.m()) {
                byVar.a(cVar.c);
            }
        }

        @Override // com.umeng.analytics.pro.ca
        public void b(bs bsVar, c cVar) throws az {
            by byVar = (by) bsVar;
            bp bpVar = new bp((byte) 11, (byte) 12, byVar.w());
            cVar.f12326a = new HashMap(bpVar.c * 2);
            for (int i = 0; i < bpVar.c; i++) {
                String z = byVar.z();
                com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                bVar.read(byVar);
                cVar.f12326a.put(z, bVar);
            }
            cVar.a(true);
            BitSet b = byVar.b(2);
            if (b.get(0)) {
                bo boVar = new bo((byte) 12, byVar.w());
                cVar.b = new ArrayList(boVar.b);
                for (int i2 = 0; i2 < boVar.b; i2++) {
                    com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                    aVar.read(byVar);
                    cVar.b.add(aVar);
                }
                cVar.b(true);
            }
            if (b.get(1)) {
                cVar.c = byVar.z();
                cVar.c(true);
            }
        }
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes7.dex */
    public static class d implements cb {
        public d() {
        }

        @Override // com.umeng.analytics.pro.cb
        /* renamed from: a */
        public C0197c b() {
            return new C0197c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        j = hashMap;
        hashMap.put(cc.class, new b());
        j.put(cd.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SNAPSHOTS, (e) new bf("snapshots", (byte) 1, new bi(bz.k, new bg((byte) 11), new bk((byte) 12, com.umeng.commonsdk.statistics.proto.b.class))));
        enumMap.put((EnumMap) e.JOURNALS, (e) new bf("journals", (byte) 2, new bh(bz.m, new bk((byte) 12, com.umeng.commonsdk.statistics.proto.a.class))));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bf("checksum", (byte) 2, new bg((byte) 11)));
        Map<e, bf> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = unmodifiableMap;
        bf.a(c.class, unmodifiableMap);
    }

    public c() {
        this.k = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public c deepCopy() {
        return new c(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f12326a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.b> c() {
        return this.f12326a;
    }

    @Override // com.umeng.analytics.pro.at
    public void clear() {
        this.f12326a = null;
        this.b = null;
        this.c = null;
    }

    public void d() {
        this.f12326a = null;
    }

    public boolean e() {
        return this.f12326a != null;
    }

    public int f() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Iterator<com.umeng.commonsdk.statistics.proto.a> g() {
        List<com.umeng.commonsdk.statistics.proto.a> list = this.b;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public List<com.umeng.commonsdk.statistics.proto.a> h() {
        return this.b;
    }

    public void i() {
        this.b = null;
    }

    public boolean j() {
        return this.b != null;
    }

    public String k() {
        return this.c;
    }

    public void l() {
        this.c = null;
    }

    public boolean m() {
        return this.c != null;
    }

    public void n() throws az {
        if (this.f12326a != null) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Required field 'snapshots' was not present! Struct: ");
        m1016super.append(toString());
        throw new bt(m1016super.toString());
    }

    @Override // com.umeng.analytics.pro.at
    public void read(bs bsVar) throws az {
        j.get(bsVar.D()).b().b(bsVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        Map<String, com.umeng.commonsdk.statistics.proto.b> map = this.f12326a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        if (j()) {
            sb.append(", ");
            sb.append("journals:");
            List<com.umeng.commonsdk.statistics.proto.a> list = this.b;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("checksum:");
            String str = this.c;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.at
    public void write(bs bsVar) throws az {
        j.get(bsVar.D()).b().a(bsVar, this);
    }

    /* compiled from: IdTracking.java */
    /* loaded from: classes7.dex */
    public enum e implements ba {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");
        
        public static final Map<String, e> d = new HashMap();
        public final short e;
        public final String f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public static e a(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return CHECKSUM;
                }
                return JOURNALS;
            }
            return SNAPSHOTS;
        }

        public static e b(int i) {
            e a2 = a(i);
            if (a2 != null) {
                return a2;
            }
            throw new IllegalArgumentException(Cgoto.m1005instanceof("Field ", i, " doesn't exist!"));
        }

        @Override // com.umeng.analytics.pro.ba
        public String b() {
            return this.f;
        }

        public static e a(String str) {
            return d.get(str);
        }

        @Override // com.umeng.analytics.pro.ba
        public short a() {
            return this.e;
        }
    }

    public void a(String str, com.umeng.commonsdk.statistics.proto.b bVar) {
        if (this.f12326a == null) {
            this.f12326a = new HashMap();
        }
        this.f12326a.put(str, bVar);
    }

    public void b(boolean z) {
        if (z) {
            return;
        }
        this.b = null;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.c = null;
    }

    public c(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this();
        this.f12326a = map;
    }

    public c(c cVar) {
        this.k = new e[]{e.JOURNALS, e.CHECKSUM};
        if (cVar.e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.f12326a.entrySet()) {
                hashMap.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.b(entry.getValue()));
            }
            this.f12326a = hashMap;
        }
        if (cVar.j()) {
            ArrayList arrayList = new ArrayList();
            for (com.umeng.commonsdk.statistics.proto.a aVar : cVar.b) {
                arrayList.add(new com.umeng.commonsdk.statistics.proto.a(aVar));
            }
            this.b = arrayList;
        }
        if (cVar.m()) {
            this.c = cVar.c;
        }
    }

    public c a(Map<String, com.umeng.commonsdk.statistics.proto.b> map) {
        this.f12326a = map;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.f12326a = null;
    }

    public void a(com.umeng.commonsdk.statistics.proto.a aVar) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(aVar);
    }

    public c a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.b = list;
        return this;
    }

    public c a(String str) {
        this.c = str;
        return this;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bm(new ce(objectOutputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new bm(new ce(objectInputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
