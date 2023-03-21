package com.apk;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey.java */
/* loaded from: classes8.dex */
public final class il implements kj {

    /* renamed from: break  reason: not valid java name */
    public static final ds<Class<?>, byte[]> f2140break = new ds<>(50);

    /* renamed from: case  reason: not valid java name */
    public final int f2141case;

    /* renamed from: else  reason: not valid java name */
    public final Class<?> f2142else;

    /* renamed from: for  reason: not valid java name */
    public final kj f2143for;

    /* renamed from: goto  reason: not valid java name */
    public final mj f2144goto;

    /* renamed from: if  reason: not valid java name */
    public final nl f2145if;

    /* renamed from: new  reason: not valid java name */
    public final kj f2146new;

    /* renamed from: this  reason: not valid java name */
    public final qj<?> f2147this;

    /* renamed from: try  reason: not valid java name */
    public final int f2148try;

    public il(nl nlVar, kj kjVar, kj kjVar2, int i, int i2, qj<?> qjVar, Class<?> cls, mj mjVar) {
        this.f2145if = nlVar;
        this.f2143for = kjVar;
        this.f2146new = kjVar2;
        this.f2148try = i;
        this.f2141case = i2;
        this.f2147this = qjVar;
        this.f2142else = cls;
        this.f2144goto = mjVar;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f2145if.mo1890try(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f2148try).putInt(this.f2141case).array();
        this.f2146new.mo76do(messageDigest);
        this.f2143for.mo76do(messageDigest);
        messageDigest.update(bArr);
        qj<?> qjVar = this.f2147this;
        if (qjVar != null) {
            qjVar.mo76do(messageDigest);
        }
        this.f2144goto.mo76do(messageDigest);
        byte[] m511do = f2140break.m511do(this.f2142else);
        if (m511do == null) {
            m511do = this.f2142else.getName().getBytes(kj.f2575do);
            f2140break.m514new(this.f2142else, m511do);
        }
        messageDigest.update(m511do);
        this.f2145if.put(bArr);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof il) {
            il ilVar = (il) obj;
            return this.f2141case == ilVar.f2141case && this.f2148try == ilVar.f2148try && gs.m1038for(this.f2147this, ilVar.f2147this) && this.f2142else.equals(ilVar.f2142else) && this.f2143for.equals(ilVar.f2143for) && this.f2146new.equals(ilVar.f2146new) && this.f2144goto.equals(ilVar.f2144goto);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        int hashCode = ((((this.f2146new.hashCode() + (this.f2143for.hashCode() * 31)) * 31) + this.f2148try) * 31) + this.f2141case;
        qj<?> qjVar = this.f2147this;
        if (qjVar != null) {
            hashCode = (hashCode * 31) + qjVar.hashCode();
        }
        int hashCode2 = this.f2142else.hashCode();
        return this.f2144goto.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("ResourceCacheKey{sourceKey=");
        m1016super.append(this.f2143for);
        m1016super.append(", signature=");
        m1016super.append(this.f2146new);
        m1016super.append(", width=");
        m1016super.append(this.f2148try);
        m1016super.append(", height=");
        m1016super.append(this.f2141case);
        m1016super.append(", decodedResourceClass=");
        m1016super.append(this.f2142else);
        m1016super.append(", transformation='");
        m1016super.append(this.f2147this);
        m1016super.append('\'');
        m1016super.append(", options=");
        m1016super.append(this.f2144goto);
        m1016super.append('}');
        return m1016super.toString();
    }
}
