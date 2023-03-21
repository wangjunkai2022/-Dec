package com.apk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.ks;
import com.apk.rr;
import com.apk.vk;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* compiled from: SingleRequest.java */
/* loaded from: classes8.dex */
public final class fr<R> implements zq, or, er {

    /* renamed from: abstract  reason: not valid java name */
    public static final boolean f1424abstract = Log.isLoggable("Request", 2);

    /* renamed from: break  reason: not valid java name */
    public final xq<?> f1425break;

    /* renamed from: case  reason: not valid java name */
    public final Context f1426case;

    /* renamed from: catch  reason: not valid java name */
    public final int f1427catch;

    /* renamed from: class  reason: not valid java name */
    public final int f1428class;

    /* renamed from: const  reason: not valid java name */
    public final ni f1429const;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: default  reason: not valid java name */
    public Drawable f1430default;
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public final String f1431do;

    /* renamed from: else  reason: not valid java name */
    public final li f1432else;
    @GuardedBy("requestLock")

    /* renamed from: extends  reason: not valid java name */
    public int f1433extends;

    /* renamed from: final  reason: not valid java name */
    public final pr<R> f1434final;
    @GuardedBy("requestLock")

    /* renamed from: finally  reason: not valid java name */
    public int f1435finally;

    /* renamed from: for  reason: not valid java name */
    public final Object f1436for;
    @Nullable

    /* renamed from: goto  reason: not valid java name */
    public final Object f1437goto;

    /* renamed from: if  reason: not valid java name */
    public final ks f1438if;
    @GuardedBy("requestLock")

    /* renamed from: import  reason: not valid java name */
    public gl<R> f1439import;
    @GuardedBy("requestLock")

    /* renamed from: native  reason: not valid java name */
    public vk.Cnew f1440native;
    @Nullable

    /* renamed from: new  reason: not valid java name */
    public final cr<R> f1441new;
    @GuardedBy("requestLock")

    /* renamed from: package  reason: not valid java name */
    public boolean f1442package;
    @Nullable

    /* renamed from: private  reason: not valid java name */
    public RuntimeException f1443private;
    @GuardedBy("requestLock")

    /* renamed from: public  reason: not valid java name */
    public long f1444public;

    /* renamed from: return  reason: not valid java name */
    public volatile vk f1445return;
    @GuardedBy("requestLock")

    /* renamed from: static  reason: not valid java name */
    public Cdo f1446static;
    @Nullable

    /* renamed from: super  reason: not valid java name */
    public final List<cr<R>> f1447super;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: switch  reason: not valid java name */
    public Drawable f1448switch;

    /* renamed from: this  reason: not valid java name */
    public final Class<R> f1449this;

    /* renamed from: throw  reason: not valid java name */
    public final tr<? super R> f1450throw;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: throws  reason: not valid java name */
    public Drawable f1451throws;

    /* renamed from: try  reason: not valid java name */
    public final ar f1452try;

    /* renamed from: while  reason: not valid java name */
    public final Executor f1453while;

    /* compiled from: SingleRequest.java */
    /* renamed from: com.apk.fr$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public fr(Context context, li liVar, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, xq<?> xqVar, int i, int i2, ni niVar, pr<R> prVar, @Nullable cr<R> crVar, @Nullable List<cr<R>> list, ar arVar, vk vkVar, tr<? super R> trVar, Executor executor) {
        this.f1431do = f1424abstract ? String.valueOf(super.hashCode()) : null;
        this.f1438if = new ks.Cif();
        this.f1436for = obj;
        this.f1426case = context;
        this.f1432else = liVar;
        this.f1437goto = obj2;
        this.f1449this = cls;
        this.f1425break = xqVar;
        this.f1427catch = i;
        this.f1428class = i2;
        this.f1429const = niVar;
        this.f1434final = prVar;
        this.f1441new = crVar;
        this.f1447super = list;
        this.f1452try = arVar;
        this.f1445return = vkVar;
        this.f1450throw = trVar;
        this.f1453while = executor;
        this.f1446static = Cdo.PENDING;
        if (this.f1443private == null && liVar.f2813goto) {
            this.f1443private = new RuntimeException("Glide request origin trace");
        }
    }

    /* renamed from: break  reason: not valid java name */
    public boolean m876break(zq zqVar) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        xq<?> xqVar;
        ni niVar;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        xq<?> xqVar2;
        ni niVar2;
        int size2;
        if (zqVar instanceof fr) {
            synchronized (this.f1436for) {
                i = this.f1427catch;
                i2 = this.f1428class;
                obj = this.f1437goto;
                cls = this.f1449this;
                xqVar = this.f1425break;
                niVar = this.f1429const;
                size = this.f1447super != null ? this.f1447super.size() : 0;
            }
            fr frVar = (fr) zqVar;
            synchronized (frVar.f1436for) {
                i3 = frVar.f1427catch;
                i4 = frVar.f1428class;
                obj2 = frVar.f1437goto;
                cls2 = frVar.f1449this;
                xqVar2 = frVar.f1425break;
                niVar2 = frVar.f1429const;
                size2 = frVar.f1447super != null ? frVar.f1447super.size() : 0;
            }
            return i == i3 && i2 == i4 && gs.m1040if(obj, obj2) && cls.equals(cls2) && xqVar.equals(xqVar2) && niVar == niVar2 && size == size2;
        }
        return false;
    }

    @GuardedBy("requestLock")
    /* renamed from: case  reason: not valid java name */
    public final void m877case() {
        if (this.f1442package) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: catch  reason: not valid java name */
    public final boolean m878catch() {
        ar arVar = this.f1452try;
        return arVar == null || !arVar.m96for().m97if();
    }

    @GuardedBy("requestLock")
    /* renamed from: class  reason: not valid java name */
    public final Drawable m879class(@DrawableRes int i) {
        Resources.Theme theme = this.f1425break.f5770return;
        if (theme == null) {
            theme = this.f1426case.getTheme();
        }
        li liVar = this.f1432else;
        return yo.m3085do(liVar, liVar, i, theme);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0030 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0011, B:8:0x0013, B:10:0x001b, B:11:0x0020, B:13:0x0024, B:19:0x0030, B:20:0x0039, B:21:0x003b), top: B:28:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // com.apk.zq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void clear() {
        /*
            r5 = this;
            com.apk.fr$do r0 = com.apk.fr.Cdo.CLEARED
            java.lang.Object r1 = r5.f1436for
            monitor-enter(r1)
            r5.m877case()     // Catch: java.lang.Throwable -> L44
            com.apk.ks r2 = r5.f1438if     // Catch: java.lang.Throwable -> L44
            r2.mo1555do()     // Catch: java.lang.Throwable -> L44
            com.apk.fr$do r2 = r5.f1446static     // Catch: java.lang.Throwable -> L44
            if (r2 != r0) goto L13
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L44
            return
        L13:
            r5.m882else()     // Catch: java.lang.Throwable -> L44
            com.apk.gl<R> r2 = r5.f1439import     // Catch: java.lang.Throwable -> L44
            r3 = 0
            if (r2 == 0) goto L20
            com.apk.gl<R> r2 = r5.f1439import     // Catch: java.lang.Throwable -> L44
            r5.f1439import = r3     // Catch: java.lang.Throwable -> L44
            r3 = r2
        L20:
            com.apk.ar r2 = r5.f1452try     // Catch: java.lang.Throwable -> L44
            if (r2 == 0) goto L2d
            boolean r2 = r2.m95else(r5)     // Catch: java.lang.Throwable -> L44
            if (r2 == 0) goto L2b
            goto L2d
        L2b:
            r2 = 0
            goto L2e
        L2d:
            r2 = 1
        L2e:
            if (r2 == 0) goto L39
            com.apk.pr<R> r2 = r5.f1434final     // Catch: java.lang.Throwable -> L44
            android.graphics.drawable.Drawable r4 = r5.m889this()     // Catch: java.lang.Throwable -> L44
            r2.mo277this(r4)     // Catch: java.lang.Throwable -> L44
        L39:
            r5.f1446static = r0     // Catch: java.lang.Throwable -> L44
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L44
            if (r3 == 0) goto L43
            com.apk.vk r0 = r5.f1445return
            r0.m2817case(r3)
        L43:
            return
        L44:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L44
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.fr.clear():void");
    }

    /* renamed from: const  reason: not valid java name */
    public final void m880const(bl blVar, int i) {
        boolean z;
        this.f1438if.mo1555do();
        synchronized (this.f1436for) {
            if (blVar != null) {
                int i2 = this.f1432else.f2816this;
                if (i2 <= i) {
                    String str = "Load failed for " + this.f1437goto + " with size [" + this.f1433extends + "x" + this.f1435finally + "]";
                    if (i2 <= 4) {
                        ArrayList arrayList = new ArrayList();
                        blVar.m203do(blVar, arrayList);
                        int size = arrayList.size();
                        int i3 = 0;
                        while (i3 < size) {
                            int i4 = i3 + 1;
                            Throwable th = (Throwable) arrayList.get(i3);
                            i3 = i4;
                        }
                    }
                }
                this.f1440native = null;
                this.f1446static = Cdo.FAILED;
                boolean z2 = true;
                this.f1442package = true;
                if (this.f1447super != null) {
                    z = false;
                    for (cr<R> crVar : this.f1447super) {
                        z |= crVar.mo276new(blVar, this.f1437goto, this.f1434final, m878catch());
                    }
                } else {
                    z = false;
                }
                if (this.f1441new == null || !this.f1441new.mo276new(blVar, this.f1437goto, this.f1434final, m878catch())) {
                    z2 = false;
                }
                if (!(z | z2)) {
                    m890throw();
                }
                this.f1442package = false;
                ar arVar = this.f1452try;
                if (arVar != null) {
                    arVar.m94do(this);
                }
            } else {
                throw null;
            }
        }
    }

    @Override // com.apk.zq
    /* renamed from: do  reason: not valid java name */
    public void mo881do() {
        synchronized (this.f1436for) {
            if (isRunning()) {
                clear();
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: else  reason: not valid java name */
    public final void m882else() {
        m877case();
        this.f1438if.mo1555do();
        this.f1434final.mo271do(this);
        vk.Cnew cnew = this.f1440native;
        if (cnew != null) {
            synchronized (vk.this) {
                cnew.f5155do.m2919goto(cnew.f5157if);
            }
            this.f1440native = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: final  reason: not valid java name */
    public void m883final(gl<?> glVar, dj djVar) {
        this.f1438if.mo1555do();
        gl<?> glVar2 = null;
        try {
            synchronized (this.f1436for) {
                try {
                    this.f1440native = null;
                    if (glVar == null) {
                        m880const(new bl("Expected to receive a Resource<R> with an object of " + this.f1449this + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = glVar.get();
                    try {
                        if (obj != null && this.f1449this.isAssignableFrom(obj.getClass())) {
                            ar arVar = this.f1452try;
                            if (!(arVar == null || arVar.m99try(this))) {
                                this.f1439import = null;
                                this.f1446static = Cdo.COMPLETE;
                                this.f1445return.m2817case(glVar);
                                return;
                            }
                            m888super(glVar, obj, djVar);
                            return;
                        }
                        this.f1439import = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.f1449this);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(glVar);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        m880const(new bl(sb.toString()), 5);
                        this.f1445return.m2817case(glVar);
                    } catch (Throwable th) {
                        glVar2 = glVar;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (glVar2 != null) {
                this.f1445return.m2817case(glVar2);
            }
            throw th3;
        }
    }

    @Override // com.apk.zq
    /* renamed from: for  reason: not valid java name */
    public boolean mo884for() {
        boolean z;
        synchronized (this.f1436for) {
            z = this.f1446static == Cdo.CLEARED;
        }
        return z;
    }

    @GuardedBy("requestLock")
    /* renamed from: goto  reason: not valid java name */
    public final Drawable m885goto() {
        int i;
        if (this.f1430default == null) {
            xq<?> xqVar = this.f1425break;
            Drawable drawable = xqVar.f5772super;
            this.f1430default = drawable;
            if (drawable == null && (i = xqVar.f5775throw) > 0) {
                this.f1430default = m879class(i);
            }
        }
        return this.f1430default;
    }

    @Override // com.apk.or
    /* renamed from: if  reason: not valid java name */
    public void mo886if(int i, int i2) {
        Object obj;
        int i3 = i;
        Cdo cdo = Cdo.RUNNING;
        this.f1438if.mo1555do();
        Object obj2 = this.f1436for;
        synchronized (obj2) {
            try {
                if (f1424abstract) {
                    cs.m395do(this.f1444public);
                }
                if (this.f1446static == Cdo.WAITING_FOR_SIZE) {
                    this.f1446static = cdo;
                    float f = this.f1425break.f5765if;
                    if (i3 != Integer.MIN_VALUE) {
                        i3 = Math.round(i3 * f);
                    }
                    this.f1433extends = i3;
                    this.f1435finally = i2 == Integer.MIN_VALUE ? i2 : Math.round(f * i2);
                    if (f1424abstract) {
                        cs.m395do(this.f1444public);
                    }
                    obj = obj2;
                    try {
                        try {
                            this.f1440native = this.f1445return.m2820if(this.f1432else, this.f1437goto, this.f1425break.f5756class, this.f1433extends, this.f1435finally, this.f1425break.f5767native, this.f1449this, this.f1429const, this.f1425break.f5763for, this.f1425break.f5766import, this.f1425break.f5757const, this.f1425break.f5758default, this.f1425break.f5778while, this.f1425break.f5774this, this.f1425break.f5773switch, this.f1425break.f5761extends, this.f1425break.f5776throws, this, this.f1453while);
                            if (this.f1446static != cdo) {
                                this.f1440native = null;
                            }
                            if (f1424abstract) {
                                cs.m395do(this.f1444public);
                            }
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj2;
            }
        }
    }

    @Override // com.apk.zq
    public boolean isRunning() {
        boolean z;
        synchronized (this.f1436for) {
            z = this.f1446static == Cdo.RUNNING || this.f1446static == Cdo.WAITING_FOR_SIZE;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0084 A[Catch: all -> 0x00a0, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x0019, B:8:0x0023, B:9:0x002b, B:13:0x0034, B:14:0x003e, B:16:0x0040, B:18:0x0044, B:20:0x004a, B:21:0x0051, B:23:0x0053, B:25:0x005f, B:27:0x006c, B:29:0x0070, B:40:0x008d, B:42:0x0091, B:43:0x0096, B:31:0x0074, B:33:0x0078, B:39:0x0084, B:26:0x0067, B:45:0x0098, B:46:0x009f), top: B:50:0x0007 }] */
    @Override // com.apk.zq
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo887new() {
        /*
            r5 = this;
            com.apk.fr$do r0 = com.apk.fr.Cdo.WAITING_FOR_SIZE
            com.apk.fr$do r1 = com.apk.fr.Cdo.RUNNING
            java.lang.Object r2 = r5.f1436for
            monitor-enter(r2)
            r5.m877case()     // Catch: java.lang.Throwable -> La0
            com.apk.ks r3 = r5.f1438if     // Catch: java.lang.Throwable -> La0
            r3.mo1555do()     // Catch: java.lang.Throwable -> La0
            long r3 = com.apk.cs.m396if()     // Catch: java.lang.Throwable -> La0
            r5.f1444public = r3     // Catch: java.lang.Throwable -> La0
            java.lang.Object r3 = r5.f1437goto     // Catch: java.lang.Throwable -> La0
            if (r3 != 0) goto L40
            int r0 = r5.f1427catch     // Catch: java.lang.Throwable -> La0
            int r1 = r5.f1428class     // Catch: java.lang.Throwable -> La0
            boolean r0 = com.apk.gs.m1034const(r0, r1)     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L2b
            int r0 = r5.f1427catch     // Catch: java.lang.Throwable -> La0
            r5.f1433extends = r0     // Catch: java.lang.Throwable -> La0
            int r0 = r5.f1428class     // Catch: java.lang.Throwable -> La0
            r5.f1435finally = r0     // Catch: java.lang.Throwable -> La0
        L2b:
            android.graphics.drawable.Drawable r0 = r5.m885goto()     // Catch: java.lang.Throwable -> La0
            if (r0 != 0) goto L33
            r0 = 5
            goto L34
        L33:
            r0 = 3
        L34:
            com.apk.bl r1 = new com.apk.bl     // Catch: java.lang.Throwable -> La0
            java.lang.String r3 = "Received null model"
            r1.<init>(r3)     // Catch: java.lang.Throwable -> La0
            r5.m880const(r1, r0)     // Catch: java.lang.Throwable -> La0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            return
        L40:
            com.apk.fr$do r3 = r5.f1446static     // Catch: java.lang.Throwable -> La0
            if (r3 == r1) goto L98
            com.apk.fr$do r3 = r5.f1446static     // Catch: java.lang.Throwable -> La0
            com.apk.fr$do r4 = com.apk.fr.Cdo.COMPLETE     // Catch: java.lang.Throwable -> La0
            if (r3 != r4) goto L53
            com.apk.gl<R> r0 = r5.f1439import     // Catch: java.lang.Throwable -> La0
            com.apk.dj r1 = com.apk.dj.MEMORY_CACHE     // Catch: java.lang.Throwable -> La0
            r5.m883final(r0, r1)     // Catch: java.lang.Throwable -> La0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            return
        L53:
            r5.f1446static = r0     // Catch: java.lang.Throwable -> La0
            int r3 = r5.f1427catch     // Catch: java.lang.Throwable -> La0
            int r4 = r5.f1428class     // Catch: java.lang.Throwable -> La0
            boolean r3 = com.apk.gs.m1034const(r3, r4)     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L67
            int r3 = r5.f1427catch     // Catch: java.lang.Throwable -> La0
            int r4 = r5.f1428class     // Catch: java.lang.Throwable -> La0
            r5.mo886if(r3, r4)     // Catch: java.lang.Throwable -> La0
            goto L6c
        L67:
            com.apk.pr<R> r3 = r5.f1434final     // Catch: java.lang.Throwable -> La0
            r3.mo268break(r5)     // Catch: java.lang.Throwable -> La0
        L6c:
            com.apk.fr$do r3 = r5.f1446static     // Catch: java.lang.Throwable -> La0
            if (r3 == r1) goto L74
            com.apk.fr$do r1 = r5.f1446static     // Catch: java.lang.Throwable -> La0
            if (r1 != r0) goto L8d
        L74:
            com.apk.ar r0 = r5.f1452try     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L81
            boolean r0 = r0.m98new(r5)     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L7f
            goto L81
        L7f:
            r0 = 0
            goto L82
        L81:
            r0 = 1
        L82:
            if (r0 == 0) goto L8d
            com.apk.pr<R> r0 = r5.f1434final     // Catch: java.lang.Throwable -> La0
            android.graphics.drawable.Drawable r1 = r5.m889this()     // Catch: java.lang.Throwable -> La0
            r0.mo272else(r1)     // Catch: java.lang.Throwable -> La0
        L8d:
            boolean r0 = com.apk.fr.f1424abstract     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L96
            long r0 = r5.f1444public     // Catch: java.lang.Throwable -> La0
            com.apk.cs.m395do(r0)     // Catch: java.lang.Throwable -> La0
        L96:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            return
        L98:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> La0
            java.lang.String r1 = "Cannot restart a running request"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> La0
            throw r0     // Catch: java.lang.Throwable -> La0
        La0:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.fr.mo887new():void");
    }

    @GuardedBy("requestLock")
    /* renamed from: super  reason: not valid java name */
    public final void m888super(gl<R> glVar, R r, dj djVar) {
        boolean z;
        boolean m878catch = m878catch();
        this.f1446static = Cdo.COMPLETE;
        this.f1439import = glVar;
        if (this.f1432else.f2816this <= 3) {
            StringBuilder m1016super = Cgoto.m1016super("Finished loading ");
            m1016super.append(r.getClass().getSimpleName());
            m1016super.append(" from ");
            m1016super.append(djVar);
            m1016super.append(" for ");
            m1016super.append(this.f1437goto);
            m1016super.append(" with size [");
            m1016super.append(this.f1433extends);
            m1016super.append("x");
            m1016super.append(this.f1435finally);
            m1016super.append("] in ");
            m1016super.append(cs.m395do(this.f1444public));
            m1016super.append(" ms");
            m1016super.toString();
        }
        boolean z2 = true;
        this.f1442package = true;
        try {
            if (this.f1447super != null) {
                z = false;
                for (cr<R> crVar : this.f1447super) {
                    z |= crVar.mo269case(r, this.f1437goto, this.f1434final, djVar, m878catch);
                }
            } else {
                z = false;
            }
            if (this.f1441new == null || !this.f1441new.mo269case(r, this.f1437goto, this.f1434final, djVar, m878catch)) {
                z2 = false;
            }
            if (!(z2 | z)) {
                if (((rr.Cdo) this.f1450throw) != null) {
                    this.f1434final.mo275if(r, rr.f4191do);
                } else {
                    throw null;
                }
            }
            this.f1442package = false;
            ar arVar = this.f1452try;
            if (arVar != null) {
                arVar.m93case(this);
            }
        } catch (Throwable th) {
            this.f1442package = false;
            throw th;
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: this  reason: not valid java name */
    public final Drawable m889this() {
        int i;
        if (this.f1451throws == null) {
            xq<?> xqVar = this.f1425break;
            Drawable drawable = xqVar.f5760else;
            this.f1451throws = drawable;
            if (drawable == null && (i = xqVar.f5764goto) > 0) {
                this.f1451throws = m879class(i);
            }
        }
        return this.f1451throws;
    }

    @GuardedBy("requestLock")
    /* renamed from: throw  reason: not valid java name */
    public final void m890throw() {
        int i;
        ar arVar = this.f1452try;
        if (arVar == null || arVar.m98new(this)) {
            Drawable m885goto = this.f1437goto == null ? m885goto() : null;
            if (m885goto == null) {
                if (this.f1448switch == null) {
                    xq<?> xqVar = this.f1425break;
                    Drawable drawable = xqVar.f5777try;
                    this.f1448switch = drawable;
                    if (drawable == null && (i = xqVar.f5754case) > 0) {
                        this.f1448switch = m879class(i);
                    }
                }
                m885goto = this.f1448switch;
            }
            if (m885goto == null) {
                m885goto = m889this();
            }
            this.f1434final.mo278try(m885goto);
        }
    }

    @Override // com.apk.zq
    /* renamed from: try  reason: not valid java name */
    public boolean mo891try() {
        boolean z;
        synchronized (this.f1436for) {
            z = this.f1446static == Cdo.COMPLETE;
        }
        return z;
    }
}
