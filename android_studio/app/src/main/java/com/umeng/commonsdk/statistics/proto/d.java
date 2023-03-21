package com.umeng.commonsdk.statistics.proto;

import com.apk.Cgoto;
import com.umeng.analytics.pro.aq;
import com.umeng.analytics.pro.at;
import com.umeng.analytics.pro.az;
import com.umeng.analytics.pro.ba;
import com.umeng.analytics.pro.bf;
import com.umeng.analytics.pro.bg;
import com.umeng.analytics.pro.bi;
import com.umeng.analytics.pro.bk;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.bn;
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
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.litepal.parser.LitePalParser;

/* compiled from: Imprint.java */
/* loaded from: classes7.dex */
public class d implements at<d, e>, Serializable, Cloneable {
    public static final Map<e, bf> d;
    public static final long e = 2846460275012375038L;
    public static final bx f = new bx("Imprint");
    public static final bn g = new bn("property", bz.k, 1);
    public static final bn h = new bn(LitePalParser.NODE_VERSION, (byte) 8, 2);
    public static final bn i = new bn("checksum", (byte) 11, 3);
    public static final Map<Class<? extends ca>, cb> j;
    public static final int k = 0;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, com.umeng.commonsdk.statistics.proto.e> f12328a;
    public int b;
    public String c;
    public byte l;

    /* compiled from: Imprint.java */
    /* loaded from: classes7.dex */
    public static class a extends cc<d> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, d dVar) throws az {
            bsVar.j();
            while (true) {
                bn l = bsVar.l();
                byte b = l.b;
                if (b == 0) {
                    break;
                }
                short s = l.c;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            bv.a(bsVar, b);
                        } else if (b == 11) {
                            dVar.c = bsVar.z();
                            dVar.c(true);
                        } else {
                            bv.a(bsVar, b);
                        }
                    } else if (b == 8) {
                        dVar.b = bsVar.w();
                        dVar.b(true);
                    } else {
                        bv.a(bsVar, b);
                    }
                } else if (b == 13) {
                    bp n = bsVar.n();
                    dVar.f12328a = new HashMap(n.c * 2);
                    for (int i = 0; i < n.c; i++) {
                        String z = bsVar.z();
                        com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                        eVar.read(bsVar);
                        dVar.f12328a.put(z, eVar);
                    }
                    bsVar.o();
                    dVar.a(true);
                } else {
                    bv.a(bsVar, b);
                }
                bsVar.m();
            }
            bsVar.k();
            if (dVar.h()) {
                dVar.l();
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("Required field 'version' was not found in serialized data! Struct: ");
            m1016super.append(toString());
            throw new bt(m1016super.toString());
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, d dVar) throws az {
            dVar.l();
            bsVar.a(d.f);
            if (dVar.f12328a != null) {
                bsVar.a(d.g);
                bsVar.a(new bp((byte) 11, (byte) 12, dVar.f12328a.size()));
                for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f12328a.entrySet()) {
                    bsVar.a(entry.getKey());
                    entry.getValue().write(bsVar);
                }
                bsVar.e();
                bsVar.c();
            }
            bsVar.a(d.h);
            bsVar.a(dVar.b);
            bsVar.c();
            if (dVar.c != null) {
                bsVar.a(d.i);
                bsVar.a(dVar.c);
                bsVar.c();
            }
            bsVar.d();
            bsVar.b();
        }
    }

    /* compiled from: Imprint.java */
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

    /* compiled from: Imprint.java */
    /* loaded from: classes7.dex */
    public static class c extends cd<d> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.ca
        public void a(bs bsVar, d dVar) throws az {
            by byVar = (by) bsVar;
            byVar.a(dVar.f12328a.size());
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f12328a.entrySet()) {
                byVar.a(entry.getKey());
                entry.getValue().write(byVar);
            }
            byVar.a(dVar.b);
            byVar.a(dVar.c);
        }

        @Override // com.umeng.analytics.pro.ca
        public void b(bs bsVar, d dVar) throws az {
            by byVar = (by) bsVar;
            bp bpVar = new bp((byte) 11, (byte) 12, byVar.w());
            dVar.f12328a = new HashMap(bpVar.c * 2);
            for (int i = 0; i < bpVar.c; i++) {
                String z = byVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(byVar);
                dVar.f12328a.put(z, eVar);
            }
            dVar.a(true);
            dVar.b = byVar.w();
            dVar.b(true);
            dVar.c = byVar.z();
            dVar.c(true);
        }
    }

    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0198d implements cb {
        public C0198d() {
        }

        @Override // com.umeng.analytics.pro.cb
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        j = hashMap;
        hashMap.put(cc.class, new b());
        j.put(cd.class, new C0198d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROPERTY, (e) new bf("property", (byte) 1, new bi(bz.k, new bg((byte) 11), new bk((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put((EnumMap) e.VERSION, (e) new bf(LitePalParser.NODE_VERSION, (byte) 1, new bg((byte) 8)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bf("checksum", (byte) 1, new bg((byte) 11)));
        Map<e, bf> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = unmodifiableMap;
        bf.a(d.class, unmodifiableMap);
    }

    public d() {
        this.l = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public d deepCopy() {
        return new d(this);
    }

    public int b() {
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f12328a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public Map<String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.f12328a;
    }

    @Override // com.umeng.analytics.pro.at
    public void clear() {
        this.f12328a = null;
        b(false);
        this.b = 0;
        this.c = null;
    }

    public void d() {
        this.f12328a = null;
    }

    public boolean e() {
        return this.f12328a != null;
    }

    public int f() {
        return this.b;
    }

    public void g() {
        this.l = aq.b(this.l, 0);
    }

    public boolean h() {
        return aq.a(this.l, 0);
    }

    public String i() {
        return this.c;
    }

    public void j() {
        this.c = null;
    }

    public boolean k() {
        return this.c != null;
    }

    public void l() throws az {
        if (this.f12328a != null) {
            if (this.c != null) {
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("Required field 'checksum' was not present! Struct: ");
            m1016super.append(toString());
            throw new bt(m1016super.toString());
        }
        StringBuilder m1016super2 = Cgoto.m1016super("Required field 'property' was not present! Struct: ");
        m1016super2.append(toString());
        throw new bt(m1016super2.toString());
    }

    @Override // com.umeng.analytics.pro.at
    public void read(bs bsVar) throws az {
        j.get(bsVar.D()).b().b(bsVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        Map<String, com.umeng.commonsdk.statistics.proto.e> map = this.f12328a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("checksum:");
        String str = this.c;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.at
    public void write(bs bsVar) throws az {
        j.get(bsVar.D()).b().a(bsVar, this);
    }

    /* compiled from: Imprint.java */
    /* loaded from: classes7.dex */
    public enum e implements ba {
        PROPERTY(1, "property"),
        VERSION(2, LitePalParser.NODE_VERSION),
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
                return VERSION;
            }
            return PROPERTY;
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

    public void a(String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.f12328a == null) {
            this.f12328a = new HashMap();
        }
        this.f12328a.put(str, eVar);
    }

    public void b(boolean z) {
        this.l = aq.a(this.l, 0, z);
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.c = null;
    }

    public d(Map<String, com.umeng.commonsdk.statistics.proto.e> map, int i2, String str) {
        this();
        this.f12328a = map;
        this.b = i2;
        b(true);
        this.c = str;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: b */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public d a(Map<String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.f12328a = map;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.f12328a = null;
    }

    public d a(int i2) {
        this.b = i2;
        b(true);
        return this;
    }

    public d(d dVar) {
        this.l = (byte) 0;
        this.l = dVar.l;
        if (dVar.e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.f12328a.entrySet()) {
                hashMap.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.f12328a = hashMap;
        }
        this.b = dVar.b;
        if (dVar.k()) {
            this.c = dVar.c;
        }
    }

    public d a(String str) {
        this.c = str;
        return this;
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
            this.l = (byte) 0;
            read(new bm(new ce(objectInputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
