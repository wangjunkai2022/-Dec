package com.apk;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.tk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: LoadPath.java */
/* loaded from: classes8.dex */
public class el<Data, ResourceType, Transcode> {

    /* renamed from: do  reason: not valid java name */
    public final Pools.Pool<List<Throwable>> f1086do;

    /* renamed from: for  reason: not valid java name */
    public final String f1087for;

    /* renamed from: if  reason: not valid java name */
    public final List<? extends tk<Data, ResourceType, Transcode>> f1088if;

    public el(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<tk<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f1086do = pool;
        if (!list.isEmpty()) {
            this.f1088if = list;
            StringBuilder m1016super = Cgoto.m1016super("Failed LoadPath{");
            m1016super.append(cls.getSimpleName());
            m1016super.append("->");
            m1016super.append(cls2.getSimpleName());
            m1016super.append("->");
            m1016super.append(cls3.getSimpleName());
            m1016super.append("}");
            this.f1087for = m1016super.toString();
            return;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    /* renamed from: do  reason: not valid java name */
    public gl<Transcode> m637do(vj<Data> vjVar, @NonNull mj mjVar, int i, int i2, tk.Cdo<ResourceType> cdo) throws bl {
        List<Throwable> acquire = this.f1086do.acquire();
        eg.m593else(acquire, "Argument must not be null");
        List<Throwable> list = acquire;
        try {
            int size = this.f1088if.size();
            gl<Transcode> glVar = null;
            for (int i3 = 0; i3 < size; i3++) {
                try {
                    glVar = this.f1088if.get(i3).m2606do(vjVar, i, i2, mjVar, cdo);
                } catch (bl e) {
                    list.add(e);
                }
                if (glVar != null) {
                    break;
                }
            }
            if (glVar != null) {
                return glVar;
            }
            throw new bl(this.f1087for, new ArrayList(list));
        } finally {
            this.f1086do.release(list);
        }
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("LoadPath{decodePaths=");
        m1016super.append(Arrays.toString(this.f1088if.toArray()));
        m1016super.append('}');
        return m1016super.toString();
    }
}
