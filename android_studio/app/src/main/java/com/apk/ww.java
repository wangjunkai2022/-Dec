package com.apk;

import java.io.Serializable;

/* compiled from: CacheEntity.java */
/* loaded from: classes8.dex */
public class ww<T> implements Serializable {

    /* renamed from: do  reason: not valid java name */
    public String f5404do;

    /* renamed from: for  reason: not valid java name */
    public fy f5405for;

    /* renamed from: if  reason: not valid java name */
    public long f5406if;

    /* renamed from: new  reason: not valid java name */
    public T f5407new;

    /* renamed from: try  reason: not valid java name */
    public boolean f5408try;

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("CacheEntity{key='");
        Cgoto.m987abstract(m1016super, this.f5404do, '\'', ", responseHeaders=");
        m1016super.append(this.f5405for);
        m1016super.append(", data=");
        m1016super.append(this.f5407new);
        m1016super.append(", localExpire=");
        m1016super.append(this.f5406if);
        m1016super.append('}');
        return m1016super.toString();
    }
}
