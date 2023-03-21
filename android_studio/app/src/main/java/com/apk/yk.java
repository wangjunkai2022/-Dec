package com.apk;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey.java */
/* loaded from: classes8.dex */
public class yk implements kj {

    /* renamed from: break  reason: not valid java name */
    public int f5973break;

    /* renamed from: case  reason: not valid java name */
    public final Class<?> f5974case;

    /* renamed from: else  reason: not valid java name */
    public final kj f5975else;

    /* renamed from: for  reason: not valid java name */
    public final int f5976for;

    /* renamed from: goto  reason: not valid java name */
    public final Map<Class<?>, qj<?>> f5977goto;

    /* renamed from: if  reason: not valid java name */
    public final Object f5978if;

    /* renamed from: new  reason: not valid java name */
    public final int f5979new;

    /* renamed from: this  reason: not valid java name */
    public final mj f5980this;

    /* renamed from: try  reason: not valid java name */
    public final Class<?> f5981try;

    public yk(Object obj, kj kjVar, int i, int i2, Map<Class<?>, qj<?>> map, Class<?> cls, Class<?> cls2, mj mjVar) {
        eg.m593else(obj, "Argument must not be null");
        this.f5978if = obj;
        eg.m593else(kjVar, "Signature must not be null");
        this.f5975else = kjVar;
        this.f5976for = i;
        this.f5979new = i2;
        eg.m593else(map, "Argument must not be null");
        this.f5977goto = map;
        eg.m593else(cls, "Resource class must not be null");
        this.f5981try = cls;
        eg.m593else(cls2, "Transcode class must not be null");
        this.f5974case = cls2;
        eg.m593else(mjVar, "Argument must not be null");
        this.f5980this = mjVar;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof yk) {
            yk ykVar = (yk) obj;
            return this.f5978if.equals(ykVar.f5978if) && this.f5975else.equals(ykVar.f5975else) && this.f5979new == ykVar.f5979new && this.f5976for == ykVar.f5976for && this.f5977goto.equals(ykVar.f5977goto) && this.f5981try.equals(ykVar.f5981try) && this.f5974case.equals(ykVar.f5974case) && this.f5980this.equals(ykVar.f5980this);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        if (this.f5973break == 0) {
            int hashCode = this.f5978if.hashCode();
            this.f5973break = hashCode;
            int hashCode2 = this.f5975else.hashCode() + (hashCode * 31);
            this.f5973break = hashCode2;
            int i = (hashCode2 * 31) + this.f5976for;
            this.f5973break = i;
            int i2 = (i * 31) + this.f5979new;
            this.f5973break = i2;
            int hashCode3 = this.f5977goto.hashCode() + (i2 * 31);
            this.f5973break = hashCode3;
            int hashCode4 = this.f5981try.hashCode() + (hashCode3 * 31);
            this.f5973break = hashCode4;
            int hashCode5 = this.f5974case.hashCode() + (hashCode4 * 31);
            this.f5973break = hashCode5;
            this.f5973break = this.f5980this.hashCode() + (hashCode5 * 31);
        }
        return this.f5973break;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("EngineKey{model=");
        m1016super.append(this.f5978if);
        m1016super.append(", width=");
        m1016super.append(this.f5976for);
        m1016super.append(", height=");
        m1016super.append(this.f5979new);
        m1016super.append(", resourceClass=");
        m1016super.append(this.f5981try);
        m1016super.append(", transcodeClass=");
        m1016super.append(this.f5974case);
        m1016super.append(", signature=");
        m1016super.append(this.f5975else);
        m1016super.append(", hashCode=");
        m1016super.append(this.f5973break);
        m1016super.append(", transformations=");
        m1016super.append(this.f5977goto);
        m1016super.append(", options=");
        m1016super.append(this.f5980this);
        m1016super.append('}');
        return m1016super.toString();
    }
}
