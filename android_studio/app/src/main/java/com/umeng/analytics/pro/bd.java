package com.umeng.analytics.pro;

import com.apk.Cgoto;
import com.umeng.analytics.pro.ba;
import com.umeng.analytics.pro.bd;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: TUnion.java */
/* loaded from: classes7.dex */
public abstract class bd<T extends bd<?, ?>, F extends ba> implements at<T, F> {
    public static final Map<Class<? extends ca>, cb> c;

    /* renamed from: a  reason: collision with root package name */
    public Object f12156a;
    public F b;

    /* compiled from: TUnion.java */
    /* loaded from: classes7.dex */
    public static class a extends cc<bd> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, bd bdVar) throws az {
            bdVar.b = null;
            bdVar.f12156a = null;
            bsVar.j();
            bn l = bsVar.l();
            Object a2 = bdVar.a(bsVar, l);
            bdVar.f12156a = a2;
            if (a2 != null) {
                bdVar.b = (F) bdVar.a(l.c);
            }
            bsVar.m();
            bsVar.l();
            bsVar.k();
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, bd bdVar) throws az {
            if (bdVar.a() != null && bdVar.b() != null) {
                bsVar.a(bdVar.d());
                bsVar.a(bdVar.c(bdVar.b));
                bdVar.a(bsVar);
                bsVar.c();
                bsVar.d();
                bsVar.b();
                return;
            }
            throw new bt("Cannot write a TUnion with no set value!");
        }
    }

    /* compiled from: TUnion.java */
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

    /* compiled from: TUnion.java */
    /* loaded from: classes7.dex */
    public static class c extends cd<bd> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: a */
        public void b(bs bsVar, bd bdVar) throws az {
            bdVar.b = null;
            bdVar.f12156a = null;
            short v = bsVar.v();
            Object a2 = bdVar.a(bsVar, v);
            bdVar.f12156a = a2;
            if (a2 != null) {
                bdVar.b = (F) bdVar.a(v);
            }
        }

        @Override // com.umeng.analytics.pro.ca
        /* renamed from: b */
        public void a(bs bsVar, bd bdVar) throws az {
            if (bdVar.a() != null && bdVar.b() != null) {
                bsVar.a(bdVar.b.a());
                bdVar.b(bsVar);
                return;
            }
            throw new bt("Cannot write a TUnion with no set value!");
        }
    }

    /* compiled from: TUnion.java */
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
        c = hashMap;
        hashMap.put(cc.class, new b());
        c.put(cd.class, new d());
    }

    public bd() {
        this.b = null;
        this.f12156a = null;
    }

    public static Object a(Object obj) {
        if (obj instanceof at) {
            return ((at) obj).deepCopy();
        }
        if (obj instanceof ByteBuffer) {
            return au.d((ByteBuffer) obj);
        }
        if (obj instanceof List) {
            return a((List) obj);
        }
        if (obj instanceof Set) {
            return a((Set) obj);
        }
        return obj instanceof Map ? a((Map<Object, Object>) obj) : obj;
    }

    public abstract F a(short s);

    public abstract Object a(bs bsVar, bn bnVar) throws az;

    public abstract Object a(bs bsVar, short s) throws az;

    public abstract void a(bs bsVar) throws az;

    public Object b() {
        return this.f12156a;
    }

    public abstract void b(F f, Object obj) throws ClassCastException;

    public abstract void b(bs bsVar) throws az;

    public abstract bn c(F f);

    public boolean c() {
        return this.b != null;
    }

    @Override // com.umeng.analytics.pro.at
    public final void clear() {
        this.b = null;
        this.f12156a = null;
    }

    public abstract bx d();

    @Override // com.umeng.analytics.pro.at
    public void read(bs bsVar) throws az {
        c.get(bsVar.D()).b().b(bsVar, this);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("<");
        m1016super.append(bd.class.getSimpleName());
        m1016super.append(" ");
        if (a() != null) {
            Object b2 = b();
            m1016super.append(c(a()).f12169a);
            m1016super.append(":");
            if (b2 instanceof ByteBuffer) {
                au.a((ByteBuffer) b2, m1016super);
            } else {
                m1016super.append(b2.toString());
            }
        }
        m1016super.append(">");
        return m1016super.toString();
    }

    @Override // com.umeng.analytics.pro.at
    public void write(bs bsVar) throws az {
        c.get(bsVar.D()).b().a(bsVar, this);
    }

    public boolean b(F f) {
        return this.b == f;
    }

    public boolean b(int i) {
        return b((bd<T, F>) a((short) i));
    }

    public bd(F f, Object obj) {
        a((bd<T, F>) f, obj);
    }

    public bd(bd<T, F> bdVar) {
        if (bdVar.getClass().equals(bd.class)) {
            this.b = bdVar.b;
            this.f12156a = a(bdVar.f12156a);
            return;
        }
        throw new ClassCastException();
    }

    public static Map a(Map<Object, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            hashMap.put(a(entry.getKey()), a(entry.getValue()));
        }
        return hashMap;
    }

    public static Set a(Set set) {
        HashSet hashSet = new HashSet();
        for (Object obj : set) {
            hashSet.add(a(obj));
        }
        return hashSet;
    }

    public static List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            arrayList.add(a(obj));
        }
        return arrayList;
    }

    public F a() {
        return this.b;
    }

    public Object a(F f) {
        if (f == this.b) {
            return b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f + " because union's set field is " + this.b);
    }

    public Object a(int i) {
        return a((bd<T, F>) a((short) i));
    }

    public void a(F f, Object obj) {
        b(f, obj);
        this.b = f;
        this.f12156a = obj;
    }

    public void a(int i, Object obj) {
        a((bd<T, F>) a((short) i), obj);
    }
}
