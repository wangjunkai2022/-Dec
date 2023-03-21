package com.apk;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.al;
import com.apk.hs;
import com.apk.ks;
import com.apk.qk;
import com.apk.tk;
import com.apk.vj;
import com.apk.vk;
import com.apk.wk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: DecodeJob.java */
/* loaded from: classes8.dex */
public class sk<R> implements qk.Cdo, Runnable, Comparable<sk<?>>, hs.Cnew {

    /* renamed from: abstract  reason: not valid java name */
    public volatile boolean f4399abstract;

    /* renamed from: break  reason: not valid java name */
    public ni f4400break;

    /* renamed from: catch  reason: not valid java name */
    public yk f4402catch;

    /* renamed from: class  reason: not valid java name */
    public int f4403class;

    /* renamed from: const  reason: not valid java name */
    public int f4404const;

    /* renamed from: continue  reason: not valid java name */
    public volatile boolean f4405continue;

    /* renamed from: default  reason: not valid java name */
    public kj f4406default;

    /* renamed from: extends  reason: not valid java name */
    public Object f4409extends;

    /* renamed from: final  reason: not valid java name */
    public uk f4410final;

    /* renamed from: finally  reason: not valid java name */
    public dj f4411finally;

    /* renamed from: goto  reason: not valid java name */
    public li f4413goto;

    /* renamed from: import  reason: not valid java name */
    public Celse f4415import;

    /* renamed from: native  reason: not valid java name */
    public Ccase f4416native;

    /* renamed from: new  reason: not valid java name */
    public final Cnew f4417new;

    /* renamed from: package  reason: not valid java name */
    public uj<?> f4418package;

    /* renamed from: private  reason: not valid java name */
    public volatile qk f4419private;

    /* renamed from: public  reason: not valid java name */
    public long f4420public;

    /* renamed from: return  reason: not valid java name */
    public boolean f4421return;

    /* renamed from: static  reason: not valid java name */
    public Object f4422static;

    /* renamed from: super  reason: not valid java name */
    public mj f4423super;

    /* renamed from: switch  reason: not valid java name */
    public Thread f4424switch;

    /* renamed from: this  reason: not valid java name */
    public kj f4425this;

    /* renamed from: throw  reason: not valid java name */
    public Cdo<R> f4426throw;

    /* renamed from: throws  reason: not valid java name */
    public kj f4427throws;

    /* renamed from: try  reason: not valid java name */
    public final Pools.Pool<sk<?>> f4428try;

    /* renamed from: while  reason: not valid java name */
    public int f4429while;

    /* renamed from: do  reason: not valid java name */
    public final rk<R> f4407do = new rk<>();

    /* renamed from: if  reason: not valid java name */
    public final List<Throwable> f4414if = new ArrayList();

    /* renamed from: for  reason: not valid java name */
    public final ks f4412for = new ks.Cif();

    /* renamed from: case  reason: not valid java name */
    public final Cfor<?> f4401case = new Cfor<>();

    /* renamed from: else  reason: not valid java name */
    public final Ctry f4408else = new Ctry();

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Ccase {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo<R> {
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Celse {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor<Z> {

        /* renamed from: do  reason: not valid java name */
        public kj f4441do;

        /* renamed from: for  reason: not valid java name */
        public fl<Z> f4442for;

        /* renamed from: if  reason: not valid java name */
        public pj<Z> f4443if;
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public final class Cif<Z> implements tk.Cdo<Z> {

        /* renamed from: do  reason: not valid java name */
        public final dj f4444do;

        public Cif(dj djVar) {
            this.f4444do = djVar;
        }
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: com.apk.sk$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry {

        /* renamed from: do  reason: not valid java name */
        public boolean f4446do;

        /* renamed from: for  reason: not valid java name */
        public boolean f4447for;

        /* renamed from: if  reason: not valid java name */
        public boolean f4448if;

        /* renamed from: do  reason: not valid java name */
        public final boolean m2507do(boolean z) {
            return (this.f4447for || z || this.f4448if) && this.f4446do;
        }
    }

    public sk(Cnew cnew, Pools.Pool<sk<?>> pool) {
        this.f4417new = cnew;
        this.f4428try = pool;
    }

    /* renamed from: break  reason: not valid java name */
    public final void m2496break(String str, long j, String str2) {
        StringBuilder m1025while = Cgoto.m1025while(str, " in ");
        m1025while.append(cs.m395do(j));
        m1025while.append(", load key: ");
        m1025while.append(this.f4402catch);
        m1025while.append(str2 != null ? Cgoto.m989case(", ", str2) : "");
        m1025while.append(", thread: ");
        m1025while.append(Thread.currentThread().getName());
        m1025while.toString();
    }

    /* renamed from: case  reason: not valid java name */
    public final <Data> gl<R> m2497case(Data data, dj djVar) throws bl {
        vj<Data> mo197if;
        el<Data, ?, R> m2285new = this.f4407do.m2285new(data.getClass());
        mj mjVar = this.f4423super;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = djVar == dj.RESOURCE_DISK_CACHE || this.f4407do.f4100import;
            Boolean bool = (Boolean) mjVar.m1724for(eo.f1109this);
            if (bool == null || (bool.booleanValue() && !z)) {
                mjVar = new mj();
                mjVar.m1725new(this.f4423super);
                mjVar.f3062if.put(eo.f1109this, Boolean.valueOf(z));
            }
        }
        mj mjVar2 = mjVar;
        wj wjVar = this.f4413goto.f2814if.f3439try;
        synchronized (wjVar) {
            eg.m593else(data, "Argument must not be null");
            vj.Cdo<?> cdo = wjVar.f5314do.get(data.getClass());
            if (cdo == null) {
                Iterator<vj.Cdo<?>> it = wjVar.f5314do.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    vj.Cdo<?> next = it.next();
                    if (next.mo196do().isAssignableFrom(data.getClass())) {
                        cdo = next;
                        break;
                    }
                }
            }
            if (cdo == null) {
                cdo = wj.f5313if;
            }
            mo197if = cdo.mo197if(data);
        }
        try {
            return m2285new.m637do(mo197if, mjVar2, this.f4403class, this.f4404const, new Cif(djVar));
        } finally {
            mo197if.mo195if();
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m2498catch() {
        boolean m2507do;
        m2504super();
        bl blVar = new bl("Failed to load resource", new ArrayList(this.f4414if));
        wk<?> wkVar = (wk) this.f4426throw;
        synchronized (wkVar) {
            wkVar.f5333public = blVar;
        }
        synchronized (wkVar) {
            wkVar.f5329if.mo1555do();
            if (wkVar.f5340throws) {
                wkVar.m2917else();
            } else if (!wkVar.f5324do.isEmpty()) {
                if (!wkVar.f5334return) {
                    wkVar.f5334return = true;
                    kj kjVar = wkVar.f5322class;
                    wk.Ctry ctry = wkVar.f5324do;
                    if (ctry != null) {
                        ArrayList arrayList = new ArrayList(ctry.f5349do);
                        wkVar.m2922try(arrayList.size() + 1);
                        ((vk) wkVar.f5320case).m2821try(wkVar, kjVar, null);
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            wk.Cnew cnew = (wk.Cnew) it.next();
                            cnew.f5348if.execute(new wk.Cdo(cnew.f5347do));
                        }
                        wkVar.m2920new();
                    } else {
                        throw null;
                    }
                } else {
                    throw new IllegalStateException("Already failed once");
                }
            } else {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
        }
        Ctry ctry2 = this.f4408else;
        synchronized (ctry2) {
            ctry2.f4447for = true;
            m2507do = ctry2.m2507do(false);
        }
        if (m2507do) {
            m2499class();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public final void m2499class() {
        Ctry ctry = this.f4408else;
        synchronized (ctry) {
            ctry.f4448if = false;
            ctry.f4446do = false;
            ctry.f4447for = false;
        }
        Cfor<?> cfor = this.f4401case;
        cfor.f4441do = null;
        cfor.f4443if = null;
        cfor.f4442for = null;
        rk<R> rkVar = this.f4407do;
        rkVar.f4097for = null;
        rkVar.f4101new = null;
        rkVar.f4096final = null;
        rkVar.f4095else = null;
        rkVar.f4091catch = null;
        rkVar.f4103this = null;
        rkVar.f4102super = null;
        rkVar.f4089break = null;
        rkVar.f4104throw = null;
        rkVar.f4094do.clear();
        rkVar.f4092class = false;
        rkVar.f4099if.clear();
        rkVar.f4093const = false;
        this.f4399abstract = false;
        this.f4413goto = null;
        this.f4425this = null;
        this.f4423super = null;
        this.f4400break = null;
        this.f4402catch = null;
        this.f4426throw = null;
        this.f4415import = null;
        this.f4419private = null;
        this.f4424switch = null;
        this.f4427throws = null;
        this.f4409extends = null;
        this.f4411finally = null;
        this.f4418package = null;
        this.f4420public = 0L;
        this.f4405continue = false;
        this.f4422static = null;
        this.f4414if.clear();
        this.f4428try.release(this);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull sk<?> skVar) {
        sk<?> skVar2 = skVar;
        int ordinal = this.f4400break.ordinal() - skVar2.f4400break.ordinal();
        return ordinal == 0 ? this.f4429while - skVar2.f4429while : ordinal;
    }

    /* renamed from: const  reason: not valid java name */
    public final void m2500const() {
        this.f4424switch = Thread.currentThread();
        this.f4420public = cs.m396if();
        boolean z = false;
        while (!this.f4405continue && this.f4419private != null && !(z = this.f4419private.mo1138if())) {
            this.f4415import = m2505this(this.f4415import);
            this.f4419private = m2503goto();
            if (this.f4415import == Celse.SOURCE) {
                this.f4416native = Ccase.SWITCH_TO_SOURCE_SERVICE;
                ((wk) this.f4426throw).m2921this(this);
                return;
            }
        }
        if ((this.f4415import == Celse.FINISHED || this.f4405continue) && !z) {
            m2498catch();
        }
    }

    @Override // com.apk.qk.Cdo
    /* renamed from: do */
    public void mo1643do(kj kjVar, Exception exc, uj<?> ujVar, dj djVar) {
        ujVar.mo60if();
        bl blVar = new bl("Fetching data failed", exc);
        Class<?> mo58do = ujVar.mo58do();
        blVar.f352if = kjVar;
        blVar.f351for = djVar;
        blVar.f353new = mo58do;
        this.f4414if.add(blVar);
        if (Thread.currentThread() != this.f4424switch) {
            this.f4416native = Ccase.SWITCH_TO_SOURCE_SERVICE;
            ((wk) this.f4426throw).m2921this(this);
            return;
        }
        m2500const();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else  reason: not valid java name */
    public final void m2501else() {
        gl glVar;
        fl flVar;
        gl glVar2;
        boolean m2507do;
        if (Log.isLoggable("DecodeJob", 2)) {
            long j = this.f4420public;
            StringBuilder m1016super = Cgoto.m1016super("data: ");
            m1016super.append(this.f4409extends);
            m1016super.append(", cache key: ");
            m1016super.append(this.f4427throws);
            m1016super.append(", fetcher: ");
            m1016super.append(this.f4418package);
            m2496break("Retrieved data", j, m1016super.toString());
        }
        try {
            glVar = (gl<R>) m2506try(this.f4418package, this.f4409extends, this.f4411finally);
        } catch (bl e) {
            kj kjVar = this.f4406default;
            dj djVar = this.f4411finally;
            e.f352if = kjVar;
            e.f351for = djVar;
            e.f353new = null;
            this.f4414if.add(e);
            glVar = null;
        }
        if (glVar != null) {
            dj djVar2 = this.f4411finally;
            if (glVar instanceof cl) {
                ((cl) glVar).mo353if();
            }
            if (this.f4401case.f4442for != null) {
                gl m845try = fl.m845try(glVar);
                flVar = m845try;
                glVar2 = m845try;
            } else {
                flVar = null;
                glVar2 = glVar;
            }
            m2504super();
            wk<?> wkVar = (wk) this.f4426throw;
            synchronized (wkVar) {
                wkVar.f5342while = glVar2;
                wkVar.f5330import = djVar2;
            }
            synchronized (wkVar) {
                wkVar.f5329if.mo1555do();
                if (wkVar.f5340throws) {
                    wkVar.f5342while.mo65do();
                    wkVar.m2917else();
                } else if (!wkVar.f5324do.isEmpty()) {
                    if (!wkVar.f5331native) {
                        wk.Cfor cfor = wkVar.f5341try;
                        gl<?> glVar3 = wkVar.f5342while;
                        boolean z = wkVar.f5323const;
                        kj kjVar2 = wkVar.f5322class;
                        al.Cdo cdo = wkVar.f5327for;
                        if (cfor != null) {
                            wkVar.f5335static = new al<>(glVar3, z, true, kjVar2, cdo);
                            wkVar.f5331native = true;
                            wk.Ctry ctry = wkVar.f5324do;
                            if (ctry != null) {
                                ArrayList arrayList = new ArrayList(ctry.f5349do);
                                wkVar.m2922try(arrayList.size() + 1);
                                ((vk) wkVar.f5320case).m2821try(wkVar, wkVar.f5322class, wkVar.f5335static);
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    wk.Cnew cnew = (wk.Cnew) it.next();
                                    cnew.f5348if.execute(new wk.Cif(cnew.f5347do));
                                }
                                wkVar.m2920new();
                            } else {
                                throw null;
                            }
                        } else {
                            throw null;
                        }
                    } else {
                        throw new IllegalStateException("Already have resource");
                    }
                } else {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
            }
            this.f4415import = Celse.ENCODE;
            try {
                if (this.f4401case.f4442for != null) {
                    Cfor<?> cfor2 = this.f4401case;
                    Cnew cnew2 = this.f4417new;
                    mj mjVar = this.f4423super;
                    if (cfor2 != null) {
                        ((vk.Cfor) cnew2).m2822do().mo73do(cfor2.f4441do, new pk(cfor2.f4443if, cfor2.f4442for, mjVar));
                        cfor2.f4442for.m846case();
                    } else {
                        throw null;
                    }
                }
                Ctry ctry2 = this.f4408else;
                synchronized (ctry2) {
                    ctry2.f4448if = true;
                    m2507do = ctry2.m2507do(false);
                }
                if (m2507do) {
                    m2499class();
                    return;
                }
                return;
            } finally {
                if (flVar != null) {
                    flVar.m846case();
                }
            }
        }
        m2500const();
    }

    /* renamed from: final  reason: not valid java name */
    public final void m2502final() {
        int ordinal = this.f4416native.ordinal();
        if (ordinal == 0) {
            this.f4415import = m2505this(Celse.INITIALIZE);
            this.f4419private = m2503goto();
            m2500const();
        } else if (ordinal == 1) {
            m2500const();
        } else if (ordinal == 2) {
            m2501else();
        } else {
            StringBuilder m1016super = Cgoto.m1016super("Unrecognized run reason: ");
            m1016super.append(this.f4416native);
            throw new IllegalStateException(m1016super.toString());
        }
    }

    @Override // com.apk.qk.Cdo
    /* renamed from: for */
    public void mo1644for() {
        this.f4416native = Ccase.SWITCH_TO_SOURCE_SERVICE;
        ((wk) this.f4426throw).m2921this(this);
    }

    /* renamed from: goto  reason: not valid java name */
    public final qk m2503goto() {
        int ordinal = this.f4415import.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 5) {
                        return null;
                    }
                    StringBuilder m1016super = Cgoto.m1016super("Unrecognized stage: ");
                    m1016super.append(this.f4415import);
                    throw new IllegalStateException(m1016super.toString());
                }
                return new ll(this.f4407do, this);
            }
            return new nk(this.f4407do, this);
        }
        return new hl(this.f4407do, this);
    }

    @Override // com.apk.hs.Cnew
    @NonNull
    /* renamed from: if */
    public ks mo847if() {
        return this.f4412for;
    }

    @Override // com.apk.qk.Cdo
    /* renamed from: new */
    public void mo1645new(kj kjVar, Object obj, uj<?> ujVar, dj djVar, kj kjVar2) {
        this.f4427throws = kjVar;
        this.f4409extends = obj;
        this.f4418package = ujVar;
        this.f4411finally = djVar;
        this.f4406default = kjVar2;
        if (Thread.currentThread() != this.f4424switch) {
            this.f4416native = Ccase.DECODE_DATA;
            ((wk) this.f4426throw).m2921this(this);
            return;
        }
        m2501else();
    }

    @Override // java.lang.Runnable
    public void run() {
        uj<?> ujVar = this.f4418package;
        try {
            try {
                if (this.f4405continue) {
                    m2498catch();
                    if (ujVar != null) {
                        ujVar.mo60if();
                        return;
                    }
                    return;
                }
                m2502final();
                if (ujVar != null) {
                    ujVar.mo60if();
                }
            } catch (mk e) {
                throw e;
            }
        }
    }

    /* renamed from: super  reason: not valid java name */
    public final void m2504super() {
        Throwable th;
        this.f4412for.mo1555do();
        if (this.f4399abstract) {
            if (this.f4414if.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.f4414if;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.f4399abstract = true;
    }

    /* renamed from: this  reason: not valid java name */
    public final Celse m2505this(Celse celse) {
        Celse celse2 = Celse.RESOURCE_CACHE;
        Celse celse3 = Celse.DATA_CACHE;
        Celse celse4 = Celse.FINISHED;
        int ordinal = celse.ordinal();
        if (ordinal == 0) {
            return this.f4410final.mo2712if() ? celse2 : m2505this(celse2);
        } else if (ordinal == 1) {
            return this.f4410final.mo2710do() ? celse3 : m2505this(celse3);
        } else if (ordinal == 2) {
            return this.f4421return ? celse4 : Celse.SOURCE;
        } else if (ordinal == 3 || ordinal == 5) {
            return celse4;
        } else {
            throw new IllegalArgumentException("Unrecognized stage: " + celse);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final <Data> gl<R> m2506try(uj<?> ujVar, Data data, dj djVar) throws bl {
        if (data == null) {
            return null;
        }
        try {
            long m396if = cs.m396if();
            gl<R> m2497case = m2497case(data, djVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                m2496break("Decoded result " + m2497case, m396if, null);
            }
            return m2497case;
        } finally {
            ujVar.mo60if();
        }
    }
}
