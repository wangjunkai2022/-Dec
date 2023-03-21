package com.apk;

import androidx.annotation.NonNull;

/* compiled from: SimpleTarget.java */
@Deprecated
/* loaded from: classes8.dex */
public abstract class nr<Z> extends gr<Z> {

    /* renamed from: if  reason: not valid java name */
    public final int f3299if = Integer.MIN_VALUE;

    /* renamed from: for  reason: not valid java name */
    public final int f3298for = Integer.MIN_VALUE;

    @Override // com.apk.pr
    /* renamed from: break */
    public final void mo268break(@NonNull or orVar) {
        if (gs.m1034const(this.f3299if, this.f3298for)) {
            orVar.mo886if(this.f3299if, this.f3298for);
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ");
        m1016super.append(this.f3299if);
        m1016super.append(" and height: ");
        throw new IllegalArgumentException(Cgoto.m1019this(m1016super, this.f3298for, ", either provide dimensions in the constructor or call override()"));
    }

    @Override // com.apk.pr
    /* renamed from: do */
    public void mo271do(@NonNull or orVar) {
    }
}
