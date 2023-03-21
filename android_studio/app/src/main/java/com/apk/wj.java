package com.apk;

import androidx.annotation.NonNull;
import com.apk.vj;
import java.util.HashMap;
import java.util.Map;

/* compiled from: DataRewinderRegistry.java */
/* loaded from: classes8.dex */
public class wj {

    /* renamed from: if  reason: not valid java name */
    public static final vj.Cdo<?> f5313if = new Cdo();

    /* renamed from: do  reason: not valid java name */
    public final Map<Class<?>, vj.Cdo<?>> f5314do = new HashMap();

    /* compiled from: DataRewinderRegistry.java */
    /* renamed from: com.apk.wj$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements vj.Cdo<Object> {
        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: do */
        public Class<Object> mo196do() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: if */
        public vj<Object> mo197if(@NonNull Object obj) {
            return new Cif(obj);
        }
    }

    /* compiled from: DataRewinderRegistry.java */
    /* renamed from: com.apk.wj$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements vj<Object> {

        /* renamed from: do  reason: not valid java name */
        public final Object f5315do;

        public Cif(@NonNull Object obj) {
            this.f5315do = obj;
        }

        @Override // com.apk.vj
        @NonNull
        /* renamed from: do */
        public Object mo193do() {
            return this.f5315do;
        }

        @Override // com.apk.vj
        /* renamed from: if */
        public void mo195if() {
        }
    }
}
