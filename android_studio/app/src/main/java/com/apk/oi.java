package com.apk;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.an;
import com.apk.hs;
import com.apk.rq;
import com.apk.up;
import com.apk.vj;
import com.apk.vq;
import com.apk.wq;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: Registry.java */
/* loaded from: classes8.dex */
public class oi {

    /* renamed from: break  reason: not valid java name */
    public final Pools.Pool<List<Throwable>> f3430break;

    /* renamed from: case  reason: not valid java name */
    public final up f3431case;

    /* renamed from: do  reason: not valid java name */
    public final an f3432do;

    /* renamed from: else  reason: not valid java name */
    public final sq f3433else;

    /* renamed from: for  reason: not valid java name */
    public final vq f3434for;

    /* renamed from: if  reason: not valid java name */
    public final rq f3436if;

    /* renamed from: new  reason: not valid java name */
    public final wq f3437new;

    /* renamed from: try  reason: not valid java name */
    public final wj f3439try;

    /* renamed from: goto  reason: not valid java name */
    public final uq f3435goto = new uq();

    /* renamed from: this  reason: not valid java name */
    public final tq f3438this = new tq();

    /* compiled from: Registry.java */
    /* renamed from: com.apk.oi$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends RuntimeException {
        public Cdo(@NonNull String str) {
            super(str);
        }
    }

    /* compiled from: Registry.java */
    /* renamed from: com.apk.oi$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends Cdo {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Cfor(@androidx.annotation.NonNull java.lang.Object r2) {
            /*
                r1 = this;
                java.lang.String r0 = "Failed to find any ModelLoaders registered for model class: "
                java.lang.StringBuilder r0 = com.apk.Cgoto.m1016super(r0)
                java.lang.Class r2 = r2.getClass()
                r0.append(r2)
                java.lang.String r2 = r0.toString()
                r1.<init>(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.oi.Cfor.<init>(java.lang.Object):void");
        }

        public <M> Cfor(@NonNull M m, @NonNull List<ym<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m);
        }

        public Cfor(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* compiled from: Registry.java */
    /* renamed from: com.apk.oi$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif extends Cdo {
        public Cif() {
            super("Failed to find image header parser.");
        }
    }

    /* compiled from: Registry.java */
    /* renamed from: com.apk.oi$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew extends Cdo {
        public Cnew(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* compiled from: Registry.java */
    /* renamed from: com.apk.oi$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry extends Cdo {
        public Ctry(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public oi() {
        hs.Cfor cfor = new hs.Cfor(new Pools.SynchronizedPool(20), new is(), new js());
        this.f3430break = cfor;
        this.f3432do = new an(cfor);
        this.f3436if = new rq();
        this.f3434for = new vq();
        this.f3437new = new wq();
        this.f3439try = new wj();
        this.f3431case = new up();
        this.f3433else = new sq();
        List asList = Arrays.asList("Gif", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.addAll(asList);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        vq vqVar = this.f3434for;
        synchronized (vqVar) {
            ArrayList arrayList2 = new ArrayList(vqVar.f5189do);
            vqVar.f5189do.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                vqVar.f5189do.add((String) it.next());
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (!arrayList.contains(str)) {
                    vqVar.f5189do.add(str);
                }
            }
        }
    }

    @NonNull
    /* renamed from: case  reason: not valid java name */
    public <Model> List<ym<Model, ?>> m1951case(@NonNull Model model) {
        an anVar = this.f3432do;
        List<ym<?, ?>> list = null;
        if (anVar != null) {
            Class<?> cls = model.getClass();
            synchronized (anVar) {
                an.Cdo.C0060do<?> c0060do = anVar.f124if.f125do.get(cls);
                if (c0060do != null) {
                    list = c0060do.f126do;
                }
                if (list == null) {
                    list = Collections.unmodifiableList(anVar.f123do.m370new(cls));
                    if (anVar.f124if.f125do.put(cls, new an.Cdo.C0060do<>(list)) != null) {
                        throw new IllegalStateException("Already cached loaders for model: " + cls);
                    }
                }
            }
            if (!list.isEmpty()) {
                int size = list.size();
                List<ym<Model, ?>> emptyList = Collections.emptyList();
                boolean z = true;
                for (int i = 0; i < size; i++) {
                    ym<?, ?> ymVar = list.get(i);
                    if (ymVar.mo52do(model)) {
                        if (z) {
                            emptyList = new ArrayList<>(size - i);
                            z = false;
                        }
                        emptyList.add(ymVar);
                    }
                }
                if (emptyList.isEmpty()) {
                    throw new Cfor(model, (List<ym<Model, ?>>) list);
                }
                return emptyList;
            }
            throw new Cfor(model);
        }
        throw null;
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public <Data> oi m1952do(@NonNull Class<Data> cls, @NonNull gj<Data> gjVar) {
        rq rqVar = this.f3436if;
        synchronized (rqVar) {
            rqVar.f4188do.add(new rq.Cdo<>(cls, gjVar));
        }
        return this;
    }

    @NonNull
    /* renamed from: else  reason: not valid java name */
    public oi m1953else(@NonNull vj.Cdo<?> cdo) {
        wj wjVar = this.f3439try;
        synchronized (wjVar) {
            wjVar.f5314do.put(cdo.mo196do(), cdo);
        }
        return this;
    }

    @NonNull
    /* renamed from: for  reason: not valid java name */
    public <Model, Data> oi m1954for(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull zm<Model, Data> zmVar) {
        an anVar = this.f3432do;
        synchronized (anVar) {
            anVar.f123do.m367do(cls, cls2, zmVar);
            anVar.f124if.f125do.clear();
        }
        return this;
    }

    @NonNull
    /* renamed from: goto  reason: not valid java name */
    public <TResource, Transcode> oi m1955goto(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull tp<TResource, Transcode> tpVar) {
        up upVar = this.f3431case;
        synchronized (upVar) {
            upVar.f4950do.add(new up.Cdo<>(cls, cls2, tpVar));
        }
        return this;
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public <TResource> oi m1956if(@NonNull Class<TResource> cls, @NonNull pj<TResource> pjVar) {
        wq wqVar = this.f3437new;
        synchronized (wqVar) {
            wqVar.f5375do.add(new wq.Cdo<>(cls, pjVar));
        }
        return this;
    }

    @NonNull
    /* renamed from: new  reason: not valid java name */
    public <Data, TResource> oi m1957new(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull oj<Data, TResource> ojVar) {
        vq vqVar = this.f3434for;
        synchronized (vqVar) {
            vqVar.m2830do(str).add(new vq.Cdo<>(cls, cls2, ojVar));
        }
        return this;
    }

    @NonNull
    /* renamed from: this  reason: not valid java name */
    public <Model, Data> oi m1958this(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull zm<? extends Model, ? extends Data> zmVar) {
        List<zm<? extends Model, ? extends Data>> m366case;
        an anVar = this.f3432do;
        synchronized (anVar) {
            cn cnVar = anVar.f123do;
            synchronized (cnVar) {
                m366case = cnVar.m366case(cls, cls2);
                cnVar.m367do(cls, cls2, zmVar);
            }
            Iterator it = ((ArrayList) m366case).iterator();
            while (it.hasNext()) {
                ((zm) it.next()).mo54do();
            }
            anVar.f124if.f125do.clear();
        }
        return this;
    }

    @NonNull
    /* renamed from: try  reason: not valid java name */
    public List<ImageHeaderParser> m1959try() {
        List<ImageHeaderParser> list;
        sq sqVar = this.f3433else;
        synchronized (sqVar) {
            list = sqVar.f4539do;
        }
        if (list.isEmpty()) {
            throw new Cif();
        }
        return list;
    }
}
