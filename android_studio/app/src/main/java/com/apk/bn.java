package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.apk.uj;
import com.apk.ym;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MultiModelLoader.java */
/* loaded from: classes8.dex */
public class bn<Model, Data> implements ym<Model, Data> {

    /* renamed from: do  reason: not valid java name */
    public final List<ym<Model, Data>> f366do;

    /* renamed from: if  reason: not valid java name */
    public final Pools.Pool<List<Throwable>> f367if;

    /* compiled from: MultiModelLoader.java */
    /* renamed from: com.apk.bn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<Data> implements uj<Data>, uj.Cdo<Data> {
        @Nullable

        /* renamed from: case  reason: not valid java name */
        public List<Throwable> f368case;

        /* renamed from: do  reason: not valid java name */
        public final List<uj<Data>> f369do;

        /* renamed from: else  reason: not valid java name */
        public boolean f370else;

        /* renamed from: for  reason: not valid java name */
        public int f371for;

        /* renamed from: if  reason: not valid java name */
        public final Pools.Pool<List<Throwable>> f372if;

        /* renamed from: new  reason: not valid java name */
        public ni f373new;

        /* renamed from: try  reason: not valid java name */
        public uj.Cdo<? super Data> f374try;

        public Cdo(@NonNull List<uj<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f372if = pool;
            if (!list.isEmpty()) {
                this.f369do = list;
                this.f371for = 0;
                return;
            }
            throw new IllegalArgumentException("Must not be empty.");
        }

        @Override // com.apk.uj
        public void cancel() {
            this.f370else = true;
            for (uj<Data> ujVar : this.f369do) {
                ujVar.cancel();
            }
        }

        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super Data> cdo) {
            this.f373new = niVar;
            this.f374try = cdo;
            this.f368case = this.f372if.acquire();
            this.f369do.get(this.f371for).mo57case(niVar, this);
            if (this.f370else) {
                cancel();
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<Data> mo58do() {
            return this.f369do.get(0).mo58do();
        }

        /* renamed from: else  reason: not valid java name */
        public final void m211else() {
            if (this.f370else) {
                return;
            }
            if (this.f371for < this.f369do.size() - 1) {
                this.f371for++;
                mo57case(this.f373new, this.f374try);
                return;
            }
            eg.m593else(this.f368case, "Argument must not be null");
            this.f374try.mo212for(new bl("Fetch failed", new ArrayList(this.f368case)));
        }

        @Override // com.apk.uj.Cdo
        /* renamed from: for  reason: not valid java name */
        public void mo212for(@NonNull Exception exc) {
            List<Throwable> list = this.f368case;
            eg.m593else(list, "Argument must not be null");
            list.add(exc);
            m211else();
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
            List<Throwable> list = this.f368case;
            if (list != null) {
                this.f372if.release(list);
            }
            this.f368case = null;
            for (uj<Data> ujVar : this.f369do) {
                ujVar.mo60if();
            }
        }

        @Override // com.apk.uj.Cdo
        /* renamed from: new  reason: not valid java name */
        public void mo213new(@Nullable Data data) {
            if (data != null) {
                this.f374try.mo213new(data);
            } else {
                m211else();
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return this.f369do.get(0).mo61try();
        }
    }

    public bn(@NonNull List<ym<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f366do = list;
        this.f367if = pool;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Model model) {
        for (ym<Model, Data> ymVar : this.f366do) {
            if (ymVar.mo52do(model)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<Data> mo53if(@NonNull Model model, int i, int i2, @NonNull mj mjVar) {
        ym.Cdo<Data> mo53if;
        int size = this.f366do.size();
        ArrayList arrayList = new ArrayList(size);
        kj kjVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            ym<Model, Data> ymVar = this.f366do.get(i3);
            if (ymVar.mo52do(model) && (mo53if = ymVar.mo53if(model, i, i2, mjVar)) != null) {
                kjVar = mo53if.f6003do;
                arrayList.add(mo53if.f6004for);
            }
        }
        if (arrayList.isEmpty() || kjVar == null) {
            return null;
        }
        return new ym.Cdo<>(kjVar, new Cdo(arrayList, this.f367if));
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("MultiModelLoader{modelLoaders=");
        m1016super.append(Arrays.toString(this.f366do.toArray()));
        m1016super.append('}');
        return m1016super.toString();
    }
}
