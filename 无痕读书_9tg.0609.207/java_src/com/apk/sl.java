package com.apk;

import androidx.annotation.Nullable;
import com.apk.xl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: GroupedLinkedMap.java */
/* loaded from: classes8.dex */
public class sl<K extends xl, V> {

    /* renamed from: do  reason: not valid java name */
    public final Cdo<K, V> f4449do = new Cdo<>(null);

    /* renamed from: if  reason: not valid java name */
    public final Map<K, Cdo<K, V>> f4450if = new HashMap();

    /* compiled from: GroupedLinkedMap.java */
    /* renamed from: com.apk.sl$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<K, V> {

        /* renamed from: do  reason: not valid java name */
        public final K f4451do;

        /* renamed from: for  reason: not valid java name */
        public Cdo<K, V> f4452for;

        /* renamed from: if  reason: not valid java name */
        public List<V> f4453if;

        /* renamed from: new  reason: not valid java name */
        public Cdo<K, V> f4454new;

        public Cdo() {
            this(null);
        }

        @Nullable
        /* renamed from: do  reason: not valid java name */
        public V m2511do() {
            List<V> list = this.f4453if;
            int size = list != null ? list.size() : 0;
            if (size > 0) {
                return this.f4453if.remove(size - 1);
            }
            return null;
        }

        public Cdo(K k) {
            this.f4454new = this;
            this.f4452for = this;
            this.f4451do = k;
        }
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public V m2508do(K k) {
        Cdo<K, V> cdo = this.f4450if.get(k);
        if (cdo == null) {
            cdo = new Cdo<>(k);
            this.f4450if.put(k, cdo);
        } else {
            k.mo2723do();
        }
        Cdo<K, V> cdo2 = cdo.f4454new;
        cdo2.f4452for = cdo.f4452for;
        cdo.f4452for.f4454new = cdo2;
        Cdo<K, V> cdo3 = this.f4449do;
        cdo.f4454new = cdo3;
        Cdo<K, V> cdo4 = cdo3.f4452for;
        cdo.f4452for = cdo4;
        cdo4.f4454new = cdo;
        cdo.f4454new.f4452for = cdo;
        return cdo.m2511do();
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public V m2509for() {
        for (Cdo cdo = this.f4449do.f4454new; !cdo.equals(this.f4449do); cdo = cdo.f4454new) {
            V v = (V) cdo.m2511do();
            if (v != null) {
                return v;
            }
            Cdo<K, V> cdo2 = cdo.f4454new;
            cdo2.f4452for = cdo.f4452for;
            cdo.f4452for.f4454new = cdo2;
            this.f4450if.remove(cdo.f4451do);
            ((xl) cdo.f4451do).mo2723do();
        }
        return null;
    }

    /* renamed from: if  reason: not valid java name */
    public void m2510if(K k, V v) {
        Cdo<K, V> cdo = this.f4450if.get(k);
        if (cdo == null) {
            cdo = new Cdo<>(k);
            Cdo<K, V> cdo2 = cdo.f4454new;
            cdo2.f4452for = cdo.f4452for;
            cdo.f4452for.f4454new = cdo2;
            Cdo<K, V> cdo3 = this.f4449do;
            cdo.f4454new = cdo3.f4454new;
            cdo.f4452for = cdo3;
            cdo3.f4454new = cdo;
            cdo.f4454new.f4452for = cdo;
            this.f4450if.put(k, cdo);
        } else {
            k.mo2723do();
        }
        if (cdo.f4453if == null) {
            cdo.f4453if = new ArrayList();
        }
        cdo.f4453if.add(v);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (Cdo cdo = this.f4449do.f4452for; !cdo.equals(this.f4449do); cdo = cdo.f4452for) {
            z = true;
            sb.append('{');
            sb.append(cdo.f4451do);
            sb.append(':');
            List<V> list = cdo.f4453if;
            sb.append(list != null ? list.size() : 0);
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
