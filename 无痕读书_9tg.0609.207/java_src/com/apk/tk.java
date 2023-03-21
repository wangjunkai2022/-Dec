package com.apk;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.oi;
import com.apk.sk;
import com.apk.ym;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DecodePath.java */
/* loaded from: classes8.dex */
public class tk<DataType, ResourceType, Transcode> {

    /* renamed from: do  reason: not valid java name */
    public final Class<DataType> f4729do;

    /* renamed from: for  reason: not valid java name */
    public final tp<ResourceType, Transcode> f4730for;

    /* renamed from: if  reason: not valid java name */
    public final List<? extends oj<DataType, ResourceType>> f4731if;

    /* renamed from: new  reason: not valid java name */
    public final Pools.Pool<List<Throwable>> f4732new;

    /* renamed from: try  reason: not valid java name */
    public final String f4733try;

    /* compiled from: DecodePath.java */
    /* renamed from: com.apk.tk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo<ResourceType> {
    }

    public tk(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends oj<DataType, ResourceType>> list, tp<ResourceType, Transcode> tpVar, Pools.Pool<List<Throwable>> pool) {
        this.f4729do = cls;
        this.f4731if = list;
        this.f4730for = tpVar;
        this.f4732new = pool;
        StringBuilder m1016super = Cgoto.m1016super("Failed DecodePath{");
        m1016super.append(cls.getSimpleName());
        m1016super.append("->");
        m1016super.append(cls2.getSimpleName());
        m1016super.append("->");
        m1016super.append(cls3.getSimpleName());
        m1016super.append("}");
        this.f4733try = m1016super.toString();
    }

    /* renamed from: do  reason: not valid java name */
    public gl<Transcode> m2606do(vj<DataType> vjVar, int i, int i2, @NonNull mj mjVar, Cdo<ResourceType> cdo) throws bl {
        gl<ResourceType> glVar;
        qj qjVar;
        fj fjVar;
        kj okVar;
        List<Throwable> acquire = this.f4732new.acquire();
        eg.m593else(acquire, "Argument must not be null");
        List<Throwable> list = acquire;
        try {
            gl<ResourceType> m2607if = m2607if(vjVar, i, i2, mjVar, list);
            this.f4732new.release(list);
            sk.Cif cif = (sk.Cif) cdo;
            sk skVar = sk.this;
            dj djVar = cif.f4444do;
            pj pjVar = null;
            if (skVar != null) {
                Class<?> cls = m2607if.get().getClass();
                if (djVar != dj.RESOURCE_DISK_CACHE) {
                    qj m2280case = skVar.f4407do.m2280case(cls);
                    qjVar = m2280case;
                    glVar = m2280case.mo778if(skVar.f4413goto, m2607if, skVar.f4403class, skVar.f4404const);
                } else {
                    glVar = m2607if;
                    qjVar = null;
                }
                if (!m2607if.equals(glVar)) {
                    m2607if.mo65do();
                }
                boolean z = false;
                if (skVar.f4407do.f4097for.f2814if.f3437new.m2935do(glVar.mo68new()) != null) {
                    pj m2935do = skVar.f4407do.f4097for.f2814if.f3437new.m2935do(glVar.mo68new());
                    if (m2935do != null) {
                        fjVar = m2935do.mo1258if(skVar.f4423super);
                        pjVar = m2935do;
                    } else {
                        throw new oi.Cnew(glVar.mo68new());
                    }
                } else {
                    fjVar = fj.NONE;
                }
                rk<R> rkVar = skVar.f4407do;
                kj kjVar = skVar.f4427throws;
                List<ym.Cdo<?>> m2283for = rkVar.m2283for();
                int size = m2283for.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    } else if (m2283for.get(i3).f6003do.equals(kjVar)) {
                        z = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                gl<ResourceType> glVar2 = glVar;
                if (skVar.f4410final.mo2713new(!z, djVar, fjVar)) {
                    if (pjVar != null) {
                        int ordinal = fjVar.ordinal();
                        if (ordinal == 0) {
                            okVar = new ok(skVar.f4427throws, skVar.f4425this);
                        } else if (ordinal == 1) {
                            okVar = new il(skVar.f4407do.f4097for.f2810do, skVar.f4427throws, skVar.f4425this, skVar.f4403class, skVar.f4404const, qjVar, cls, skVar.f4423super);
                        } else {
                            throw new IllegalArgumentException("Unknown strategy: " + fjVar);
                        }
                        fl<Z> m845try = fl.m845try(glVar);
                        sk.Cfor<?> cfor = skVar.f4401case;
                        cfor.f4441do = okVar;
                        cfor.f4443if = pjVar;
                        cfor.f4442for = m845try;
                        glVar2 = m845try;
                    } else {
                        throw new oi.Cnew(glVar.get().getClass());
                    }
                }
                return this.f4730for.mo2069do(glVar2, mjVar);
            }
            throw null;
        } catch (Throwable th) {
            this.f4732new.release(list);
            throw th;
        }
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public final gl<ResourceType> m2607if(vj<DataType> vjVar, int i, int i2, @NonNull mj mjVar, List<Throwable> list) throws bl {
        int size = this.f4731if.size();
        gl<ResourceType> glVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            oj<DataType, ResourceType> ojVar = this.f4731if.get(i3);
            try {
                if (ojVar.mo257do(vjVar.mo193do(), mjVar)) {
                    glVar = ojVar.mo259if(vjVar.mo193do(), i, i2, mjVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    String str = "Failed to decode data for " + ojVar;
                }
                list.add(e);
            }
            if (glVar != null) {
                break;
            }
        }
        if (glVar != null) {
            return glVar;
        }
        throw new bl(this.f4733try, new ArrayList(list));
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("DecodePath{ dataClass=");
        m1016super.append(this.f4729do);
        m1016super.append(", decoders=");
        m1016super.append(this.f4731if);
        m1016super.append(", transcoder=");
        m1016super.append(this.f4730for);
        m1016super.append('}');
        return m1016super.toString();
    }
}
