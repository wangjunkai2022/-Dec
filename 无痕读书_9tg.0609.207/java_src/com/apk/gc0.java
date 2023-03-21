package com.apk;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* compiled from: BlurTransformation.java */
/* loaded from: classes7.dex */
public class gc0 extends fc0 {

    /* renamed from: for  reason: not valid java name */
    public final int f1551for;

    /* renamed from: if  reason: not valid java name */
    public final int f1552if;

    public gc0() {
        this(25, 1);
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        StringBuilder m1016super = Cgoto.m1016super("jp.wasabeef.glide.transformations.BlurTransformation.1");
        m1016super.append(this.f1552if);
        m1016super.append(this.f1551for);
        messageDigest.update(m1016super.toString().getBytes(kj.f2575do));
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof gc0) {
            gc0 gc0Var = (gc0) obj;
            if (gc0Var.f1552if == this.f1552if && gc0Var.f1551for == this.f1551for) {
                return true;
            }
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return (this.f1551for * 10) + (this.f1552if * 1000) + 737513610;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("BlurTransformation(radius=");
        m1016super.append(this.f1552if);
        m1016super.append(", sampling=");
        return Cgoto.m1019this(m1016super, this.f1551for, ")");
    }

    public gc0(int i, int i2) {
        this.f1552if = i;
        this.f1551for = i2;
    }
}
