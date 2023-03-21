package com.umeng.analytics.pro;

import com.apk.Cgoto;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.litepal.parser.LitePalParser;

/* compiled from: UMEnvelope.java */
/* loaded from: classes7.dex */
public class al implements at<al, e>, Serializable, Cloneable {
    public static final int A = 2;
    public static final int B = 3;
    public static final Map<e, bf> k;
    public static final long l = 420342210744516016L;
    public static final bx m = new bx("UMEnvelope");
    public static final bn n = new bn(LitePalParser.NODE_VERSION, (byte) 11, 1);
    public static final bn o = new bn("address", (byte) 11, 2);
    public static final bn p = new bn("signature", (byte) 11, 3);
    public static final bn q = new bn("serial_num", (byte) 8, 4);
    public static final bn r = new bn("ts_secs", (byte) 8, 5);
    public static final bn s = new bn("length", (byte) 8, 6);
    public static final bn t = new bn("entity", (byte) 11, 7);
    public static final bn u = new bn("guid", (byte) 11, 8);
    public static final bn v = new bn("checksum", (byte) 11, 9);
    public static final bn w = new bn("codex", (byte) 8, 10);
    public static final Map<Class<? extends ca>, cb> x;
    public static final int y = 0;
    public static final int z = 1;
    public byte C;
    public e[] D;

    /* renamed from: a  reason: collision with root package name */
    public String f12142a;
    public String b;
    public String c;
    public int d;
    public int e;
    public int f;
    public ByteBuffer g;
    public String h;
    public String i;
    public int j;

    /* compiled from: UMEnvelope.java */
    /* loaded from: classes7.dex */
    public static class a extends cc<al> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, al alVar) throws az {
            bsVar.j();
            while (true) {
                bn l = bsVar.l();
                byte b = l.b;
                if (b == 0) {
                    bsVar.k();
                    if (alVar.m()) {
                        if (alVar.p()) {
                            if (alVar.s()) {
                                alVar.G();
                                return;
                            }
                            StringBuilder m1016super = Cgoto.m1016super("Required field 'length' was not found in serialized data! Struct: ");
                            m1016super.append(toString());
                            throw new bt(m1016super.toString());
                        }
                        StringBuilder m1016super2 = Cgoto.m1016super("Required field 'ts_secs' was not found in serialized data! Struct: ");
                        m1016super2.append(toString());
                        throw new bt(m1016super2.toString());
                    }
                    StringBuilder m1016super3 = Cgoto.m1016super("Required field 'serial_num' was not found in serialized data! Struct: ");
                    m1016super3.append(toString());
                    throw new bt(m1016super3.toString());
                }
                switch (l.c) {
                    case 1:
                        if (b == 11) {
                            alVar.f12142a = bsVar.z();
                            alVar.a(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 2:
                        if (b == 11) {
                            alVar.b = bsVar.z();
                            alVar.b(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 3:
                        if (b == 11) {
                            alVar.c = bsVar.z();
                            alVar.c(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 4:
                        if (b == 8) {
                            alVar.d = bsVar.w();
                            alVar.d(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 5:
                        if (b == 8) {
                            alVar.e = bsVar.w();
                            alVar.e(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 6:
                        if (b == 8) {
                            alVar.f = bsVar.w();
                            alVar.f(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 7:
                        if (b == 11) {
                            alVar.g = bsVar.A();
                            alVar.g(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 8:
                        if (b == 11) {
                            alVar.h = bsVar.z();
                            alVar.h(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 9:
                        if (b == 11) {
                            alVar.i = bsVar.z();
                            alVar.i(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    case 10:
                        if (b == 8) {
                            alVar.j = bsVar.w();
                            alVar.j(true);
                            break;
                        } else {
                            bv.a(bsVar, b);
                            break;
                        }
                    default:
                        bv.a(bsVar, b);
                        break;
                }
                bsVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, al alVar) throws az {
            alVar.G();
            bsVar.a(al.m);
            if (alVar.f12142a != null) {
                bsVar.a(al.n);
                bsVar.a(alVar.f12142a);
                bsVar.c();
            }
            if (alVar.b != null) {
                bsVar.a(al.o);
                bsVar.a(alVar.b);
                bsVar.c();
            }
            if (alVar.c != null) {
                bsVar.a(al.p);
                bsVar.a(alVar.c);
                bsVar.c();
            }
            bsVar.a(al.q);
            bsVar.a(alVar.d);
            bsVar.c();
            bsVar.a(al.r);
            bsVar.a(alVar.e);
            bsVar.c();
            bsVar.a(al.s);
            bsVar.a(alVar.f);
            bsVar.c();
            if (alVar.g != null) {
                bsVar.a(al.t);
                bsVar.a(alVar.g);
                bsVar.c();
            }
            if (alVar.h != null) {
                bsVar.a(al.u);
                bsVar.a(alVar.h);
                bsVar.c();
            }
            if (alVar.i != null) {
                bsVar.a(al.v);
                bsVar.a(alVar.i);
                bsVar.c();
            }
            if (alVar.F()) {
                bsVar.a(al.w);
                bsVar.a(alVar.j);
                bsVar.c();
            }
            bsVar.d();
            bsVar.b();
        }
    }

    /* compiled from: UMEnvelope.java */
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

    /* compiled from: UMEnvelope.java */
    /* loaded from: classes7.dex */
    public static class c extends cd<al> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.ca
        public void a(bs bsVar, al alVar) throws az {
            by byVar = (by) bsVar;
            byVar.a(alVar.f12142a);
            byVar.a(alVar.b);
            byVar.a(alVar.c);
            byVar.a(alVar.d);
            byVar.a(alVar.e);
            byVar.a(alVar.f);
            byVar.a(alVar.g);
            byVar.a(alVar.h);
            byVar.a(alVar.i);
            BitSet bitSet = new BitSet();
            if (alVar.F()) {
                bitSet.set(0);
            }
            byVar.a(bitSet, 1);
            if (alVar.F()) {
                byVar.a(alVar.j);
            }
        }

        @Override // com.umeng.analytics.pro.ca
        public void b(bs bsVar, al alVar) throws az {
            by byVar = (by) bsVar;
            alVar.f12142a = byVar.z();
            alVar.a(true);
            alVar.b = byVar.z();
            alVar.b(true);
            alVar.c = byVar.z();
            alVar.c(true);
            alVar.d = byVar.w();
            alVar.d(true);
            alVar.e = byVar.w();
            alVar.e(true);
            alVar.f = byVar.w();
            alVar.f(true);
            alVar.g = byVar.A();
            alVar.g(true);
            alVar.h = byVar.z();
            alVar.h(true);
            alVar.i = byVar.z();
            alVar.i(true);
            if (byVar.b(1).get(0)) {
                alVar.j = byVar.w();
                alVar.j(true);
            }
        }
    }

    /* compiled from: UMEnvelope.java */
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
        x = hashMap;
        hashMap.put(cc.class, new b());
        x.put(cd.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VERSION, (e) new bf(LitePalParser.NODE_VERSION, (byte) 1, new bg((byte) 11)));
        enumMap.put((EnumMap) e.ADDRESS, (e) new bf("address", (byte) 1, new bg((byte) 11)));
        enumMap.put((EnumMap) e.SIGNATURE, (e) new bf("signature", (byte) 1, new bg((byte) 11)));
        enumMap.put((EnumMap) e.SERIAL_NUM, (e) new bf("serial_num", (byte) 1, new bg((byte) 8)));
        enumMap.put((EnumMap) e.TS_SECS, (e) new bf("ts_secs", (byte) 1, new bg((byte) 8)));
        enumMap.put((EnumMap) e.LENGTH, (e) new bf("length", (byte) 1, new bg((byte) 8)));
        enumMap.put((EnumMap) e.ENTITY, (e) new bf("entity", (byte) 1, new bg((byte) 11, true)));
        enumMap.put((EnumMap) e.GUID, (e) new bf("guid", (byte) 1, new bg((byte) 11)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bf("checksum", (byte) 1, new bg((byte) 11)));
        enumMap.put((EnumMap) e.CODEX, (e) new bf("codex", (byte) 2, new bg((byte) 8)));
        Map<e, bf> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        k = unmodifiableMap;
        bf.a(al.class, unmodifiableMap);
    }

    public al() {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
    }

    public String A() {
        return this.i;
    }

    public void B() {
        this.i = null;
    }

    public boolean C() {
        return this.i != null;
    }

    public int D() {
        return this.j;
    }

    public void E() {
        this.C = aq.b(this.C, 3);
    }

    public boolean F() {
        return aq.a(this.C, 3);
    }

    public void G() throws az {
        if (this.f12142a != null) {
            if (this.b != null) {
                if (this.c != null) {
                    if (this.g != null) {
                        if (this.h != null) {
                            if (this.i != null) {
                                return;
                            }
                            StringBuilder m1016super = Cgoto.m1016super("Required field 'checksum' was not present! Struct: ");
                            m1016super.append(toString());
                            throw new bt(m1016super.toString());
                        }
                        StringBuilder m1016super2 = Cgoto.m1016super("Required field 'guid' was not present! Struct: ");
                        m1016super2.append(toString());
                        throw new bt(m1016super2.toString());
                    }
                    StringBuilder m1016super3 = Cgoto.m1016super("Required field 'entity' was not present! Struct: ");
                    m1016super3.append(toString());
                    throw new bt(m1016super3.toString());
                }
                StringBuilder m1016super4 = Cgoto.m1016super("Required field 'signature' was not present! Struct: ");
                m1016super4.append(toString());
                throw new bt(m1016super4.toString());
            }
            StringBuilder m1016super5 = Cgoto.m1016super("Required field 'address' was not present! Struct: ");
            m1016super5.append(toString());
            throw new bt(m1016super5.toString());
        }
        StringBuilder m1016super6 = Cgoto.m1016super("Required field 'version' was not present! Struct: ");
        m1016super6.append(toString());
        throw new bt(m1016super6.toString());
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public al deepCopy() {
        return new al(this);
    }

    public String b() {
        return this.f12142a;
    }

    public void c() {
        this.f12142a = null;
    }

    @Override // com.umeng.analytics.pro.at
    public void clear() {
        this.f12142a = null;
        this.b = null;
        this.c = null;
        d(false);
        this.d = 0;
        e(false);
        this.e = 0;
        f(false);
        this.f = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        j(false);
        this.j = 0;
    }

    public boolean d() {
        return this.f12142a != null;
    }

    public String e() {
        return this.b;
    }

    public void f() {
        this.b = null;
    }

    public boolean g() {
        return this.b != null;
    }

    public String h() {
        return this.c;
    }

    public void i() {
        this.c = null;
    }

    public boolean j() {
        return this.c != null;
    }

    public int k() {
        return this.d;
    }

    public void l() {
        this.C = aq.b(this.C, 0);
    }

    public boolean m() {
        return aq.a(this.C, 0);
    }

    public int n() {
        return this.e;
    }

    public void o() {
        this.C = aq.b(this.C, 1);
    }

    public boolean p() {
        return aq.a(this.C, 1);
    }

    public int q() {
        return this.f;
    }

    public void r() {
        this.C = aq.b(this.C, 2);
    }

    @Override // com.umeng.analytics.pro.at
    public void read(bs bsVar) throws az {
        x.get(bsVar.D()).b().b(bsVar, this);
    }

    public boolean s() {
        return aq.a(this.C, 2);
    }

    public byte[] t() {
        a(au.c(this.g));
        ByteBuffer byteBuffer = this.g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        String str = this.f12142a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("address:");
        String str2 = this.b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("signature:");
        String str3 = this.c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f);
        sb.append(", ");
        sb.append("entity:");
        ByteBuffer byteBuffer = this.g;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            au.a(byteBuffer, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        String str4 = this.h;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        sb.append(", ");
        sb.append("checksum:");
        String str5 = this.i;
        if (str5 == null) {
            sb.append("null");
        } else {
            sb.append(str5);
        }
        if (F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }

    public ByteBuffer u() {
        return this.g;
    }

    public void v() {
        this.g = null;
    }

    public boolean w() {
        return this.g != null;
    }

    @Override // com.umeng.analytics.pro.at
    public void write(bs bsVar) throws az {
        x.get(bsVar.D()).b().a(bsVar, this);
    }

    public String x() {
        return this.h;
    }

    public void y() {
        this.h = null;
    }

    public boolean z() {
        return this.h != null;
    }

    /* compiled from: UMEnvelope.java */
    /* loaded from: classes7.dex */
    public enum e implements ba {
        VERSION(1, LitePalParser.NODE_VERSION),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");
        
        public static final Map<String, e> k = new HashMap();
        public final short l;
        public final String m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                k.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.l = s;
            this.m = str;
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
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
            return this.m;
        }

        public static e a(String str) {
            return k.get(str);
        }

        @Override // com.umeng.analytics.pro.ba
        public short a() {
            return this.l;
        }
    }

    public al a(String str) {
        this.f12142a = str;
        return this;
    }

    public al b(String str) {
        this.b = str;
        return this;
    }

    public al c(String str) {
        this.c = str;
        return this;
    }

    public void d(boolean z2) {
        this.C = aq.a(this.C, 0, z2);
    }

    public void e(boolean z2) {
        this.C = aq.a(this.C, 1, z2);
    }

    public void f(boolean z2) {
        this.C = aq.a(this.C, 2, z2);
    }

    public void g(boolean z2) {
        if (z2) {
            return;
        }
        this.g = null;
    }

    public void h(boolean z2) {
        if (z2) {
            return;
        }
        this.h = null;
    }

    public void i(boolean z2) {
        if (z2) {
            return;
        }
        this.i = null;
    }

    public void j(boolean z2) {
        this.C = aq.a(this.C, 3, z2);
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.f12142a = null;
    }

    public void b(boolean z2) {
        if (z2) {
            return;
        }
        this.b = null;
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.c = null;
    }

    public al d(String str) {
        this.h = str;
        return this;
    }

    public al e(String str) {
        this.i = str;
        return this;
    }

    public al(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f12142a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        d(true);
        this.e = i2;
        e(true);
        this.f = i3;
        f(true);
        this.g = byteBuffer;
        this.h = str4;
        this.i = str5;
    }

    public al a(int i) {
        this.d = i;
        d(true);
        return this;
    }

    public al b(int i) {
        this.e = i;
        e(true);
        return this;
    }

    public al c(int i) {
        this.f = i;
        f(true);
        return this;
    }

    public al d(int i) {
        this.j = i;
        j(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: e */
    public e fieldForId(int i) {
        return e.a(i);
    }

    public al a(byte[] bArr) {
        a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    public al a(ByteBuffer byteBuffer) {
        this.g = byteBuffer;
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
            this.C = (byte) 0;
            read(new bm(new ce(objectInputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public al(al alVar) {
        this.C = (byte) 0;
        this.D = new e[]{e.CODEX};
        this.C = alVar.C;
        if (alVar.d()) {
            this.f12142a = alVar.f12142a;
        }
        if (alVar.g()) {
            this.b = alVar.b;
        }
        if (alVar.j()) {
            this.c = alVar.c;
        }
        this.d = alVar.d;
        this.e = alVar.e;
        this.f = alVar.f;
        if (alVar.w()) {
            this.g = au.d(alVar.g);
        }
        if (alVar.z()) {
            this.h = alVar.h;
        }
        if (alVar.C()) {
            this.i = alVar.i;
        }
        this.j = alVar.j;
    }
}
