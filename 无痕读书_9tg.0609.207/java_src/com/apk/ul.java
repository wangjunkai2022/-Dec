package com.apk;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* compiled from: LruArrayPool.java */
/* loaded from: classes8.dex */
public final class ul implements nl {

    /* renamed from: case  reason: not valid java name */
    public int f4917case;

    /* renamed from: try  reason: not valid java name */
    public final int f4922try;

    /* renamed from: do  reason: not valid java name */
    public final sl<Cdo, Object> f4918do = new sl<>();

    /* renamed from: if  reason: not valid java name */
    public final Cif f4920if = new Cif();

    /* renamed from: for  reason: not valid java name */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f4919for = new HashMap();

    /* renamed from: new  reason: not valid java name */
    public final Map<Class<?>, ml<?>> f4921new = new HashMap();

    /* compiled from: LruArrayPool.java */
    /* renamed from: com.apk.ul$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements xl {

        /* renamed from: do  reason: not valid java name */
        public final Cif f4923do;

        /* renamed from: for  reason: not valid java name */
        public Class<?> f4924for;

        /* renamed from: if  reason: not valid java name */
        public int f4925if;

        public Cdo(Cif cif) {
            this.f4923do = cif;
        }

        @Override // com.apk.xl
        /* renamed from: do  reason: not valid java name */
        public void mo2723do() {
            this.f4923do.m1971for(this);
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cdo) {
                Cdo cdo = (Cdo) obj;
                return this.f4925if == cdo.f4925if && this.f4924for == cdo.f4924for;
            }
            return false;
        }

        public int hashCode() {
            int i = this.f4925if * 31;
            Class<?> cls = this.f4924for;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("Key{size=");
            m1016super.append(this.f4925if);
            m1016super.append("array=");
            m1016super.append(this.f4924for);
            m1016super.append('}');
            return m1016super.toString();
        }
    }

    /* compiled from: LruArrayPool.java */
    /* renamed from: com.apk.ul$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif extends ol<Cdo> {
        @Override // com.apk.ol
        /* renamed from: do */
        public Cdo mo1970do() {
            return new Cdo(this);
        }

        /* renamed from: new  reason: not valid java name */
        public Cdo m2724new(int i, Class<?> cls) {
            Cdo m1972if = m1972if();
            m1972if.f4925if = i;
            m1972if.f4924for = cls;
            return m1972if;
        }
    }

    public ul(int i) {
        this.f4922try = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0023 A[Catch: all -> 0x004d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:13:0x0023, B:18:0x002f, B:20:0x0047, B:19:0x003a), top: B:26:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f A[Catch: all -> 0x004d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:13:0x0023, B:18:0x002f, B:20:0x0047, B:19:0x003a), top: B:26:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003a A[Catch: all -> 0x004d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0013, B:7:0x0017, B:13:0x0023, B:18:0x002f, B:20:0x0047, B:19:0x003a), top: B:26:0x0001 }] */
    @Override // com.apk.nl
    /* renamed from: case */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T> T mo1887case(int r6, java.lang.Class<T> r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.NavigableMap r0 = r5.m2722this(r7)     // Catch: java.lang.Throwable -> L4d
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: java.lang.Throwable -> L4d
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L4d
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L2c
            int r3 = r5.f4917case     // Catch: java.lang.Throwable -> L4d
            if (r3 == 0) goto L20
            int r4 = r5.f4922try     // Catch: java.lang.Throwable -> L4d
            int r4 = r4 / r3
            r3 = 2
            if (r4 < r3) goto L1e
            goto L20
        L1e:
            r3 = 0
            goto L21
        L20:
            r3 = 1
        L21:
            if (r3 != 0) goto L2d
            int r3 = r0.intValue()     // Catch: java.lang.Throwable -> L4d
            int r4 = r6 * 8
            if (r3 > r4) goto L2c
            goto L2d
        L2c:
            r1 = 0
        L2d:
            if (r1 == 0) goto L3a
            com.apk.ul$if r6 = r5.f4920if     // Catch: java.lang.Throwable -> L4d
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L4d
            com.apk.ul$do r6 = r6.m2724new(r0, r7)     // Catch: java.lang.Throwable -> L4d
            goto L47
        L3a:
            com.apk.ul$if r0 = r5.f4920if     // Catch: java.lang.Throwable -> L4d
            com.apk.xl r0 = r0.m1972if()     // Catch: java.lang.Throwable -> L4d
            com.apk.ul$do r0 = (com.apk.ul.Cdo) r0     // Catch: java.lang.Throwable -> L4d
            r0.f4925if = r6     // Catch: java.lang.Throwable -> L4d
            r0.f4924for = r7     // Catch: java.lang.Throwable -> L4d
            r6 = r0
        L47:
            java.lang.Object r6 = r5.m2720goto(r6, r7)     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r5)
            return r6
        L4d:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ul.mo1887case(int, java.lang.Class):java.lang.Object");
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2718do(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m2722this = m2722this(cls);
        Integer num = (Integer) m2722this.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                m2722this.remove(Integer.valueOf(i));
                return;
            } else {
                m2722this.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: else  reason: not valid java name */
    public final <T> ml<T> m2719else(Class<T> cls) {
        tl tlVar = (ml<T>) this.f4921new.get(cls);
        if (tlVar == null) {
            if (cls.equals(int[].class)) {
                tlVar = new tl();
            } else if (cls.equals(byte[].class)) {
                tlVar = new rl();
            } else {
                StringBuilder m1016super = Cgoto.m1016super("No array pool found for: ");
                m1016super.append(cls.getSimpleName());
                throw new IllegalArgumentException(m1016super.toString());
            }
            this.f4921new.put(cls, tlVar);
        }
        return tlVar;
    }

    @Override // com.apk.nl
    /* renamed from: for */
    public synchronized void mo1888for(int i) {
        if (i >= 40) {
            synchronized (this) {
                m2721if(0);
            }
        } else if (i >= 20 || i == 15) {
            m2721if(this.f4922try / 2);
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public final <T> T m2720goto(Cdo cdo, Class<T> cls) {
        ml<T> m2719else = m2719else(cls);
        T t = (T) this.f4918do.m2508do(cdo);
        if (t != null) {
            this.f4917case -= m2719else.mo1726do() * m2719else.mo1727if(t);
            m2718do(m2719else.mo1727if(t), cls);
        }
        if (t == null) {
            if (Log.isLoggable(m2719else.getTag(), 2)) {
                m2719else.getTag();
            }
            return m2719else.newArray(cdo.f4925if);
        }
        return t;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2721if(int i) {
        while (this.f4917case > i) {
            Object m2509for = this.f4918do.m2509for();
            eg.m593else(m2509for, "Argument must not be null");
            ml m2719else = m2719else(m2509for.getClass());
            this.f4917case -= m2719else.mo1726do() * m2719else.mo1727if(m2509for);
            m2718do(m2719else.mo1727if(m2509for), m2509for.getClass());
            if (Log.isLoggable(m2719else.getTag(), 2)) {
                m2719else.getTag();
                m2719else.mo1727if(m2509for);
            }
        }
    }

    @Override // com.apk.nl
    /* renamed from: new */
    public synchronized void mo1889new() {
        m2721if(0);
    }

    @Override // com.apk.nl
    public synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        ml<T> m2719else = m2719else(cls);
        int mo1727if = m2719else.mo1727if(t);
        int mo1726do = m2719else.mo1726do() * mo1727if;
        int i = 1;
        if (mo1726do <= this.f4922try / 2) {
            Cdo m2724new = this.f4920if.m2724new(mo1727if, cls);
            this.f4918do.m2510if(m2724new, t);
            NavigableMap<Integer, Integer> m2722this = m2722this(cls);
            Integer num = (Integer) m2722this.get(Integer.valueOf(m2724new.f4925if));
            Integer valueOf = Integer.valueOf(m2724new.f4925if);
            if (num != null) {
                i = 1 + num.intValue();
            }
            m2722this.put(valueOf, Integer.valueOf(i));
            this.f4917case += mo1726do;
            m2721if(this.f4922try);
        }
    }

    /* renamed from: this  reason: not valid java name */
    public final NavigableMap<Integer, Integer> m2722this(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f4919for.get(cls);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f4919for.put(cls, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.apk.nl
    /* renamed from: try */
    public synchronized <T> T mo1890try(int i, Class<T> cls) {
        Cdo m1972if;
        m1972if = this.f4920if.m1972if();
        m1972if.f4925if = i;
        m1972if.f4924for = cls;
        return (T) m2720goto(m1972if, cls);
    }
}
