package com.apk;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.Subscribe;

/* compiled from: SubscriberMethodFinder.java */
/* loaded from: classes7.dex */
public class dm0 {

    /* renamed from: new  reason: not valid java name */
    public static final Map<Class<?>, List<cm0>> f928new = new ConcurrentHashMap();

    /* renamed from: try  reason: not valid java name */
    public static final Cdo[] f929try = new Cdo[4];

    /* renamed from: do  reason: not valid java name */
    public List<hm0> f930do;

    /* renamed from: for  reason: not valid java name */
    public final boolean f931for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f932if;

    /* compiled from: SubscriberMethodFinder.java */
    /* renamed from: com.apk.dm0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo {

        /* renamed from: case  reason: not valid java name */
        public boolean f933case;

        /* renamed from: else  reason: not valid java name */
        public gm0 f935else;

        /* renamed from: try  reason: not valid java name */
        public Class<?> f939try;

        /* renamed from: do  reason: not valid java name */
        public final List<cm0> f934do = new ArrayList();

        /* renamed from: if  reason: not valid java name */
        public final Map<Class, Object> f937if = new HashMap();

        /* renamed from: for  reason: not valid java name */
        public final Map<String, Class> f936for = new HashMap();

        /* renamed from: new  reason: not valid java name */
        public final StringBuilder f938new = new StringBuilder(128);

        /* renamed from: do  reason: not valid java name */
        public boolean m484do(Method method, Class<?> cls) {
            Object put = this.f937if.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (m486if((Method) put, cls)) {
                    this.f937if.put(cls, this);
                } else {
                    throw new IllegalStateException();
                }
            }
            return m486if(method, cls);
        }

        /* renamed from: for  reason: not valid java name */
        public void m485for() {
            if (this.f933case) {
                this.f939try = null;
                return;
            }
            Class<? super Object> superclass = this.f939try.getSuperclass();
            this.f939try = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f939try = null;
            }
        }

        /* renamed from: if  reason: not valid java name */
        public final boolean m486if(Method method, Class<?> cls) {
            this.f938new.setLength(0);
            this.f938new.append(method.getName());
            StringBuilder sb = this.f938new;
            sb.append('>');
            sb.append(cls.getName());
            String sb2 = this.f938new.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f936for.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f936for.put(sb2, put);
            return false;
        }
    }

    public dm0(List<hm0> list, boolean z, boolean z2) {
        this.f930do = list;
        this.f932if = z;
        this.f931for = z2;
    }

    /* renamed from: do  reason: not valid java name */
    public final void m481do(Cdo cdo) {
        String m989case;
        Method[] methods;
        try {
            try {
                methods = cdo.f939try.getDeclaredMethods();
            } catch (Throwable unused) {
                methods = cdo.f939try.getMethods();
                cdo.f933case = true;
            }
            for (Method method : methods) {
                int modifiers = method.getModifiers();
                if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == 1) {
                        Subscribe subscribe = (Subscribe) method.getAnnotation(Subscribe.class);
                        if (subscribe != null) {
                            Class<?> cls = parameterTypes[0];
                            if (cdo.m484do(method, cls)) {
                                cdo.f934do.add(new cm0(method, cls, subscribe.threadMode(), subscribe.priority(), subscribe.sticky()));
                            }
                        }
                    } else if (this.f932if && method.isAnnotationPresent(Subscribe.class)) {
                        throw new tl0("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                    }
                } else if (this.f932if && method.isAnnotationPresent(Subscribe.class)) {
                    throw new tl0(Cgoto.m989case(method.getDeclaringClass().getName() + "." + method.getName(), " is a illegal @Subscribe method: must be public, non-static, and non-abstract"));
                }
            }
        } catch (LinkageError e) {
            StringBuilder m1016super = Cgoto.m1016super("Could not inspect methods of ");
            m1016super.append(cdo.f939try.getName());
            String sb = m1016super.toString();
            if (this.f931for) {
                m989case = Cgoto.m989case(sb, ". Please consider using EventBus annotation processor to avoid reflection.");
            } else {
                m989case = Cgoto.m989case(sb, ". Please make this class visible to EventBus annotation processor to avoid reflection.");
            }
            throw new tl0(m989case, e);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final Cdo m482for() {
        synchronized (f929try) {
            for (int i = 0; i < 4; i++) {
                Cdo cdo = f929try[i];
                if (cdo != null) {
                    f929try[i] = null;
                    return cdo;
                }
            }
            return new Cdo();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final List<cm0> m483if(Cdo cdo) {
        ArrayList arrayList = new ArrayList(cdo.f934do);
        cdo.f934do.clear();
        cdo.f937if.clear();
        cdo.f936for.clear();
        int i = 0;
        cdo.f938new.setLength(0);
        cdo.f939try = null;
        cdo.f933case = false;
        cdo.f935else = null;
        synchronized (f929try) {
            while (true) {
                if (i >= 4) {
                    break;
                } else if (f929try[i] == null) {
                    f929try[i] = cdo;
                    break;
                } else {
                    i++;
                }
            }
        }
        return arrayList;
    }
}
