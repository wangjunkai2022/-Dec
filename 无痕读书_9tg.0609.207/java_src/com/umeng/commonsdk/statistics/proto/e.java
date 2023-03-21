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
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.litepal.parser.LitePalParser;
/* compiled from: ImprintValue.java */
/* loaded from: classes7.dex */
public class e implements at<e, EnumC0199e>, Serializable, Cloneable {
    public static final Map<EnumC0199e, bf> d;
    public static final long e = 7501688097813630241L;
    public static final bx f = new bx("ImprintValue");
    public static final bn g = new bn(LitePalParser.ATTR_VALUE, (byte) 11, 1);
    public static final bn h = new bn("ts", (byte) 10, 2);
    public static final bn i = new bn("guid", (byte) 11, 3);
    public static final Map<Class<? extends ca>, cb> j;
    public static final int k = 0;

    /* renamed from: a  reason: collision with root package name */
    public String f12330a;
    public long b;
    public String c;
    public byte l;
    public EnumC0199e[] m;

    /* compiled from: ImprintValue.java */
    /* loaded from: classes7.dex */
    public static class a extends cc<e> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, e eVar) throws az {
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
                            eVar.c = bsVar.z();
                            eVar.c(true);
                        } else {
                            bv.a(bsVar, b);
                        }
                    } else if (b == 10) {
                        eVar.b = bsVar.x();
                        eVar.b(true);
                    } else {
                        bv.a(bsVar, b);
                    }
                } else if (b == 11) {
                    eVar.f12330a = bsVar.z();
                    eVar.a(true);
                } else {
                    bv.a(bsVar, b);
                }
                bsVar.m();
            }
            bsVar.k();
            if (eVar.g()) {
                eVar.k();
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("Required field 'ts' was not found in serialized data! Struct: ");
            m1016super.append(toString());
            throw new bt(m1016super.toString());
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, e eVar) throws az {
            eVar.k();
            bsVar.a(e.f);
            if (eVar.f12330a != null && eVar.d()) {
                bsVar.a(e.g);
                bsVar.a(eVar.f12330a);
                bsVar.c();
            }
            bsVar.a(e.h);
            bsVar.a(eVar.b);
            bsVar.c();
            if (eVar.c != null) {
                bsVar.a(e.i);
                bsVar.a(eVar.c);
                bsVar.c();
            }
            bsVar.d();
            bsVar.b();
        }
    }

    /* compiled from: ImprintValue.java */
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

    /* compiled from: ImprintValue.java */
    /* loaded from: classes7.dex */
    public static class c extends cd<e> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.ca
        public void a(bs bsVar, e eVar) throws az {
            by byVar = (by) bsVar;
            byVar.a(eVar.b);
            byVar.a(eVar.c);
            BitSet bitSet = new BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            byVar.a(bitSet, 1);
            if (eVar.d()) {
                byVar.a(eVar.f12330a);
            }
        }

        @Override // com.umeng.analytics.pro.ca
        public void b(bs bsVar, e eVar) throws az {
            by byVar = (by) bsVar;
            eVar.b = byVar.x();
            eVar.b(true);
            eVar.c = byVar.z();
            eVar.c(true);
            if (byVar.b(1).get(0)) {
                eVar.f12330a = byVar.z();
                eVar.a(true);
            }
        }
    }

    /* compiled from: ImprintValue.java */
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
        hashMap.put(cc.class, new b());
        j.put(cd.class, new d());
        EnumMap enumMap = new EnumMap(EnumC0199e.class);
        enumMap.put((EnumMap) EnumC0199e.VALUE, (EnumC0199e) new bf(LitePalParser.ATTR_VALUE, (byte) 2, new bg((byte) 11)));
        enumMap.put((EnumMap) EnumC0199e.TS, (EnumC0199e) new bf("ts", (byte) 1, new bg((byte) 10)));
        enumMap.put((EnumMap) EnumC0199e.GUID, (EnumC0199e) new bf("guid", (byte) 1, new bg((byte) 11)));
        Map<EnumC0199e, bf> unmodifiableMap = Collections.unmodifiableMap(enumMap);
        d = unmodifiableMap;
        bf.a(e.class, unmodifiableMap);
    }

    public e() {
        this.l = (byte) 0;
        this.m = new EnumC0199e[]{EnumC0199e.VALUE};
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public e deepCopy() {
        return new e(this);
    }

    public String b() {
        return this.f12330a;
    }

    public void c() {
        this.f12330a = null;
    }

    @Override // com.umeng.analytics.pro.at
    public void clear() {
        this.f12330a = null;
        b(false);
        this.b = 0L;
        this.c = null;
    }

    public boolean d() {
        return this.f12330a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.l = aq.b(this.l, 0);
    }

    public boolean g() {
        return aq.a(this.l, 0);
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

    public void k() throws az {
        if (this.c != null) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Required field 'guid' was not present! Struct: ");
        m1016super.append(toString());
        throw new bt(m1016super.toString());
    }

    @Override // com.umeng.analytics.pro.at
    public void read(bs bsVar) throws az {
        j.get(bsVar.D()).b().b(bsVar, this);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ImprintValue(");
        if (d()) {
            sb.append("value:");
            String str = this.f12330a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("guid:");
        String str2 = this.c;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.at
    public void write(bs bsVar) throws az {
        j.get(bsVar.D()).b().a(bsVar, this);
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public enum EnumC0199e implements ba {
        VALUE(1, LitePalParser.ATTR_VALUE),
        TS(2, "ts"),
        GUID(3, "guid");
        
        public static final Map<String, EnumC0199e> d = new HashMap();
        public final short e;
        public final String f;

        static {
            Iterator it = EnumSet.allOf(EnumC0199e.class).iterator();
            while (it.hasNext()) {
                EnumC0199e enumC0199e = (EnumC0199e) it.next();
                d.put(enumC0199e.b(), enumC0199e);
            }
        }

        EnumC0199e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public static EnumC0199e a(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return GUID;
                }
                return TS;
            }
            return VALUE;
        }

        public static EnumC0199e b(int i) {
            EnumC0199e a2 = a(i);
            if (a2 != null) {
                return a2;
            }
            throw new IllegalArgumentException(Cgoto.m1005instanceof("Field ", i, " doesn't exist!"));
        }

        @Override // com.umeng.analytics.pro.ba
        public String b() {
            return this.f;
        }

        public static EnumC0199e a(String str) {
            return d.get(str);
        }

        @Override // com.umeng.analytics.pro.ba
        public short a() {
            return this.e;
        }
    }

    public e a(String str) {
        this.f12330a = str;
        return this;
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

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.f12330a = null;
    }

    public e b(String str) {
        this.c = str;
        return this;
    }

    public e(long j2, String str) {
        this();
        this.b = j2;
        b(true);
        this.c = str;
    }

    public e a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    @Override // com.umeng.analytics.pro.at
    /* renamed from: a */
    public EnumC0199e fieldForId(int i2) {
        return EnumC0199e.a(i2);
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new bm(new ce(objectOutputStream)));
        } catch (az e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public e(e eVar) {
        this.l = (byte) 0;
        this.m = new EnumC0199e[]{EnumC0199e.VALUE};
        this.l = eVar.l;
        if (eVar.d()) {
            this.f12330a = eVar.f12330a;
        }
        this.b = eVar.b;
        if (eVar.j()) {
            this.c = eVar.c;
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
