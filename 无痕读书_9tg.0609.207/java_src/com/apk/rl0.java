package com.apk;

import android.os.Looper;
import com.apk.wl0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
/* compiled from: EventBus.java */
/* loaded from: classes7.dex */
public class rl0 {

    /* renamed from: native  reason: not valid java name */
    public static volatile rl0 f4110native;

    /* renamed from: public  reason: not valid java name */
    public static final sl0 f4111public = new sl0();

    /* renamed from: return  reason: not valid java name */
    public static final Map<Class<?>, List<Class<?>>> f4112return = new HashMap();

    /* renamed from: break  reason: not valid java name */
    public final ExecutorService f4113break;

    /* renamed from: case  reason: not valid java name */
    public final am0 f4114case;

    /* renamed from: catch  reason: not valid java name */
    public final boolean f4115catch;

    /* renamed from: class  reason: not valid java name */
    public final boolean f4116class;

    /* renamed from: const  reason: not valid java name */
    public final boolean f4117const;

    /* renamed from: do  reason: not valid java name */
    public final Map<Class<?>, CopyOnWriteArrayList<em0>> f4118do;

    /* renamed from: else  reason: not valid java name */
    public final ql0 f4119else;

    /* renamed from: final  reason: not valid java name */
    public final boolean f4120final;

    /* renamed from: for  reason: not valid java name */
    public final Map<Class<?>, Object> f4121for;

    /* renamed from: goto  reason: not valid java name */
    public final pl0 f4122goto;

    /* renamed from: if  reason: not valid java name */
    public final Map<Object, List<Class<?>>> f4123if;

    /* renamed from: import  reason: not valid java name */
    public final vl0 f4124import;

    /* renamed from: new  reason: not valid java name */
    public final ThreadLocal<Cif> f4125new;

    /* renamed from: super  reason: not valid java name */
    public final boolean f4126super;

    /* renamed from: this  reason: not valid java name */
    public final dm0 f4127this;

    /* renamed from: throw  reason: not valid java name */
    public final boolean f4128throw;

    /* renamed from: try  reason: not valid java name */
    public final wl0 f4129try;

    /* renamed from: while  reason: not valid java name */
    public final int f4130while;

    /* compiled from: EventBus.java */
    /* renamed from: com.apk.rl0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends ThreadLocal<Cif> {
        public Cdo(rl0 rl0Var) {
        }

        @Override // java.lang.ThreadLocal
        public Cif initialValue() {
            return new Cif();
        }
    }

    /* compiled from: EventBus.java */
    /* renamed from: com.apk.rl0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {

        /* renamed from: do  reason: not valid java name */
        public final List<Object> f4131do = new ArrayList();

        /* renamed from: for  reason: not valid java name */
        public boolean f4132for;

        /* renamed from: if  reason: not valid java name */
        public boolean f4133if;

        /* renamed from: new  reason: not valid java name */
        public Object f4134new;

        /* renamed from: try  reason: not valid java name */
        public boolean f4135try;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public rl0() {
        /*
            r5 = this;
            com.apk.sl0 r0 = com.apk.rl0.f4111public
            r5.<init>()
            com.apk.rl0$do r1 = new com.apk.rl0$do
            r1.<init>(r5)
            r5.f4125new = r1
            r1 = 0
            if (r0 == 0) goto La6
            boolean r2 = com.apk.fm0.f1403if
            if (r2 == 0) goto L23
            android.os.Looper r2 = android.os.Looper.getMainLooper()     // Catch: java.lang.RuntimeException -> L18
            goto L19
        L18:
            r2 = r1
        L19:
            if (r2 == 0) goto L23
            com.apk.fm0 r2 = new com.apk.fm0
            java.lang.String r3 = "EventBus"
            r2.<init>(r3)
            goto L28
        L23:
            com.apk.vl0$do r2 = new com.apk.vl0$do
            r2.<init>()
        L28:
            r5.f4124import = r2
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            r5.f4118do = r2
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            r5.f4123if = r2
            java.util.concurrent.ConcurrentHashMap r2 = new java.util.concurrent.ConcurrentHashMap
            r2.<init>()
            r5.f4121for = r2
            boolean r2 = com.apk.fm0.f1403if
            if (r2 == 0) goto L52
            android.os.Looper r2 = android.os.Looper.getMainLooper()     // Catch: java.lang.RuntimeException -> L48
            goto L49
        L48:
            r2 = r1
        L49:
            if (r2 != 0) goto L4c
            goto L52
        L4c:
            com.apk.wl0$do r3 = new com.apk.wl0$do
            r3.<init>(r2)
            goto L53
        L52:
            r3 = r1
        L53:
            r5.f4129try = r3
            if (r3 == 0) goto L60
            com.apk.ul0 r1 = new com.apk.ul0
            android.os.Looper r2 = r3.f5351do
            r3 = 10
            r1.<init>(r5, r2, r3)
        L60:
            r5.f4114case = r1
            com.apk.ql0 r1 = new com.apk.ql0
            r1.<init>(r5)
            r5.f4119else = r1
            com.apk.pl0 r1 = new com.apk.pl0
            r1.<init>(r5)
            r5.f4122goto = r1
            java.util.List<com.apk.hm0> r1 = r0.f4456break
            if (r1 == 0) goto L79
            int r1 = r1.size()
            goto L7a
        L79:
            r1 = 0
        L7a:
            r5.f4130while = r1
            com.apk.dm0 r1 = new com.apk.dm0
            java.util.List<com.apk.hm0> r2 = r0.f4456break
            boolean r3 = r0.f4461goto
            boolean r4 = r0.f4459else
            r1.<init>(r2, r3, r4)
            r5.f4127this = r1
            boolean r1 = r0.f4458do
            r5.f4116class = r1
            boolean r1 = r0.f4462if
            r5.f4117const = r1
            boolean r1 = r0.f4460for
            r5.f4120final = r1
            boolean r1 = r0.f4463new
            r5.f4126super = r1
            boolean r1 = r0.f4465try
            r5.f4115catch = r1
            boolean r1 = r0.f4457case
            r5.f4128throw = r1
            java.util.concurrent.ExecutorService r0 = r0.f4464this
            r5.f4113break = r0
            return
        La6:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.rl0.<init>():void");
    }

    /* renamed from: do  reason: not valid java name */
    public static void m2303do(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                m2303do(list, cls.getInterfaces());
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static rl0 m2304if() {
        rl0 rl0Var = f4110native;
        if (rl0Var == null) {
            synchronized (rl0.class) {
                rl0Var = f4110native;
                if (rl0Var == null) {
                    rl0Var = new rl0();
                    f4110native = rl0Var;
                }
            }
        }
        return rl0Var;
    }

    /* renamed from: break  reason: not valid java name */
    public final void m2305break(em0 em0Var, Object obj, boolean z) {
        int ordinal = em0Var.f1096if.f672if.ordinal();
        if (ordinal == 0) {
            m2313new(em0Var, obj);
        } else if (ordinal == 1) {
            if (z) {
                m2313new(em0Var, obj);
            } else {
                this.f4114case.mo75do(em0Var, obj);
            }
        } else if (ordinal == 2) {
            am0 am0Var = this.f4114case;
            if (am0Var != null) {
                am0Var.mo75do(em0Var, obj);
            } else {
                m2313new(em0Var, obj);
            }
        } else if (ordinal == 3) {
            if (z) {
                this.f4119else.mo75do(em0Var, obj);
            } else {
                m2313new(em0Var, obj);
            }
        } else if (ordinal == 4) {
            this.f4122goto.mo75do(em0Var, obj);
        } else {
            StringBuilder m1016super = Cgoto.m1016super("Unknown thread mode: ");
            m1016super.append(em0Var.f1096if.f672if);
            throw new IllegalStateException(m1016super.toString());
        }
    }

    /* renamed from: case  reason: not valid java name */
    public synchronized boolean m2306case(Object obj) {
        return this.f4123if.containsKey(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
        if (r3.f939try == r5.m983for()) goto L28;
     */
    /* renamed from: catch  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2307catch(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.rl0.m2307catch(java.lang.Object):void");
    }

    /* renamed from: class  reason: not valid java name */
    public final void m2308class(Object obj, cm0 cm0Var) {
        Object value;
        Class<?> cls = cm0Var.f671for;
        em0 em0Var = new em0(obj, cm0Var);
        CopyOnWriteArrayList<em0> copyOnWriteArrayList = this.f4118do.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f4118do.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(em0Var)) {
            StringBuilder m1016super = Cgoto.m1016super("Subscriber ");
            m1016super.append(obj.getClass());
            m1016super.append(" already registered to event ");
            m1016super.append(cls);
            throw new tl0(m1016super.toString());
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || cm0Var.f673new > copyOnWriteArrayList.get(i).f1096if.f673new) {
                copyOnWriteArrayList.add(i, em0Var);
                break;
            }
        }
        List<Class<?>> list = this.f4123if.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f4123if.put(obj, list);
        }
        list.add(cls);
        if (cm0Var.f674try) {
            if (this.f4128throw) {
                for (Map.Entry<Class<?>, Object> entry : this.f4121for.entrySet()) {
                    if (cls.isAssignableFrom(entry.getKey()) && (value = entry.getValue()) != null) {
                        m2305break(em0Var, value, m2315try());
                    }
                }
                return;
            }
            Object obj2 = this.f4121for.get(cls);
            if (obj2 != null) {
                m2305break(em0Var, obj2, m2315try());
            }
        }
    }

    /* renamed from: const  reason: not valid java name */
    public synchronized void m2309const(Object obj) {
        List<Class<?>> list = this.f4123if.get(obj);
        if (list != null) {
            for (Class<?> cls : list) {
                CopyOnWriteArrayList<em0> copyOnWriteArrayList = this.f4118do.get(cls);
                if (copyOnWriteArrayList != null) {
                    int size = copyOnWriteArrayList.size();
                    int i = 0;
                    while (i < size) {
                        em0 em0Var = copyOnWriteArrayList.get(i);
                        if (em0Var.f1094do == obj) {
                            em0Var.f1095for = false;
                            copyOnWriteArrayList.remove(i);
                            i--;
                            size--;
                        }
                        i++;
                    }
                }
            }
            this.f4123if.remove(obj);
        } else {
            this.f4124import.mo864do(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m2310else(Object obj) {
        Cif cif = this.f4125new.get();
        List<Object> list = cif.f4131do;
        list.add(obj);
        if (cif.f4133if) {
            return;
        }
        cif.f4132for = m2315try();
        cif.f4133if = true;
        if (cif.f4135try) {
            throw new tl0("Internal error. Abort state was not reset");
        }
        while (true) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                m2312goto(list.remove(0), cif);
            } finally {
                cif.f4133if = false;
                cif.f4132for = false;
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m2311for(yl0 yl0Var) {
        Object obj = yl0Var.f6000do;
        em0 em0Var = yl0Var.f6002if;
        yl0Var.f6000do = null;
        yl0Var.f6002if = null;
        yl0Var.f6001for = null;
        synchronized (yl0.f5999new) {
            if (yl0.f5999new.size() < 10000) {
                yl0.f5999new.add(yl0Var);
            }
        }
        if (em0Var.f1095for) {
            m2313new(em0Var, obj);
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m2312goto(Object obj, Cif cif) throws Error {
        boolean m2314this;
        ArrayList arrayList;
        Class<?> cls = obj.getClass();
        if (this.f4128throw) {
            synchronized (f4112return) {
                List<Class<?>> list = f4112return.get(cls);
                arrayList = list;
                if (list == null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                        arrayList2.add(cls2);
                        m2303do(arrayList2, cls2.getInterfaces());
                    }
                    f4112return.put(cls, arrayList2);
                    arrayList = arrayList2;
                }
            }
            int size = arrayList.size();
            m2314this = false;
            for (int i = 0; i < size; i++) {
                m2314this |= m2314this(obj, cif, arrayList.get(i));
            }
        } else {
            m2314this = m2314this(obj, cif, cls);
        }
        if (m2314this) {
            return;
        }
        if (this.f4117const) {
            vl0 vl0Var = this.f4124import;
            Level level = Level.FINE;
            vl0Var.mo864do(level, "No subscribers registered for event " + cls);
        }
        if (!this.f4126super || cls == xl0.class || cls == bm0.class) {
            return;
        }
        m2310else(new xl0(this, obj));
    }

    /* renamed from: new  reason: not valid java name */
    public void m2313new(em0 em0Var, Object obj) {
        try {
            em0Var.f1096if.f670do.invoke(em0Var.f1094do, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (obj instanceof bm0) {
                if (this.f4116class) {
                    vl0 vl0Var = this.f4124import;
                    Level level = Level.SEVERE;
                    StringBuilder m1016super = Cgoto.m1016super("SubscriberExceptionEvent subscriber ");
                    m1016super.append(em0Var.f1094do.getClass());
                    m1016super.append(" threw an exception");
                    vl0Var.mo866if(level, m1016super.toString(), cause);
                    bm0 bm0Var = (bm0) obj;
                    vl0 vl0Var2 = this.f4124import;
                    Level level2 = Level.SEVERE;
                    StringBuilder m1016super2 = Cgoto.m1016super("Initial event ");
                    m1016super2.append(bm0Var.f365if);
                    m1016super2.append(" caused exception in ");
                    m1016super2.append(bm0Var.f364for);
                    vl0Var2.mo866if(level2, m1016super2.toString(), bm0Var.f363do);
                }
            } else if (!this.f4115catch) {
                if (this.f4116class) {
                    vl0 vl0Var3 = this.f4124import;
                    Level level3 = Level.SEVERE;
                    StringBuilder m1016super3 = Cgoto.m1016super("Could not dispatch event: ");
                    m1016super3.append(obj.getClass());
                    m1016super3.append(" to subscribing class ");
                    m1016super3.append(em0Var.f1094do.getClass());
                    vl0Var3.mo866if(level3, m1016super3.toString(), cause);
                }
                if (this.f4120final) {
                    m2310else(new bm0(this, cause, obj, em0Var.f1094do));
                }
            } else {
                throw new tl0("Invoking subscriber failed", cause);
            }
        }
    }

    /* renamed from: this  reason: not valid java name */
    public final boolean m2314this(Object obj, Cif cif, Class<?> cls) {
        CopyOnWriteArrayList<em0> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f4118do.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<em0> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            em0 next = it.next();
            cif.f4134new = obj;
            try {
                m2305break(next, obj, cif.f4132for);
                if (cif.f4135try) {
                    return true;
                }
            } finally {
                cif.f4135try = false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("EventBus[indexCount=");
        m1016super.append(this.f4130while);
        m1016super.append(", eventInheritance=");
        m1016super.append(this.f4128throw);
        m1016super.append("]");
        return m1016super.toString();
    }

    /* renamed from: try  reason: not valid java name */
    public final boolean m2315try() {
        wl0 wl0Var = this.f4129try;
        if (wl0Var != null) {
            if (!(((wl0.Cdo) wl0Var).f5351do == Looper.myLooper())) {
                return false;
            }
        }
        return true;
    }
}
