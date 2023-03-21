package com.umeng.commonsdk.statistics.proto;

import com.apk.Cgoto;
import com.umeng.analytics.pro.aq;
import com.umeng.analytics.pro.at;
import com.umeng.analytics.pro.az;
import com.umeng.analytics.pro.ba;
import com.umeng.analytics.pro.bf;
import com.umeng.analytics.pro.bg;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.bn;
import com.umeng.analytics.pro.bs;
import com.umeng.analytics.pro.bt;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.bx;
import com.umeng.analytics.pro.by;
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

/* compiled from: IdSnapshot.java */
/* loaded from: classes7.dex */
public class b implements at<b, e>, Serializable, Cloneable {
    public static final Map<e, bf> d;
    public static final long e = -6496538196005191531L;
    public static final bx f = new bx("IdSnapshot");
    public static final bn g = new bn("identity", (byte) 11, 1);
    public static final bn h = new bn("ts", (byte) 10, 2);
    public static final bn i = new bn(LitePalParser.NODE_VERSION, (byte) 8, 3);
    public static final Map<Class<? extends ca>, cb> j;
    public static final int k = 0;
    public static final int l = 1;

    /* renamed from: a  reason: collision with root package name */
    public String f12324a;
    public long b;
    public int c;
    public byte m;

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes7.dex */
    public static class a extends cc<b> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, b bVar) throws az {
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
                        } else if (b == 8) {
                            bVar.c = bsVar.w();
                            bVar.c(true);
                        } else {
                            bv.a(bsVar, b);
                        }
                    } else if (b == 10) {
                        bVar.b = bsVar.x();
                        bVar.b(true);
                    } else {
                        bv.a(bsVar, b);
                    }
                } else if (b == 11) {
                    bVar.f12324a = bsVar.z();
                    bVar.a(true);
                } else {
                    bv.a(bsVar, b);
                }
                bsVar.m();
            }
            bsVar.k();
            if (bVar.g()) {
                if (bVar.j()) {
                    bVar.k();
                    return;
                }
                StringBuilder m1016super = Cgoto.m1016super("Required field 'version' was not found in serialized data! Struct: ");
                m1016super.append(toString());
                throw new bt(m1016super.toString());
            }
            StringBuilder m1016super2 = Cgoto.m1016super("Required field 'ts' was not found in serialized data! Struct: ");
            m1016super2.append(toString());
            throw new bt(m1016super2.toString());
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, b bVar) throws az {
            bVar.k();
            bsVar.a(b.f);
            if (bVar.f12324a != null) {
                bsVar.a(b.g);
                bsVar.a(bVar.f12324a);
                bsVar.c();
            }
            bsVar.a(b.h);
            bsVar.a(bVar.b);
            bsVar.c();
            bsVar.a(b.i);
            bsVar.a(bVar.c);
            bsVar.c();
            bsVar.d();
            bsVar.b();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0196b implements cb {
        public C0196b() {
        }

        @Override // com.umeng.analytics.pro.cb
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes7.dex */
    public static class c extends cd<b> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.ca
        public void a(bs bsVar, b bVar) throws az {
            by byVar = (by) bsVar;
            byVar.a(bVar.f12324a);
            byVar.a(bVar.b);
            byVar.a(bVar.c);
        }

        @Override // com.umeng.analytics.pro.ca
        public void b(bs bsVar, b bVar) throws az {
            by byVar = (by) bsVar;
            bVar.f12324a = byVar.z();
            bVar.a(true);
            bVar.b = byVar.x();
            bVar.b(true);
            bVar.c = byVar.w();
            bVar.c(true);
        }
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes7.dex */
    public static class d implements cb {
        public d() {
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
        hashMap.put(cc.class, new C0196b());
        j.put(cd.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new bf("identity", (byte) 1, new bg((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new bf("ts", (byte) 1, new bg((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new bf(LitePalParser.NODE_VERSION, (byte) 1, new bg((byte) 8)));
        Map<e, bf> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = unmodifiableMap;
        bf.a(b.class, unmodifiableMap);
    }

    public b() {
        this.m = (byte) 0;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public b deepCopy() {
        return new b(this);
    }

    public String b() {
        return this.f12324a;
    }

    public void c() {
        this.f12324a = null;
    }

    @Override // com.umeng.analytics.pro.at
    public void clear() {
        this.f12324a = null;
        b(false);
        this.b = 0L;
        c(false);
        this.c = 0;
    }

    public boolean d() {
        return this.f12324a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.m = aq.b(this.m, 0);
    }

    public boolean g() {
        return aq.a(this.m, 0);
    }

    public int h() {
        return this.c;
    }

    public void i() {
        this.m = aq.b(this.m, 1);
    }

    public boolean j() {
        return aq.a(this.m, 1);
    }

    public void k() throws az {
        if (this.f12324a != null) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Required field 'identity' was not present! Struct: ");
        m1016super.append(toString());
        throw new bt(m1016super.toString());
    }

    @Override // com.umeng.analytics.pro.at
    public void read(bs bsVar) throws az {
        j.get(bsVar.D()).b().b(bsVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        String str = this.f12324a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("version:");
        return Cgoto.m1019this(sb, this.c, ")");
    }

    @Override // com.umeng.analytics.pro.at
    public void write(bs bsVar) throws az {
        j.get(bsVar.D()).b().a(bsVar, this);
    }

    /* compiled from: IdSnapshot.java */
    /* loaded from: classes7.dex */
    public enum e implements ba {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, LitePalParser.NODE_VERSION);
        
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
                    return VERSION;
                }
                return TS;
            }
            return IDENTITY;
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

    public b a(String str) {
        this.f12324a = str;
        return this;
    }

    public void b(boolean z) {
        this.m = aq.a(this.m, 0, z);
    }

    public void c(boolean z) {
        this.m = aq.a(this.m, 1, z);
    }

    public b(String str, long j2, int i2) {
        this();
        this.f12324a = str;
        this.b = j2;
        b(true);
        this.c = i2;
        c(true);
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.f12324a = null;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: b */
    public e fieldForId(int i2) {
        return e.a(i2);
    }

    public b a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    public b a(int i2) {
        this.c = i2;
        c(true);
        return this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bm(new ce(objectOutputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public b(b bVar) {
        this.m = (byte) 0;
        this.m = bVar.m;
        if (bVar.d()) {
            this.f12324a = bVar.f12324a;
        }
        this.b = bVar.b;
        this.c = bVar.c;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.m = (byte) 0;
            read(new bm(new ce(objectInputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
